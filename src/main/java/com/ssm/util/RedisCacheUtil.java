/*package com.ssm.util;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.BoundSetOperations;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Repository;
@Repository
public class RedisCacheUtil {
	 @Autowired @Qualifier("redisTemplate")
	 public RedisTemplate redisTemplate;  
	 *//**
	  * ��������Ķ���Integer��String��ʵ�����
	  * @param key ����ļ�ֵ
	  * @param value �����ֵ
	  * @return  ����Ķ���
	  *//*
	 public <T> ValueOperations<String,T> setCacheObject(String key,T value){
	  ValueOperations<String,T> operation = redisTemplate.opsForValue(); 
	  operation.set(key,value);
	  return operation;
	 }
	 *//**
	  * ��û���Ļ�������
	  * @param key  �����ֵ
	  * @param operation
	  * @return   �����ֵ��Ӧ������
	  *//*
	 public <T> T getCacheObject(String key) {
	  ValueOperations<String,T> operation = redisTemplate.opsForValue(); 
	  return operation.get(key);
	 }
	 *//**
	  * ����List����
	  * @param key  ����ļ�ֵ
	  * @param dataList �������List����
	  * @return   ����Ķ���
	  *//*
	 public <T> ListOperations<String, T> setCacheList(String key,List<T> dataList){
	  ListOperations listOperation = redisTemplate.opsForList();
		  if(null != dataList)
		  {
			   int size = dataList.size();
			   for(int i = 0; i < size ; i ++)
			   {
			    listOperation.rightPush(key,dataList.get(i));
			   }
		  }
	   
	  return listOperation;
	 }
	 *//**
	  * ��û����list����
	  * @param key ����ļ�ֵ
	  * @return  �����ֵ��Ӧ������
	  *//*
	 public <T> List<T> getCacheList(String key)
	 {
	  List<T> dataList = new ArrayList<T>();
	  ListOperations<String,T> listOperation = redisTemplate.opsForList();
	  Long size = listOperation.size(key);
	   
	  for(int i = 0 ; i < size ; i ++)
	  {
	   dataList.add((T) listOperation.leftPop(key));
	  }
	   
	  return dataList;
	 }
	 *//**
	  * ����Set
	  * @param key  �����ֵ
	  * @param dataSet ���������
	  * @return   �������ݵĶ���
	  *//*
	 public <T> BoundSetOperations<String,T> setCacheSet(String key,Set<T> dataSet)
	 {
	  BoundSetOperations<String,T> setOperation = redisTemplate.boundSetOps(key); 
	  T[] t = (T[]) dataSet.toArray();
	    setOperation.add(t);
	  Iterator<T> it = dataSet.iterator();
	  while(it.hasNext())
	  {
	   setOperation.add(it.next());
	  }
	   
	  return setOperation;
	 }
	 *//**
	  * ��û����set
	  * @param key
	  * @param operation
	  * @return
	  *//*
	  public <T> Set<T> getCacheSet(String key) {
		  Set<T> dataSet = new HashSet<T>();
		  BoundSetOperations<String,T> operation = redisTemplate.boundSetOps(key); 
		   
		  Long size = operation.size();
		  for(int i = 0 ; i < size ; i++)
		  {
		   dataSet.add(operation.pop());
		  }
		  return dataSet;
	 }
	  
}
*/