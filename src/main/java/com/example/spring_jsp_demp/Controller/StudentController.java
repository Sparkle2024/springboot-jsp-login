package com.example.spring_jsp_demp.Controller;

import com.example.spring_jsp_demp.model.Student;
import com.example.spring_jsp_demp.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
@Controller
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    // Show signup form
	/*
	 * @GetMapping("/Signup") public String showSignupForm(Model model) {
	 * model.addAttribute("student", new Student()); return "Signup"; // JSP name is
	 * Signup.jsp }
	 */

    // Handle signup and redirect to students page
	/*
	 * @PostMapping("/Signup") public String processSignup(@RequestParam String
	 * name,
	 * 
	 * @RequestParam String email,
	 * 
	 * @RequestParam double percentage) { Student student = new Student(name, email,
	 * percentage); studentRepository.save(student); return "redirect:/students"; }
	 */

    // Show all students
    @GetMapping("/students")
    public String showStudents(Model model) {
        model.addAttribute("students", studentRepository.findAll());
        return "students";
    }

    // Add student manually from students.jsp form
    @PostMapping("/students/add")
    public String addStudent(@RequestParam String name,
                             @RequestParam String email,
                             @RequestParam double percentage) {
        Student student = new Student(name, email, percentage);
        studentRepository.save(student);
        return "redirect:/students";
    }

    // Delete student by ID
    @PostMapping("/students/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        studentRepository.deleteById(id);
        return "redirect:/students";
    }
}
