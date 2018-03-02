package com.ssm.dao;

import com.ssm.dto.Timeline;
import com.ssm.util.PageParam;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ITimelineDao {
   List<Timeline> preGetTimelineData();
   List<Map> selectTimeLine(PageParam param);
   Integer selectTimeLineCount();
   void saveTimeLine(Timeline line);
}
