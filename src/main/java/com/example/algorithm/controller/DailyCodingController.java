package com.example.algorithm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class DailyCodingController {

    @GetMapping("/daily-coding/easy/{pageName}")
    public String dailyCoding(@PathVariable String pageName){
        return ("/daily-coding/easy/"+pageName);
    }
}
