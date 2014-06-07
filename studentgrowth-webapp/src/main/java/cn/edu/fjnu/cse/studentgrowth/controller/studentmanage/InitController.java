package cn.edu.fjnu.cse.studentgrowth.controller.studentmanage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author:  chan
 * Date:    2014/6/6
 * Time:    14:45
 * Functon:
 * Version: 1.0-Fjnu
 */
@Controller
public class InitController {
    @RequestMapping(value = "index")
    public String toIndex() {
        return "index";
    }
}
