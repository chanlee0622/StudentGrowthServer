package cn.edu.fjnu.cse.studentgrowth.dao.studentmanage;

import cn.edu.fjnu.cse.studentgrowth.model.studentmanage.TStudent;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:24 PM
 * @Function:
 */
public interface IStudentDao {
    /**
     * @param mAccount 学号
     * @param mPassword 密码
     * @function 登录验证（学生）
     */
    public TStudent findStudent(String mAccount, String mPassword);
}
