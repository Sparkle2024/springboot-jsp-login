package com.example.spring_jsp_demp.Controller;

import com.example.spring_jsp_demp.model.User;
import com.example.spring_jsp_demp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
@Controller
public class SignupController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/Signup")
    public String showSignupForm() {
        return "Signup";
    }

    @PostMapping("/Signup")
    public String processSignup(@RequestParam String name,
                                 @RequestParam String email,
                                 @RequestParam String password) {
        User user = new User(name, email, password);
        userRepository.save(user);
        return "redirect:/login";
    }
}
