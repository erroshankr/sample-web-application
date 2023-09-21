package com.test.sample.controller;

import com.test.sample.models.Student;
import com.test.sample.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController // It just returns simple java data type
public class TestJsonController {

    @Autowired
    private StudentRepository studentRepository;

    @GetMapping("/readFromString")
    public String testAppUsingString() {
        return "student";
    }


    @GetMapping("/createStudent")
    public String createStudent() {
        Student student = new Student();
        student.setName("Rakesh");
        student.setBranch("ECE");
//        student.setStudID(");
        studentRepository.save(student);
        return "success";
    }

    @GetMapping("/fetchStudent")
    public String fetchStudent() {

        String res = "";
        List<Student> students = (List<Student>) studentRepository.findAll();
        for (Student student : students) {
            res += student.getName() + " " + student.getBranch() + " " + student.getStudID() + '\n';
        }
        if (res.isEmpty()) {
            return "No data present";
        }
        return res;
    }

    @PostMapping("/addStudent")
    public Student postDetails(@RequestBody Student student) {
        return studentRepository.save(student);
    }

    //@GetMapping("/fetchByID/{studID}")
    public String fetchDetailsById(Model model, @PathVariable String studID) {
        Optional<Student> opt = studentRepository.findById(studID);
        if (opt.isPresent()) {
            List<Student> studentList = new ArrayList<>();
            studentList.add(opt.get());
            model.addAttribute("datas", studentList);
            return "data";
        }
        return "failure";
    }

    @GetMapping("/updateStudent")
    public String updateStudent() {
        return "demo";
    }

    @GetMapping("/deleteStudent")
    public String deleteStudent() {
        return "demo";
    }

    @GetMapping("/deleteAllStudent")
    public String deleteAllStudent() {
        studentRepository.deleteAll();
        return "success";
    }
    //MVC
    //Model: Data
    //View : UI part
    //Controller
}
