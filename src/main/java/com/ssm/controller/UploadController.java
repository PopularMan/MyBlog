package com.ssm.controller;

import com.ssm.ueidter.ActionEnter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("upload")
@Controller
public class UploadController {
	
	
	@RequestMapping("image")
	@ResponseBody
	public Map updateImage(@RequestParam(value = "file", required = false) MultipartFile file,HttpServletRequest request) {
		Map map=new HashMap();
		Map map1=new HashMap();
		String path = request.getSession().getServletContext().getRealPath("resource");
		Calendar now = Calendar.getInstance();
		path+=File.separator+"upload"+File.separator+"images"+File.separator+now.get(Calendar.YEAR)+File.separator+(now.get(Calendar.MONTH) + 1)+File.separator+now.get(Calendar.DAY_OF_MONTH);
		String fileName = file.getOriginalFilename();
		String realName = now.getTimeInMillis()+fileName.substring(fileName.lastIndexOf("."), fileName.length());
		File targetFile = new File(path, realName);
		File filepath=new File(path);
		if(!filepath.exists()){
			filepath.mkdirs();
		}
		try {
			file.transferTo(targetFile);
		    map.put("code", 0);
		    map.put("msg", "成功");
		    //ConstantValue.tepmpImagePath="img"+File.separator+realName;
		    String imagePath=now.get(Calendar.YEAR)+File.separator+(now.get(Calendar.MONTH)+1)+File.separator+now.get(Calendar.DAY_OF_MONTH)+File.separator+realName;
		    imagePath=imagePath.replaceAll("\\\\", "/");
		    map1.put("src",imagePath);
		    map.put("data", map1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("code", 1);
		    map.put("msg", "失败");
		    map1.put("src","");
		    map.put("data", map1);	   
		   return map;
		}
		return map;
		
	}
	 @RequestMapping(value = "/exec")
     public void exec(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		 response.setContentType("application/json");
		 String rootPath = request.getSession().getServletContext().getRealPath("/");
		 try {
			 String exec = new ActionEnter(request, rootPath).exec();
			 PrintWriter writer = response.getWriter();
			 writer.write(exec);
			 writer.flush();
			 writer.close();
		 } catch (IOException e) {
			 e.printStackTrace();
		 }
	 }

}
