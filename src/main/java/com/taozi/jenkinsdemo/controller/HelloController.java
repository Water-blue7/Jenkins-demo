package com.taozi.jenkinsdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping()
    public String index(){
        return "2024-11-02 00:23:06" +
                "@GetMapping：专用于 GET 请求，是 @RequestMapping(method = RequestMethod.GET) 的简写。" +
                "自动化构建 docker 镜像并运行";
    }
    @RequestMapping("hello")
    public String hello() {
        return "2024-10-31 02:40:57";
    }
}
