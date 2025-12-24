package com.example.WorkIt.Controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.WorkIt.Entities.User;
import com.example.WorkIt.repository.UserRepository;



@Controller
public class LoginController {
	
    @Autowired
    private UserRepository userRepository;
	
    @PostMapping("/doLogin")
    public String doLogin(
            @RequestParam String mobile,
            @RequestParam String password,
            Model model) {

        Optional<User> userOpt = userRepository.findByMobile(mobile);

        if (userOpt.isPresent()) {
            User user = userOpt.get();

            if (user.getPassword().equals(password)) {
                // SUCCESS
            	System.out.println("db:"+user.getPassword()+"---"+password);
                model.addAttribute("username", user.getName());
                return "landing"; // landing.jsp
            }
        }

        // FAILURE
        model.addAttribute("error", "Invalid mobile number or password");
        return "login";
}
}

