package com.messageSystem.model.dao;

import com.messageSystem.model.entity.UserMessage;

import java.util.List;

/**
 * Created by ASUS on 2017/4/15.
 */
public interface UserMessageDao {
    List<UserMessage>selectAllAndCompany();
    List<UserMessage>selectAllAndCompanyById(Integer id);

}
