package com.example.woodus2.controller.viewController;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/program")
public class ProgramController {

    @GetMapping("/index")
    public String index() {
        return "/program/index";
    }

    @GetMapping("/detail")
    public String detail() {
        return "/program/detail";
    }
}
