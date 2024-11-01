package com.taozi.jenkinsdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping()
    public String index(){
        return "Jenkins 中Source files不能使用绝对路径，且起始位置是workspace/project_name中，自动构建 images，以后要学习使用 pipeline";
    }
    @RequestMapping("hello")
    public String hello() {
        return "2024-10-31 02:40:57";
    }
}
