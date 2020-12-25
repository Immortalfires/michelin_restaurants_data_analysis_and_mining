package com.example.demo.entity;

/**
 * @Author Au revoir
 * @Date 2020/12/21 12:20
 */
public class UserRes {
    private int code;
    private String msg;

    public UserRes() {
    }

    public UserRes(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
