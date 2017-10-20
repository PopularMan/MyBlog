package com.ssm.service.imp;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.ssm.service.IEhCacheTestService;
@Service
public class EhCacheTestServiceImpl implements IEhCacheTestService{

	@Override
	@Cacheable(value = "serviceCache")
	public Long getTimestamp(String param) {
		// TODO Auto-generated method stub
		return System.currentTimeMillis();
	}
	

}
