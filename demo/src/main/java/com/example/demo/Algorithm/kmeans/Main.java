package com.example.demo.Algorithm.kmeans;

import java.util.ArrayList;
import java.util.Set;

/**
 * @Author Au revoir
 * @Date 2020/12/17 10:41
 */
public class Main {
    public static void main(String[] args) {
        ArrayList<double[]> dataSet = new ArrayList<>();
        dataSet.add(new double[]{ 5, 6, 5});
        dataSet.add(new double[] { 8, 9, 6});
        dataSet.add(new double[] { 4, 5, 4});
        dataSet.add(new double[] { 6, 4, 2});
        dataSet.add(new double[] { 3, 9, 7});
        dataSet.add(new double[] { 5, 9, 8});
        dataSet.add(new double[] { 4, 2, 10});
        dataSet.add(new double[] { 1, 9, 12});
        dataSet.add(new double[] { 7, 8, 112});

        KmeansRun run = new KmeansRun(2,dataSet);
        Set<Cluster> clusters = run.run();
        for (Cluster cluster : clusters) {
            System.out.println(cluster);
        }

//        dataSet.add(new double[] {47.34858,10.17114});
//        dataSet.add(new double[] {47.83787,13.07917});
//        dataSet.add(new double[] {47.80685,13.03409});
//        dataSet.add(new double[] {47.80001,13.04006});
//        dataSet.add(new double[] {48.216503,16.36852});
//        dataSet.add(new double[] {48.21272,16.37931});
//        dataSet.add(new double[] {48.20945,16.37672});
//        dataSet.add(new double[] {48.20923,16.37672});
//        dataSet.add(new double[] {48.204067,16.37098});
//        dataSet.add(new double[] {48.20513,16.37456});
    }
}
