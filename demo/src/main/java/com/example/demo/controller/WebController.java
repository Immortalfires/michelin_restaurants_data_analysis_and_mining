package com.example.demo.controller;

import com.example.demo.Algorithm.kmeans.*;
import com.example.demo.entity.RegionRes;
import com.example.demo.entity.Restaurant;
import com.example.demo.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * @Author Au revoir
 * @Date 2020/12/14 10:53
 */
@Controller
@RequestMapping("/restaurants")
public class WebController {
    @Autowired
    RestaurantService service;

    @GetMapping("/")
    public String find(Model model) {
        List<Restaurant> threeStars = service.findAllThreeStars(3);
        model.addAttribute("listThree", threeStars);
        return "index";
    }

    @GetMapping("/findAll")
    public String findAll(Model model){
        List<Restaurant> all = service.findAll();
        model.addAttribute("listAll",all);
        return "restaurants";
    }

    @RequestMapping("/data-Mine")
    public String dataMine() {
        return "dataMining";
    }

    @GetMapping("/data-Mine/kmeansLocation/data1")
    public String kmeansLocationData1(Model model){
        int index = 0;
        List<Double> latitude  = service.allLatitude();
        List<Double> longitude = service.allLongitude();
        List<double[]> dataSet = new ArrayList<>();
        for(int i=0;i<latitude.size();i++){
            dataSet.add(new double[]{latitude.get(i),longitude.get(i)});
        }
        KmeansRun kmeansRun = new KmeansRun(4,dataSet);
        Set<Cluster> clusters = kmeansRun.run();
        List<PointResult> pointResults = new ArrayList<>();
        Double[] allLatitudes = new Double[latitude.size()];
        Double[] allLongitudes = new Double[longitude.size()];
        for (Cluster cluster : clusters) {
            List<Point> pointsList = new ArrayList<>();
            pointsList = cluster.getMembers();
            for(int i = 0;i < pointsList.size();i++){
                Point1 point1 = new Point1(pointsList.get(i).getLocalArray()[0],
                        pointsList.get(i).getLocalArray()[1]);
                PointResult point2 = new PointResult(pointsList.get(i).getLocalArray()[0],
                        pointsList.get(i).getLocalArray()[1],pointsList.get(i).getClusterId());
                pointResults.add(point2);
                allLatitudes[index] = point2.getLatitude();
                allLongitudes[index] = point2.getLongitude();
                index++;
                System.out.println("("+allLatitudes[i] + "," +allLongitudes[i] +")");
            }
            for(int i = 0;i<allLatitudes.length;i++){
                if(allLatitudes[i] == null){
                    System.out.println("======" + i);
                    break;
                }
            }
        }
        model.addAttribute("pointResults",pointResults);
        return "kmeansLocationData1";
    }

    @GetMapping("/data-Mine/kmeansLocation/data")
    public @ResponseBody List<PointResult> kmeansLocationData(){
        int index = 0;
        List<Double> latitude  = service.allLatitude();
        List<Double> longitude = service.allLongitude();
        List<double[]> dataSet = new ArrayList<>();
        for(int i=0;i<latitude.size();i++){
            dataSet.add(new double[]{latitude.get(i),longitude.get(i)});
        }
        KmeansRun kmeansRun = new KmeansRun(4,dataSet);
        Set<Cluster> clusters = kmeansRun.run();
        List<PointResult> pointResults = new ArrayList<>();
        Double[] allLatitudes = new Double[latitude.size()];
        Double[] allLongitudes = new Double[longitude.size()];
        for (Cluster cluster : clusters) {
            List<Point> pointsList = new ArrayList<>();
            pointsList = cluster.getMembers();
            for(int i = 0;i < pointsList.size();i++){
                PointResult point2 = new PointResult(pointsList.get(i).getLocalArray()[0],
                        pointsList.get(i).getLocalArray()[1],pointsList.get(i).getClusterId());
                pointResults.add(point2);
                allLatitudes[index] = point2.getLatitude();
                allLongitudes[index] = point2.getLongitude();
                index++;
                System.out.println("("+allLatitudes[i] + "," +allLongitudes[i] +")");
            }
        }
        return pointResults;
    }

    @GetMapping("/data-Mine/kmeansLocation")
    public String kmeansLocation(){
        return "kmeansLocation";
    }

    @GetMapping("/data-Mine/starNumbers")
    public String starNumbers(){
        return "starNumbers";
    }

    @GetMapping("/data-Mine/starNumbers/data")
    public @ResponseBody int[] starNumbersData(){
        List<Restaurant> all = service.findAll();
        int[] num = new int[3];
        for(Restaurant restaurant:all){
            int index = restaurant.getStar()-1;
            num[index]++;
        }
        return num;
    }

    @GetMapping("/data-Mine/region")
    public String region(){
        return "region";
    }

    @GetMapping("/data-Mine/region/data")
    public @ResponseBody List<RegionRes> regionData(){
        List<Restaurant> all = service.findAll();
        List<RegionRes> res = new ArrayList<>();
        Map<String,Integer> collectMap = new HashMap<>();
        for(Restaurant restaurant:all){
            String reg = restaurant.getRegion();
            if(!collectMap.containsKey(reg)){
                collectMap.put(restaurant.getRegion(),1);
            }else {
                collectMap.replace(reg,collectMap.get(reg)+1);
            }
        }
        Collection<Integer> values = collectMap.values();
        Set<String> set = collectMap.keySet();
        List<Integer> num = new ArrayList<>(values);
        List<String> region = new ArrayList<>(set);
        for(int i=0;i<num.size();i++){
            RegionRes regionRes = new RegionRes(region.get(i),num.get(i));
            res.add(regionRes);
        }
        return res;
    }

    @PostMapping("/dataFind")
    public String dataFindByName(@RequestParam String nameFind,@RequestParam String regionFind,@RequestParam String cuisineFind,Model model){
        List<Restaurant> restaurants = service.findAll();
        List<Restaurant> restaurantArrayList = new ArrayList<>();
        for(Restaurant restaurant:restaurants){
            String name = restaurant.getName();
            String region = restaurant.getRegion();
            String cuisine = restaurant.getCuisine();
            if(name.contains(nameFind)&&region.contains(regionFind)&&cuisine.contains(cuisineFind)){
                restaurantArrayList.add(restaurant);
            }
        }
        model.addAttribute("list",restaurantArrayList);
        System.out.println(restaurantArrayList);
        return "dataFind";
    }

    @RequestMapping("/dataManage")
    public String dataManage(){
        return "dataManage";
    }

    @PostMapping("/add")
    public String add(@RequestParam String name,@RequestParam String city,@RequestParam String region,
                      @RequestParam String cuisine,@RequestParam String price,@RequestParam String star,
                      @RequestParam String url,@RequestParam String year,
                      @RequestParam String latitude,@RequestParam String longitude){
        Restaurant restaurant = new Restaurant();
        restaurant.setName(name);
        restaurant.setCity(city);
        restaurant.setRegion(region);
        restaurant.setCuisine(cuisine);
        restaurant.setPrice(price);
        restaurant.setStar(Integer.valueOf(star));
        restaurant.setYear(year);
        restaurant.setUrl(url);
        restaurant.setLatitude(Double.valueOf(latitude));
        restaurant.setLongitude(Double.valueOf(longitude));
        service.save(restaurant);
        return "dataManage";

    }

    @PostMapping("/delete")
    public String delete(@RequestParam String name){
        List<Restaurant> restaurantList = service.findByName(name);
        for(Restaurant restaurant:restaurantList){
            service.delete(restaurant.getId());
        }
        return "dataManage";
    }
}
