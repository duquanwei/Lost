package com.domain;

public class Goods {
    private String name;
    private String date;
    private String address;
    private String describe;
    private String type;
    private String tell;
    public Goods(){}

    public void setTell(String tell) {
        this.tell = tell;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public String getName() {
        return name;
    }

    public String getDate() {
        return date;
    }

    public String getDescribe() {
        return describe;
    }

    public String getType() {
        return type;
    }

    public String getTell() {
        return tell;
    }
}
