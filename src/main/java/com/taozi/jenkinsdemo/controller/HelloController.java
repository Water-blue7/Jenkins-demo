package com.taozi.jenkinsdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping()
    public String index(){
        return "K8S 部署,OK，不主动删除文件，测试自动覆盖";
    }
    @RequestMapping("hello")
    public String hello() {
        return "/hello";
    }
}
