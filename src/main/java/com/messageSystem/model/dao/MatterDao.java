package com.messageSystem.model.dao;

import com.messageSystem.model.entity.MatterTable;

import java.util.List;

/**
 * Created by user on 2017/4/12.
 * 汪潇逸
 */
public interface MatterDao {
    List<MatterTable> selectByuserMessageId(Integer userMessageId);
}
