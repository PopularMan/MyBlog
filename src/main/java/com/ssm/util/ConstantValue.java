package com.ssm.util;

import me.hupeng.ipLocationService.IpLocationResult;
import me.hupeng.ipLocationService.IpLocationService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class ConstantValue {
	public static String uuidToString() {
		return UUID.randomUUID().toString();
		
	}
	//获取6位随机数字
	public static Integer  Random6(){

		return (int)((Math.random()*9+1)*100000);
	}
    public static String getNowTimeString(){
		SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		return sdf.format(new Date());
	}
	public static String NowTimeString(){
		SimpleDateFormat sdf=new SimpleDateFormat("YYYYMMddHHmmss");
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

		System.out.println(NowTimeString());
	}
	public static String getCity(String ip){
		IpLocationService locationService=new IpLocationService();
		IpLocationResult ipLocationResult =locationService.getIpLocationResult(ip);
		System.out.println(ipLocationResult.getCountry()+" " + ipLocationResult.getProvince()+" "+ipLocationResult.getCity() );
		return ipLocationResult.getCountry()+"-"+ipLocationResult.getProvince()+"-"+ipLocationResult.getCity();
	}


}
