package com.domain;

import java.util.Date;

public class Lof {
    private int id;
    private String name;
    private String address;
    private  String description;
    private Date date;

 public Lof(){}

    public Lof(String name,String address,String description, Date date){
     this.address=address;
     this.name=name;
     this.date=date;
     this.description=description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public Date getDate() {
        return date;
    }

    public String getAddress() {
        return address;
    }

    public String getDescription() {
        return description;
    }

}
