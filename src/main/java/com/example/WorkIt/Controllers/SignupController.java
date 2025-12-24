package com.example.WorkIt.Controllers;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.WorkIt.Entities.User;
import com.example.WorkIt.repository.UserRepository;

@Controller
public class SignupController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/dosignup")
    public String signup(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String password,
            @RequestParam String service,
            @RequestParam BigDecimal experience,
            @RequestParam int chargePerDay,
            @RequestParam String landmark) {

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setMobile(mobile);
        user.setPassword(password);// (we’ll encrypt later)
        user.setService(service);
        user.setExperience(experience);
        user.setChargePerDay(chargePerDay);
        user.setLandmark(landmark);
        

        userRepository.save(user);

        return "login"; // redirect to login page
    }
}