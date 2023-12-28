package com.test.sample.models;

import jakarta.persistence.*;

@Entity
@Table(name = "students")
public class Student { //ORM --> Object Relational Mapping

    @Column(name = "stud_name")
    private String name;
    private String branch;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long studID;

    private long mobileNum;

    private String emailID;

    private String gender;

    private String dob;

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }


    public long getMobileNum() {
        return mobileNum;
    }

    public void setMobileNum(long mobileNum) {
        this.mobileNum = mobileNum;
    }

    public String getEmailID() {
        return emailID;
    }

    public void setEmailID(String emailID) {
        this.emailID = emailID;
    }


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


    public static void main(String[] args) {
        int a=5;
        if (a%2 == 0){  // 1st
            System.out.println("Even Number");
        }else{
            System.out.println("Odd Number");
        }

        if (a%2 != 0){ // 2nd
            System.out.println("Odd Number");
        }else{
            System.out.println("Even Number");
        }

    }
}

