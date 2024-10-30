package com.taozi.jenkinsdemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @RequestMapping("hello")
    public String hello() {
        return "hello 2024-10-30 23:10:01";
    }
}
