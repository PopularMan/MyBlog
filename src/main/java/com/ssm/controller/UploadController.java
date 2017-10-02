package com.ssm.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("upload")
@Controller
public class UploadController {
	
	
	//上传单张图片
	@RequestMapping("image")
	@ResponseBody
	public Map updateImage(@RequestParam(value = "file", required = false) MultipartFile file,HttpServletRequest request) {
		Map map=new HashMap();
		Map map1=new HashMap();
		//获取文件夹路径
		String path = request.getSession().getServletContext().getRealPath("resource"); 
		path+=File.separator+"img";
		System.out.println(path);
		String fileName = file.getOriginalFilename();
		String realName = UUID.randomUUID().toString()+fileName.substring(fileName.lastIndexOf("."), fileName.length());
		File targetFile = new File(path, fileName);
		try {
			file.transferTo(targetFile);
		    map.put("code", 0);
		    map.put("msg", "成功");
		    map1.put("src","http://localhost:8080/MyBlog/resource/img/zgr.jpg");
		    map.put("data", map1);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   return null;
		}
		return map;
		
	}

}
