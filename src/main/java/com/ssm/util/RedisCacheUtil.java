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
	  * 缓存基本的对象，Integer、String、实体类等
	  * @param key 缓存的键值
	  * @param value 缓存的值
	  * @return  缓存的对象
	  *//*
	 public <T> ValueOperations<String,T> setCacheObject(String key,T value){
	  ValueOperations<String,T> operation = redisTemplate.opsForValue(); 
	  operation.set(key,value);
	  return operation;
	 }
	 *//**
	  * 获得缓存的基本对象。
	  * @param key  缓存键值
	  * @param operation
	  * @return   缓存键值对应的数据
	  *//*
	 public <T> T getCacheObject(String key) {
	  ValueOperations<String,T> operation = redisTemplate.opsForValue(); 
	  return operation.get(key);
	 }
	 *//**
	  * 缓存List数据
	  * @param key  缓存的键值
	  * @param dataList 待缓存的List数据
	  * @return   缓存的对象
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
	  * 获得缓存的list对象
	  * @param key 缓存的键值
	  * @return  缓存键值对应的数据
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
	  * 缓存Set
	  * @param key  缓存键值
	  * @param dataSet 缓存的数据
	  * @return   缓存数据的对象
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
	  * 获得缓存的set
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