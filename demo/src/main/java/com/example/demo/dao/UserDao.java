package com.example.demo.dao;

import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @Author Au revoir
 * @Date 2020/12/15 16:11
 */
@Repository
public interface UserDao extends JpaRepository<User,Integer> {
    User findByUsername(String username);
}
