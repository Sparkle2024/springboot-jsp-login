package com.example.spring_jsp_demp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String login() {
        return "pages/login"; // renders login.jsp
    }

    @PostMapping("/login")
    public String dologin(@RequestParam("email") String email,
                          @RequestParam("password") String password,
                          Model model) {

        if (!email.isEmpty() && !password.isEmpty()) {
            model.addAttribute("email", email);
            return "redirect:/students"; // renders welcome.jsp
        } else {
            model.addAttribute("error", "All fields required!");
            return "pages/login";
        }
    }

    // Optional: redirect root URL to /signup
    @GetMapping("/home")
    public String home() {
        return "pages/home";
    }
}
