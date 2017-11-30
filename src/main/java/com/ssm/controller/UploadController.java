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

import com.ssm.util.ConstantValue;

@RequestMapping("upload")
@Controller
public class UploadController {
	
	
	@RequestMapping("image")
	@ResponseBody
	public Map updateImage(@RequestParam(value = "file", required = false) MultipartFile file,HttpServletRequest request) {
		Map map=new HashMap();
		Map map1=new HashMap();
		String path = request.getSession().getServletContext().getRealPath("resource"); 
		path+=File.separator+"img";
		System.out.println(path);
		String fileName = file.getOriginalFilename();
		String realName = UUID.randomUUID().toString()+fileName.substring(fileName.lastIndexOf("."), fileName.length());
		File targetFile = new File(path, realName);
		
		try {
			file.transferTo(targetFile);
		    map.put("code", 0);
		    map.put("msg", "成功");
		    ConstantValue.tepmpImagePath="img"+File.separator+realName;
		    String imagePath=request.getServletContext().getContextPath()+"/resource/img/"+realName;
		    imagePath=imagePath.replaceAll("\\\\", "/");
		    map1.put("src",imagePath);
		    map.put("data", map1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("code", 1);
		    map.put("msg", "失败");
		    map1.put("src",path);
		    map.put("data", map1);	   
		   return map;
		}
		return map;
		
	}

}
