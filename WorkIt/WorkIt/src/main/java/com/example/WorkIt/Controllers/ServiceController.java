package com.example.WorkIt.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.WorkIt.repository.UserRepository;

@Controller
public class ServiceController {
	
	@Autowired
    private UserRepository userRepository;

    /*@GetMapping("/service/carpenter")
    public String carpenter() {
        return "carpenter";
    }*/
    
    @GetMapping("/service/carpenter")
    public String carpenter(Model model) {
        model.addAttribute("workers",
            userRepository.findByService("CARPENTER"));
        return "service";
    }

    @GetMapping("/service/plumber")
    public String plumber(Model model) {
        model.addAttribute("workers",
                userRepository.findByService("carpenter"));
            return "service";
        }

    @GetMapping("/service/electrician")
    public String electrician(Model model) {
        model.addAttribute("workers",
                userRepository.findByService("carpenter"));
            return "service";
        }
}
