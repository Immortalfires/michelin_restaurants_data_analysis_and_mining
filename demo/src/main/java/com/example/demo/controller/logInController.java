package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * @Author Au revoir
 * @Date 2020/12/15 16:17
 */
@Controller
public class logInController {
    @Autowired
    UserService service;

    @RequestMapping("/")
    public String signIndex(){
        return "signIn";
    }

    @PostMapping("/logIn")
    public String logIn(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Map<String,Object> map, HttpServletResponse response){

        User userFind = service.logIn(username,password);
        if(userFind == null){
            map.put("msg","帐号或密码错误");
            return "signIn";
        }else{
            Cookie cookie = new Cookie("user","已登陆");
            cookie.setMaxAge(Integer.MAX_VALUE);
            response.addCookie(cookie);
            return "redirect:/restaurants/";
        }
    }

    @GetMapping("/logOut")
    public String logOut(HttpServletRequest request,HttpServletResponse response){
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie:cookies){
            if(cookie.getName().equals("user")){
                cookie.setValue("");
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
        return "redirect:/restaurants/";
    }
}
