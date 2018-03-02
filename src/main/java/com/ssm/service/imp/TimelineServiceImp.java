package com.ssm.service.imp;

import com.ssm.dao.ITimelineDao;
import com.ssm.dto.Timeline;
import com.ssm.service.ITimelineService;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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

	@Override
	public PageUtil<Map> getTimeLine(PageParam param) {
		PageUtil<Map> utils=new PageUtil<Map>();
		try {
			utils.setCount(timelinedao.selectTimeLineCount());
			utils.setData(timelinedao.selectTimeLine(param));
			utils.setMsg("success");
			utils.setCode(0);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			utils.setMsg("error");
			utils.setCode(1);
		}

		return utils;

	}

	@Override
	public Boolean saveTimeLine(Timeline line) {
		if(line!=null && line.getLine_content()!=""){
			try{
				timelinedao.saveTimeLine(line);
				return true;
			}catch (Exception e){
				return false;
			}
		}
		return false;
	}

}
