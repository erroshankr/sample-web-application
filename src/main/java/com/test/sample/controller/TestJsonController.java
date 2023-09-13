package com.test.sample.controller;

import com.test.sample.models.Student;
import com.test.sample.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController // It just return simple java data type
public class TestJsonController {

    @Autowired
    StudentRepository studentRepository;

    @GetMapping("/readFromString")
    public String testAppUsingString(){
        return "demo";
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
