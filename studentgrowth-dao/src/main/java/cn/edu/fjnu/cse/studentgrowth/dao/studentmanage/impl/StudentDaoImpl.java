package cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.impl;

import cn.edu.fjnu.cse.studentgrowth.dao.base.BaseJdbcDao;
import cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.IStudentDao;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:25 PM
 * @Function:
 */
public class StudentDaoImpl extends BaseJdbcDao implements IStudentDao {
    /**
     * @param mAccount  学号
     * @param mPassword 密码
     * @function 登录验证（学生）
     */
    @Override
    public void findStudent(String mAccount, String mPassword) {
        System.out.println("==============数据访问层被调用=============");
    }
}
