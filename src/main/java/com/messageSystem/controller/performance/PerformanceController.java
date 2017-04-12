package com.messageSystem.controller.performance;

import com.messageSystem.model.dao.PerformanceDao;
import com.messageSystem.model.entity.DailyAttendanceRecord;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by admin on 2017/4/12.
 * 汪潇逸
 */
@Controller
public class PerformanceController {
    @Resource
    private PerformanceDao performanceDao;

    /**
     * 查询所有的员工出勤信息
     * @param req
     * @return
     */
    @RequestMapping(value = "/showPerformance",method = RequestMethod.GET)
    public String showAll(HttpServletRequest req){
        HttpSession session = req.getSession();
        Object  user_login= session.getAttribute("user_login");
        if (user_login!=null){
        List<DailyAttendanceRecord> selectAll = performanceDao.selectAll();
        req.setAttribute("list", selectAll);

        return "/WEB-INF/performance.jsp";
}
      return "index.jsp";
    }
}
