package com.example.demo.dao;

import com.example.demo.entity.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Au revoir
 * @Date 2020/12/15 9:41
 */
@Repository
public interface RestaurantDao extends JpaRepository<Restaurant,Integer> {
    List<Restaurant> findByStarEquals(Integer num);
    List<Restaurant> findByName(String name);
}