package com.github.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("userManager")
public class UserManagerController {

    @RequestMapping("index")
    public String index(){
        return "user/user_index";
    }

}
