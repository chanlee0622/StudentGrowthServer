package cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.impl;

import cn.edu.fjnu.cse.studentgrowth.dao.base.BaseJdbcDao;
import cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.IStudentDao;
import cn.edu.fjnu.cse.studentgrowth.model.studentmanage.TStudent;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:25 PM
 * @Function:
 */
public class StudentDaoImpl extends BaseJdbcDao implements IStudentDao {

    private static final String FIND_STUDENT = "";
    /**
     * @param mAccount  学号
     * @param mPassword 密码
     * @function 登录验证（学生）
     */
    @Override
    public TStudent findStudent(String mAccount, String mPassword) {
        System.out.println("==============数据访问层被调用=============");
        TStudent tStudent = new TStudent();
        return tStudent;
    }
}
