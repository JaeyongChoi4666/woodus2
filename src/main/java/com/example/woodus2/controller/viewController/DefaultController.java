package com.example.woodus2.controller.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/")
public class DefaultController {

    @GetMapping("")
    public String index() {
        return "index";
    }

    @GetMapping("/woodus")
    public String woodus() {
        return "woodus";
    }

    @GetMapping("/repair")
    public String repair() {
        return "repair";
    }
}
