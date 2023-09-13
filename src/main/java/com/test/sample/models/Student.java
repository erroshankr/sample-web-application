package com.test.sample.models;

import jakarta.persistence.*;

@Entity
@Table(name = "student_details")
public class Student {

    @Column(name = "stud_name")
    private String name;
    private String branch;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long studID;


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

    public long getStudID() {
        return studID;
    }

    public void setStudID(long studID) {
        this.studID = studID;
    }
}
