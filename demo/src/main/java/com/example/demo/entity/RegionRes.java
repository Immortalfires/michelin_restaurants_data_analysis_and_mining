package com.example.demo.entity;

/**
 * @Author Au revoir
 * @Date 2020/12/21 11:22
 */
public class RegionRes {
    private String regions;
    private Integer geshu;

    public RegionRes(String region, Integer nums) {
        this.regions = region;
        this.geshu = nums;
    }

    public String getRegions() {
        return regions;
    }

    public void setRegions(String regions) {
        this.regions = regions;
    }

    public Integer getGeshu() {
        return geshu;
    }

    public void setGeshu(Integer geshu) {
        this.geshu = geshu;
    }
}
