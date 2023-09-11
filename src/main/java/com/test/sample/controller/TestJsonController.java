package com.test.sample.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // It just return simple java data type
public class TestJsonController {

    @GetMapping("/readFromString")
    public String testAppUsingString(){
        return "demo";
    }

    //MVC
    //Model: Data
    //View : UI part
    //Controller
}
