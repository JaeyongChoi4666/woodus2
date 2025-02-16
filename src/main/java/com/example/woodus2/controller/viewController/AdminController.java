package com.example.woodus2.controller.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class  AdminController {

    @GetMapping("/index")
    public String index() {
        return "/admin/index";
    }

    @GetMapping("/addProgram")
    public String addProgram() {
        return "/admin/addProgram";
    }

    @GetMapping("/listProgram")
    public String listProgram() {
        return "/admin/listProgram";
    }

    @GetMapping("/detailProgram")
    public String detailProgram() {
        return "/admin/detailProgram";
    }

    @GetMapping("/listCommunity")
    public String listCommunity() {
        return "/admin/listCommunity";
    }

    @GetMapping("/detailCommunity")
    public String detailCommunity() {
        return "/admin/detailCommunity";
    }
}
