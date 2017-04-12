package com.messageSystem.controller.performance;

import com.messageSystem.model.dao.MatterDao;
import com.messageSystem.model.entity.DailyAttendanceRecord;
import com.messageSystem.model.entity.MatterTable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by user on 2017/4/12.
 * 汪潇逸
 */
@Controller
public class MatterController {
    @Resource
    private MatterDao matterDao;
    @RequestMapping(value = "/matter",method = RequestMethod.GET)
    public String showAll(HttpServletRequest req,Integer userMessageId){
        List<MatterTable> matterTable = matterDao.selectByuserMessageId(userMessageId);
        req.setAttribute("matterTable",matterTable);
        return "/WEB-INF/matter.jsp";
    }
}
