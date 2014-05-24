package cn.edu.fjnu.cse.studentgrowth.service.studentmanage.impl;

import cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.IStudentDao;
import cn.edu.fjnu.cse.studentgrowth.service.studentmanage.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:09 PM
 * @Function:
 */
@Service(value = "studentService")
public class StudentServiceImpl implements IStudentService {

    @Autowired
    @Qualifier(value = "studentDao")
    private IStudentDao studentDao;

    /**
     * @param mAccount  学号
     * @param mPassword 密码
     * @function 登录验证（学生）
     */
    @Override
    public void findStudent(String mAccount, String mPassword) {
        System.out.println("==============业务逻辑层被调用=============");
        studentDao.findStudent(mAccount, mPassword);
    }
}
