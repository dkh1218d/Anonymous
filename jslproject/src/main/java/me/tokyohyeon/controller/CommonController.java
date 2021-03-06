package me.tokyohyeon.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import me.tokyohyeon.service.MenuService;

public class CommonController extends HandlerInterceptorAdapter 
{
	@Autowired
	private MenuService service;

	public CommonController() {}
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {	
    	request.setAttribute("list", service.menuList());
    	request.setAttribute("cat", service.categoryList());

    	return super.preHandle(request, response, handler);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception 
    {
        // TODO Auto-generated method stub
        super.postHandle(request, response, handler, modelAndView);
    }
 
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception 
    {
        // TODO Auto-generated method stub
        super.afterCompletion(request, response, handler, ex);
    }
}
