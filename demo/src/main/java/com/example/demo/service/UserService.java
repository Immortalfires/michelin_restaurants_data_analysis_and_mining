package com.example.demo.service;

import com.example.demo.dao.UserDao;
import com.example.demo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

/**
 * @Author Au revoir
 * @Date 2020/12/15 16:13
 */
@Service
public class UserService {
    @Autowired
    UserDao dao;

    /**
     * 匹配用户名及密码
     * @param username 输入的用户名
     * @param password 输入的的密码
     * @return 查询到的用户对象，没有则为null
     */
    public User logIn(String username,String password){
        User user = dao.findByUsername(username);
        if(user!=null){
            String pw = user.getPassword();
            if(pw.equals(password)){
                return user;
            }else{
                return null;
            }
        }else{
            return null;
        }
    }

    /**
     * 添加用户
     * @param user 用户信息
     */
    public void addUser(User user){
        dao.save(user);
    }
}
