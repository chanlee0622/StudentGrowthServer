package cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.impl;

import cn.edu.fjnu.cse.studentgrowth.dao.base.BaseJdbcDao;
import cn.edu.fjnu.cse.studentgrowth.dao.studentmanage.IStudentDao;
import cn.edu.fjnu.cse.studentgrowth.model.studentmanage.TStudent;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:25 PM
 * @Function:
 */
public class StudentDaoImpl extends BaseJdbcDao implements IStudentDao {

    private static final String FIND_STUDENT = "SELECT * FROM T_student WHERE s_account=? and s_password=?";
    /**
     * @param mAccount  学号
     * @param mPassword 密码
     * @function 登录验证（学生）
     */
    @Override
    public TStudent findStudent(String mAccount, String mPassword) {
        System.out.println("==============数据访问层被调用=============");
        // 参数
        Object[] params = new Object[] { mAccount, mPassword };
        // 参数对应的类型
        int[] paramTypes = new int[] { Types.VARCHAR, Types.VARCHAR };
        List<TStudent> tStudents = super.queryObject(FIND_STUDENT, params, paramTypes, new RowMapper<TStudent>() {
            @Override
            public TStudent mapRow(ResultSet rs, int rowNum) throws SQLException {
                TStudent tStudent = new TStudent();
                tStudent.setS_id(rs.getInt("s_id"));
                tStudent.setS_account(rs.getString("s_account"));
                tStudent.setS_password(rs.getString("s_password"));
                tStudent.setFk_r_id(rs.getInt("fk_r_id"));
                return tStudent;
            }
        });

        if (tStudents != null && tStudents.size() > 0) {
            return tStudents.get(0);
        }
        return null;
    }
}
