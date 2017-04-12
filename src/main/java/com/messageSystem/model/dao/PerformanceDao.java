package com.messageSystem.model.dao;

import com.messageSystem.model.entity.DailyAttendanceRecord;

import java.util.List;

/**
 * Created by user on 2017/4/12.
 * 汪潇逸
 */
public interface PerformanceDao {
    List<DailyAttendanceRecord>selectAll();
}
