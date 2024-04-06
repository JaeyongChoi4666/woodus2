package com.example.woodus2.controller.viewController;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/contribution")
public class ContributionControllerV {

    @GetMapping("/index")
    public String index() {
        return "/contribution/index";
    }

    @GetMapping("/detail")
    public String detail() {
        return "/contribution/detail";
    }
}
