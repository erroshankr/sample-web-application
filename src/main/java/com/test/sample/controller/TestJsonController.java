package com.test.sample.controller;

import com.test.sample.models.Student;
import com.test.sample.repository.StudentRepository;
import com.test.sample.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController // It just returns simple java data type
public class TestJsonController {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private StudentService studentService;

    @GetMapping("/readFromString")
    public String testAppUsingString(){
        return "student";
    }


    @GetMapping("/createStudent")
    public String createStudent(){
        Student student = new Student();
        student.setName("Rakesh");
        student.setBranch("ECE");
//        student.setStudID(");
        studentRepository.save(student);
        return "success";
    }

    @GetMapping("/fetchStudent")
    public String fetchStudent(){

        String res = "";
        List<Student> students = (List<Student>) studentRepository.findAll();
        for (Student student: students) {
            res += student.getName() +  " " + student.getBranch() + " " + student.getStudID() + '\n';
        }
        if (res.isEmpty()){
            return "No data present";
        }
        return res;
    }

    @PostMapping("/addStudent")
    public Student postDetails(@RequestBody Student student){
        return studentService.saveDetails(student);
    }

    @GetMapping("/fetchByID/{studID}")
    public Student fetchDetailsById(@PathVariable String studID){
        return studentService.getdetailsById(studID);
    }

    @GetMapping("/updateStudent")
    public String updateStudent(){
        return "demo";
    }

    @GetMapping("/deleteStudent")
    public String deleteStudent(){
        return "demo";
    }

    @GetMapping("/deleteAllStudent")
    public String deleteAllStudent(){
        studentRepository.deleteAll();
        return "success";
    }
    //MVC
    //Model: Data
    //View : UI part
    //Controller
}
