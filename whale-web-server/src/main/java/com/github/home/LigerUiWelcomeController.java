package com.github.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ligerui")
public class LigerUiWelcomeController {

    @RequestMapping("welcome")
    public String welcome(){
        return "ligerui_welcome";
    }
}
