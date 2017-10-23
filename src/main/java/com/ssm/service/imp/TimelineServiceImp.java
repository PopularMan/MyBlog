package com.ssm.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ITimelineDao;
import com.ssm.dto.Timeline;
import com.ssm.service.ITimelineService;
@Service("timelineService")
public class TimelineServiceImp implements ITimelineService {
    
	@Autowired private ITimelineDao timelinedao;
	/**
	 * 前台时光轴数据封装 由于前后端都是拿数据 避免麻烦 封装放到controller层
	 */
	@Override
	public List<Timeline> preGetTimelineData() {
		
		return timelinedao.preGetTimelineData();
	}

}
