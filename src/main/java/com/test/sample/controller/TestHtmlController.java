package com.test.sample.controller;

import com.test.sample.models.Admin;
import com.test.sample.models.Student;
import com.test.sample.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller // It renders html page
public class TestHtmlController {

    @Autowired
    private StudentRepository studentRepository;
    @GetMapping("/")
    public String home(Model model){
        model.addAttribute("admin", new Admin());
        return "login";
    }

    @PostMapping("/login")
    public String login(Model model){
        return "home";
    }

    @PostMapping("/create")
    public String testApp(Model model){
        model.addAttribute("student", new Student());
        return "student";
    }
    @PostMapping("/fetchByID")
    public String fetchStudent(@ModelAttribute Student student){
        return "success";
    }
    @PostMapping("/save")
    public String saveStudent(@ModelAttribute Student student){
        System.out.println(student.getName());
        studentRepository.save(student);
        return "success";
    }

}

//Github.com --> Repository --> master : origin/master

//clone : local master-> origin:master
// create a branch from master e.g test
//make ur changes
//commit ur changes and make sure it's only ur changes, nothing else
//push ur branch to repository
//create a pull request with master branch



//Get: to Read data
//POST: Form submit
//DELETE
//PUT
//API : appliaction <--> Program


// JPA : Java Persistence API
//Hibernate :--> ORM --> Object Relational Mapping
//Driver :
//ORM : It maps java object with Database table

//Homework:

//1. Create -> Bapi
//2. UpdateStudentByID: Anupam
//3. Delete Student by ID: Tushar
//4. Fetch Student by ID:  Sneha
//5.Fetch All: Ashwani
//6.Delete All: Vaibhav