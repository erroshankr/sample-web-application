package com.test.sample.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student {

    private String name;
    private String branch;
    @Id
    private String studID;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getStudID() {
        return studID;
    }

    public void setStudID(String studID) {
        this.studID = studID;
    }
}
