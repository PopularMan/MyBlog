package com.ssm.util;


import net.sf.json.JSONObject;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.concurrent.CopyOnWriteArraySet;
@ServerEndpoint("/chatweb")
public class WebSocketChat{

    //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static int onlineCount = 0;

    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
     private static CopyOnWriteArraySet<WebSocketChat> webSocketSet = new CopyOnWriteArraySet<WebSocketChat>();
     private static  String APIKEY = "key";

    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private Session session;
    /**
     * 25      * 连接建立成功调用的方法
     * 26      * @param session  可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     * 27
     */
    @OnOpen
    public void onOpen(Session session) {
        this.session = session;
        webSocketSet.add(this);     //加入set中
        addOnlineCount();           //在线数加1
        System.out.println("有新连接加入！当前在线人数为" + getOnlineCount());
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose() {
        webSocketSet.remove(this);  //从set中删除

        System.out.println("有一连接关闭！当前在线人数为" + getOnlineCount());
    }

    /**
     * 收到客户端消息后调用的方法
     *
     * @param message 客户端发送过来的消息
     * @param session 可选的参数
     */
    @OnMessage
    public void onMessage(String message, Session session) throws IOException, EncodeException {

        JSONObject data=JSONObject.fromObject(message);
        System.out.println("来自客户端的消息:" + data);
        String  type = data.getString("type");
        StringBuilder sb=new StringBuilder();
        if(type.equals("chatMessage")){
            String content=data.getJSONObject("data").getJSONObject("mine").getString("content");
            String userid =data.getJSONObject("data").getJSONObject("mine").getString("id");
            String INFO = URLEncoder.encode(content, "utf-8");
            String getURL = "http://www.tuling123.com/openapi/api?key=" + APIKEY+ "&info=" + INFO+"&userid="+userid;
            URL getUrl = new URL(getURL);
            HttpURLConnection connection = (HttpURLConnection) getUrl.openConnection();
            connection.connect();
            // 取得输入流，并使用Reader读取
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
            String line = "";
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            reader.close();
            // 断开连接
            connection.disconnect();


        }

        this.session.getBasicRemote().sendText(sb.toString());
        /*//群发消息
        for (WebSocketChat item : webSocketSet) {
            try {
                item.sendMessage(message);
            } catch (IOException e) {
                e.printStackTrace();
                continue;
            }
        }*/
    }

    /**
     * 发生错误时调用
     *
     * @param session
     * @param error
     */
    @OnError
    public void onError(Session session, Throwable error) {
        System.out.println("发生错误");
        error.printStackTrace();
    }

    /**
     * 这个方法与上面几个方法不一样。没有用注解，是根据自己需要添加的方法。
     *
     * @param message
     * @throws IOException
     */
    public void sendMessage(String message) throws IOException {
        this.session.getBasicRemote().sendText(message);
        //this.session.getAsyncRemote().sendText(message);
    }

    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebSocketChat.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebSocketChat.onlineCount--;
    }

}
