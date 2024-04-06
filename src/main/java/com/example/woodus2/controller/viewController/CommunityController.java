package com.example.woodus2.controller.viewController;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/community")
public class CommunityController {

    @GetMapping("/index")
    public String index() {
        return "/community/index";
    }

    @GetMapping("/detail")
    public String detail() {
        return "/community/detail";
    }
}
