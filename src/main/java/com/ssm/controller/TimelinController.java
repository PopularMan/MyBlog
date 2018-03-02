package com.ssm.controller;

import com.ssm.dto.Timeline;
import com.ssm.service.ITimelineService;
import com.ssm.util.*;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import java.sql.Timestamp;
import java.util.*;

/**
 * 时间轴控制器
 * 
 * @author 张超超 17.10.23 14:03
 */
@RestController
public class TimelinController {
	private Logger log=LoggerFactory.getLogger(TimelinController.class);
	@Autowired
	private ITimelineService timelineService;

	/**
	 * 前端时光轴数据封装 考验我数据封装的能力时刻到了 嘿嘿
	 * 
	 */
	@RequestMapping(value="getPreTimelineData",method=RequestMethod.GET,produces={"application/json;charset=utf-8"})
	public ResponseResult<List<TimelineUtil>> getPreTimelineData() {
		List<Timeline> list = timelineService.preGetTimelineData();
		List<TimelineUtil> result = new ArrayList<TimelineUtil>();
		// 结果响应
		ResponseResult<List<TimelineUtil>> rep = new ResponseResult<List<TimelineUtil>>();
		try {
			if (list.size() > 0) {
				int year = 0;
				// 取出年份
				for (Timeline obj : list) {
					if (year == 0) {
						TimelineUtil time = new TimelineUtil();
						time.setYear(obj.getLine_year());
						List<Timeline> linelist = new ArrayList<Timeline>();
						// 通过年份 循环放入集合
						for (Timeline obj2 : list) {
							if (obj2.getLine_year() == time.getYear()) {
								linelist.add(obj2);
							}
						}				
						time.setLine(linelist);
						result.add(time);
						//防止年份重复
						year=obj.getLine_year();
					} else {
						if (year != obj.getLine_year()) {
							TimelineUtil time = new TimelineUtil();
							time.setYear(obj.getLine_year());
							List<Timeline> linelist = new ArrayList<Timeline>();
							// 通过年份 循环放入集合
							for (Timeline obj2 : list) {
								if (obj2.getLine_year() == time.getYear()) {
									linelist.add(obj2);
								}
							}
							time.setLine(linelist);
							result.add(time);
							year=obj.getLine_year();
						}
					}
				}

			}
			rep.setData(result);
			rep.setSuccess(true);
			rep.setMessage("成功");
			rep.setErrorcode("200");
		} catch (Exception e) {
			rep.setData(null);
			rep.setErrorcode("500");
			rep.setSuccess(false);
			rep.setMessage("内部异常");
		}
		return rep;
	}

	@RequestMapping(value="/sys/TimeLine",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	@RequiresPermissions("time:search")
	public PageUtil<Map> getBlogs(Integer page, Integer limit ){
		if(page!=null || limit!=null) {
			log.info("查询分页" + page + limit);
			PageParam param = new PageParam(page, limit);
			return timelineService.getTimeLine(param);
		}
		return null;
	}
	@RequestMapping(value = "/sys/saveTimeLine",method = RequestMethod.POST)
	@RequiresPermissions("time:add")
	public Boolean saveTimeLine(String content){
		if(!StringUtils.isBlank(content)){
			Calendar now = Calendar.getInstance();
			Timeline timeline=new Timeline();
			timeline.setLine_content(content);
			timeline.setLine_time(new Timestamp(new Date().getTime()));
			timeline.setLine_id(ConstantValue.NowTimeString());
			timeline.setLine_year(now.get(Calendar.YEAR));
			timeline.setLine_month(now.get(Calendar.MONTH)+1);
			return timelineService.saveTimeLine(timeline);
		}
		return false;
	}
}
