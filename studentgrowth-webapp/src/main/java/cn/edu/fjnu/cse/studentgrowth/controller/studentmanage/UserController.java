package cn.edu.fjnu.cse.studentgrowth.controller.studentmanage;

import cn.edu.fjnu.cse.studentgrowth.controller.base.BaseControler;
import cn.edu.fjnu.cse.studentgrowth.model.studentmanage.TStudent;
import cn.edu.fjnu.cse.studentgrowth.service.studentmanage.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 8:26 PM
 * @Function:
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseControler {

    @Autowired
    @Qualifier(value = "studentService")
    private IStudentService studentService;

    @RequestMapping(value = "/toLogin")
    public ModelAndView toLogin() {
        System.out.println("==============控制层被调用============");
        studentService.findStudent("", "");
        TStudent tStudent = new TStudent();
        tStudent.testStuent();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/login");
        return modelAndView;
    }
}