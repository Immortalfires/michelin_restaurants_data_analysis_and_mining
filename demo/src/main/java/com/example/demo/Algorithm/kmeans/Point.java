package com.example.demo.Algorithm.kmeans;

import java.util.Arrays;

/**
 * @Author Au revoir
 * @Date 2020/12/17 10:17
 */
public class Point {
    private double[] localArray;
    private int id;
    private int clusterId;
    private float dist;

    public Point(int id,double[] localArray) {
        this.localArray = localArray;
        this.id = id;
    }

    public Point(double[] localArray) {
        this.id = -1; //表示不属于任意一个类
        this.localArray = localArray;
    }


    public double[] getLocalArray() {
        return localArray;
    }

    public void setLocalArray(double[] localArray) {
        this.localArray = localArray;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getClusterId() {
        return clusterId;
    }

    public void setClusterId(int clusterId) {
        this.clusterId = clusterId;
    }

    public float getDist() {
        return dist;
    }

    public void setDist(float dist) {
        this.dist = dist;
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder("Point_id=" + id + "  [");
        for (double v : localArray) {
            result.append(v).append(" ");
        }
        return result.toString().trim() + "] clusterId: " + clusterId + " dist: " + dist;
    }


    @Override
    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass())
            return false;

        Point point = (Point) obj;
        if (point.localArray.length != localArray.length)
            return false;

        for (int i = 0; i < localArray.length; i++) {
            if (Double.compare(point.localArray[i], localArray[i]) != 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        double x = localArray[0];
        double y = localArray[localArray.length - 1];
        long temp = x != +0.0d ? Double.doubleToLongBits(x) : 0L;
        int result = (int) (temp ^ (temp >>> 32));
        temp = y != +0.0d ? Double.doubleToLongBits(y) : 0L;
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
