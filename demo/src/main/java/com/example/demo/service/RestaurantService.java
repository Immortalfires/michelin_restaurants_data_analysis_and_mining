package com.example.demo.service;

import com.example.demo.dao.RestaurantDao;
import com.example.demo.entity.Restaurant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author Au revoir
 * @Date 2020/12/15 10:03
 */
@Service
public class RestaurantService {
    @Autowired
    RestaurantDao dao;

    public void save(Restaurant restaurant) {
        dao.save(restaurant);
    }

    public void delete(Integer id) {
        dao.deleteById(id);
    }

    public List<Restaurant> findByName(String name){
        return dao.findByName(name);
    }

    public List<Restaurant> findAll() {
        return dao.findAll();
    }

    public List<Restaurant> findAllThreeStars(Integer num){
        return dao.findByStarEquals(num);
    }

    public List<Double> allLatitude(){
        List<Restaurant> all = dao.findAll();
        List<Double> latitudeAll = new ArrayList<>();
        for(Restaurant restaurant : all){
            latitudeAll.add(restaurant.getLatitude());
        }
        return latitudeAll;
    }

    public List<Double> allLongitude(){
        List<Restaurant> all = dao.findAll();
        List<Double> longitudeAll = new ArrayList<>();
        for(Restaurant restaurant : all){
            longitudeAll.add(restaurant.getLongitude());
        }
        return longitudeAll;
    }
}
