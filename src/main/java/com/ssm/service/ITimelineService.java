package com.ssm.service;

import com.ssm.dto.Timeline;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;

import java.util.List;
import java.util.Map;

public interface ITimelineService {
   List<Timeline> preGetTimelineData();
   PageUtil<Map> getTimeLine(PageParam param);
   Boolean saveTimeLine(Timeline line);
}
