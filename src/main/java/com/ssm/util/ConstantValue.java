package com.ssm.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class ConstantValue {
	public static String tepmpImagePath="";
	public static String uuidToString() {
		return UUID.randomUUID().toString();
		
	}
	public static String timeToString() {
		return tepmpImagePath;
		
	}
	//获取6位随机数字
	public static Integer  Random6(){

		return (int)((Math.random()*9+1)*100000);
	}
    public static String getNowTimeString(){
		SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		return sdf.format(new Date());
	}
	//获取UUID字符串 作为主键
	public static String  RandomID(){
		UUID uuid=UUID.randomUUID();
		String str = uuid.toString();
		String uuidStr=str.replace("-", "");
		return uuidStr;
	}
    public static  void main(String[] arg){
		System.out.println(Random6());
		System.out.println(RandomID());
	}

}
