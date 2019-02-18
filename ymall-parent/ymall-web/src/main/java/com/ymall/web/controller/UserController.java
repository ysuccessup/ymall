package com.ymall.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.Header;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.common.util.CookieUtils;
import com.ymall.common.vo.SysResult;
import com.ymall.web.service.UserService;
import com.ymall.web.threadlocal.UserThreadLocal;

@RequestMapping("user")
@Controller
public class UserController {

    public static final String ymall_TICKET = "ymall_TICKET";

    @Autowired
    private UserService userService;

    @RequestMapping("register")
    public String register() {
        return "register";
    }

    @RequestMapping("login")
    public String login() {
        return "login";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response){
    	//删除cookie
    	CookieUtils.deleteCookie(request, response, ymall_TICKET);
    	UserThreadLocal.set(null);
    	return "index";
    }

    @RequestMapping("/sendSecurityCode")
    @ResponseBody
    public Map<String, String> SendSecurityCode(String mobile) throws ClientProtocolException, IOException {
    	Map<String,String> reMap = new HashMap<String,String>();
        CloseableHttpClient client = HttpClientBuilder.create().build();  
        HttpPost post = new HttpPost("http://utf8.sms.webchinese.cn"); 
        post.addHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");//在头文件中设置转码
        List<NameValuePair> formparams = new ArrayList<NameValuePair>();
        formparams.add(new BasicNameValuePair("Uid", "smsyf"));
        formparams.add(new BasicNameValuePair("Key", "d41d8cd98f00b204e980"));
        formparams.add(new BasicNameValuePair("smsMob",mobile));
        String verifyTemp = (Math.random()*9+1)*100000+"";
        String verify = verifyTemp.substring(0,6);
        formparams.add(new BasicNameValuePair("smsText","欢迎成为7mall用户，验证码:" + verify));
        reMap.put("verify", verify);
        try {
            post.setEntity(new UrlEncodedFormEntity(formparams,"utf-8"));//设置参数编码格式
        } catch (Exception e1) {
            e1.printStackTrace();
        }

        CloseableHttpResponse response =  client.execute(post);

        int statusCode = response.getStatusLine().getStatusCode();
        System.out.println("statusCode:"+statusCode);
        Header[] headers = response.getAllHeaders();

        for(Header h : headers)
        {
            System.out.println(h.toString());
        }
        String result  = EntityUtils.toString(response.getEntity());
        reMap.put("result", result);
        post.releaseConnection();
        client.close();
        return reMap;
    }
    
    @RequestMapping(value = "doRegister", method = RequestMethod.POST)
    @ResponseBody
    public SysResult doRegister(@RequestParam("username") String username,
            @RequestParam("password") String password, @RequestParam("phone") String phone) {
        boolean success = userService.doRegister(username, password, phone);
        if (success) {
            return SysResult.oK();
        }
        return SysResult.build(201, "注册失败!");
    }

    @RequestMapping(value = "doLogin", method = RequestMethod.POST)
    @ResponseBody
    public SysResult doLogin(@RequestParam("username") String username,
            @RequestParam("password") String password, HttpServletRequest request,
            HttpServletResponse response) {
        String ticket = userService.doLogin(username, password);
        if (null == ticket) {
            return SysResult.build(201, "账号或密码错误!");
        }
        // 登录成功,将ticket写入到cookie中，一天
        CookieUtils.setCookie(request, response, ymall_TICKET, ticket, 60 * 60 * 24);
        return SysResult.oK();
    }
    
}
