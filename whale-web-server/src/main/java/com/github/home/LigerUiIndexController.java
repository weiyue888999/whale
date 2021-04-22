package com.github.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ligerui")
public class LigerUiIndexController {

    @RequestMapping("index")
    public String index(){
        return "ligerui_index";
    }
}
