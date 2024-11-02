package com.taozi.jenkinsdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping()
    public String index(){
        return "测试在 k8s-master 构建，测试 k8s 部署,test";
    }
    @RequestMapping("hello")
    public String hello() {
        return " 2024-11-03 00:51:43";
    }
}
