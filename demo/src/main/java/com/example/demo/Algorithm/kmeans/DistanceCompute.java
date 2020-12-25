package com.example.demo.Algorithm.kmeans;

/**
 * @Author Au revoir
 * @Date 2020/12/17 10:23
 */
public class DistanceCompute {
    /**
     * 求欧式距离
     */
    public double getEuclideanDis(Point p1, Point p2) {
        double count_dis = 0;
        double[] p1_local_array = p1.getLocalArray();
        double[] p2_local_array = p2.getLocalArray();
        for (int i = 0; i < p1_local_array.length; i++) {
            count_dis += Math.pow(p1_local_array[i] - p2_local_array[i], 2);
        }
        return Math.sqrt(count_dis);
    }
}