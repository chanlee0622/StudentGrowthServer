package cn.edu.fjnu.cse.studentgrowth.model.studentmanage;

import cn.edu.fjnu.cse.studentgrowth.model.base.BaseModel;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:35 PM
 * @Function:
 * @Version: 1.0-Fjnu
 */
public class TStudent extends BaseModel {
    private Integer s_id;
    private String s_account;
    private String s_password;
    private Integer fk_r_id;

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    public String getS_account() {
        return s_account;
    }

    public void setS_account(String s_account) {
        this.s_account = s_account;
    }

    public String getS_password() {
        return s_password;
    }

    public void setS_password(String s_password) {
        this.s_password = s_password;
    }

    public Integer getFk_r_id() {
        return fk_r_id;
    }

    public void setFk_r_id(Integer fk_r_id) {
        this.fk_r_id = fk_r_id;
    }

    @Override
    public String toString() {
        return "TStudent{" +
                "s_id=" + s_id +
                ", s_account='" + s_account + '\'' +
                ", s_password='" + s_password + '\'' +
                ", fk_r_id=" + fk_r_id +
                '}';
    }
}