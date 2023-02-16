package com.example.algorithm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class DailyCodingController {

    @GetMapping("/easy/{pageName}")
    public String dailyCoding(@PathVariable String pageName){
        return ("/daily-coding/easy/day"+pageName);
    }
    @GetMapping("/medium/{pageName}")
    public String dailyCoding2(@PathVariable String pageName){
        return ("/daily-coding/medium/new"+pageName);
    }
}
