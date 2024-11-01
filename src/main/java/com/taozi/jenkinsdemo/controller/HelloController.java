package com.taozi.jenkinsdemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @RequestMapping()
    public String index(){
        return "2024-11-02 00:23:06";
    }
    @RequestMapping("hello")
    public String hello() {
        return "2024-10-31 02:40:57";
    }
}
