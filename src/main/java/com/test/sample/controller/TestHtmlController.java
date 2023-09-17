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

    @GetMapping("/register")
    public String testApp(Model model){
        model.addAttribute("student", new Student());
       /* List<Student> res = (List<Student>) studentRepository.findAll();
        model.addAttribute("student", res.get(0));*/
        return "student";
    }

    @PostMapping("/save")
    public String saveStudent(@ModelAttribute Student student){
        System.out.println(student.getName());
        studentRepository.save(student);
        return "success";
    }

    @PostMapping("/saveAll")
    public String saveAllStudent(@ModelAttribute Student student){
        System.out.println(student.getName());
        studentRepository.save(student);
        return "success";
    }

}


//Github.com --> Repository --> master : origin/master

//clone : local master-> master



//Get: to Read data
//POST: Form submit
//DELETE
//PUT
//API : appliaction <--> Program


// JPA : Java Persistence API
//Hibernate :--> ORM --> Object Relational Mapping
//Driver :
//ORM : It maps java object with Database table
