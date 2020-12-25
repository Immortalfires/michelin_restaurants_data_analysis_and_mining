package com.example.demo.Algorithm.kmeans;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @Author Au revoir
 * @Date 2020/12/17 10:20
 */
public class Cluster {
    private int id;
    private Point center;
    private List<Point> members = new ArrayList<>();

    public Cluster(int id, Point center) {
        this.id = id;
        this.center = center;
    }

    public Cluster(int id, Point center, List<Point> members) {
        this.id = id;
        this.center = center;
        this.members = members;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Point getCenter() {
        return center;
    }

    public void setCenter(Point center) {
        this.center = center;
    }

    public List<Point> getMembers() {
        return members;
    }

    public void setMembers(List<Point> members) {
        this.members = members;
    }

    public void addPoint(Point newPoint){
        if(!members.contains(newPoint)){
            members.add(newPoint);
        }
    }

    @Override
    public String toString() {
        StringBuilder toString = new StringBuilder("Cluster_id=" + this.id + ", center:{" + Arrays.toString(this.center.getLocalArray()) + "}");
        for (Point point : members) {
            toString.append("\n").append(point.toString());
        }
        return toString+"\n";
    }
}
