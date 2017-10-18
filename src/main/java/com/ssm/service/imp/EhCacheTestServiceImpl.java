/*package com.ssm.service.imp;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.ssm.service.IEhCacheTestService;
@Service
public class EhCacheTestServiceImpl implements IEhCacheTestService{
	@Cacheable(value="myCache",key="#param")
	public String getTimestamp(String param) {
		 Long timestamp = System.currentTimeMillis();
	     return timestamp.toString();
	}

}
*/