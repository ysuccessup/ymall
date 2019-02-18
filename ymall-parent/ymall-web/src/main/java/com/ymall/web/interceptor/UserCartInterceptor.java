package com.ymall.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ymall.common.util.CookieUtils;
import com.ymall.web.controller.UserController;
import com.ymall.web.pojo.User;
import com.ymall.web.service.UserService;
import com.ymall.web.threadlocal.UserThreadLocal;

public class UserCartInterceptor implements HandlerInterceptor {

    @Autowired
    private UserService userService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String ticket = CookieUtils.getCookieValue(request, UserController.ymall_TICKET);
        if (null == ticket) {
            UserThreadLocal.set(null);
            return true;
        }

        User user = this.userService.queryUserByTicket(ticket);
        if (user == null) {
            UserThreadLocal.set(null);
            return true;
        }
        
        // 成功
        // 将user对象放到本地线程中，方便后续使用
        UserThreadLocal.set(user);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
            Exception ex) throws Exception {

    }

}
