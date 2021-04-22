package com.github.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("ligerui")
public class LigerUiMenuController {

    @RequestMapping("indexdata")
    @ResponseBody
    public List<Map<String,Object>> indexdata(){

        List<Map<String,Object>> datas = new ArrayList<>();

        Map<String,Object> map = new HashMap<>();
        map.put("text","系统管理");
        map.put("isexpand",false);

        List<Map<String,String>> child = new ArrayList<>();

        {
            Map<String,String> menu = new HashMap<>();
            menu.put("url","../userManager/index");
            menu.put("text","用户管理");
            child.add(menu);
        }

        map.put("children",child);
        datas.add(map);

        return datas;
    }

}
