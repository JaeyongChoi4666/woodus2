package com.example.woodus2.controller.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
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
