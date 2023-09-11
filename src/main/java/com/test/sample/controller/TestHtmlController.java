package com.test.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller // It adds certain prefix + return type + suffix
public class TestHtmlController {

    @GetMapping("/readFromHtml")
    public String testApp(){
        return "demo";
    }
}


//Get: to Read data
//POST: Form submit
//DELETE
//PUT
//API : appliaction <--> Program


// JPA : Java Persistence API
//Hibernate :--> ORM --> Object Relational Mapping
//Driver :
//ORM : It maps java object with Database table
