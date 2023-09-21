package com.test.sample.controller;

import com.test.sample.models.Admin;
import com.test.sample.models.Student;
import com.test.sample.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
        model.addAttribute("student", new Student());
        List<Student> students = (List<Student>) studentRepository.findAll();
        model.addAttribute("datas",students);
        return "data";
    }

    @PostMapping("/create")
    public String testApp(Model model){
        model.addAttribute("student", new Student());
        return "data";
    }

    @PostMapping("/save")
    public String saveStudent(@ModelAttribute Student student , Model model){
        System.out.println(student.getName());
        studentRepository.save(student);
        model.addAttribute("student", new Student());
        List<Student> students = (List<Student>) studentRepository.findAll();
        model.addAttribute("datas",students);
        return "data";
    }

    @GetMapping("/fetchAll")
    public String fetchAll(Model model){
      //  model.addAttribute("admin", new Admin());
        List<Student> students = (List<Student>) studentRepository.findAll();
        model.addAttribute("datas",students);
        model.addAttribute("student", new Student());
        return "data";
    }

    @GetMapping("/fetchByID/{studID}") // localhost:3080/fetchbyID/103
    public String fetchDetailsById(@PathVariable String studID, Model model) {
         Optional<Student> data = studentRepository.findById(studID);
         if (data.isEmpty()){
             return "failure";
         }
         List<Student> students = new ArrayList<>();
         students.add(data.get());
         model.addAttribute("datas",students);
         return "data";
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

//1. Create -> Bapi : working
//2. UpdateStudentByID: Anupam
//3. Delete Student by ID: Tushar
//4. Fetch Student by ID:  Sneha
//5.Fetch All: Ashwani : working
//6.Delete All: Vaibhav : working