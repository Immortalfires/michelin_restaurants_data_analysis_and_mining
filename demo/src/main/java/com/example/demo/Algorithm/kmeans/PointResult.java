package com.example.demo.Algorithm.kmeans;

/**
 * @Author Au revoir
 * @Date 2020/12/17 22:32
 */
public class PointResult {
    private Double latitude;
    private Double longitude;
    private Integer clusterId;

    public PointResult(Double latitude, Double longitude, Integer clusterId) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.clusterId = clusterId;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Integer getClusterId() {
        return clusterId;
    }

    public void setClusterId(Integer clusterId) {
        this.clusterId = clusterId;
    }
}