package com.ymall.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	
	/**
     * 首页
     * 
     * @return
     */
    @RequestMapping("index")
    public String index(String userName,Model model) {
    	model.addAttribute("userName", userName);
        return "index";
    }
    
}
