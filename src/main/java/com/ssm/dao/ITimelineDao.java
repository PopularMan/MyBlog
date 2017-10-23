package com.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.dto.Timeline;
import com.ssm.dto.User;

@Repository
public interface ITimelineDao {
   List<Timeline> preGetTimelineData();
}
