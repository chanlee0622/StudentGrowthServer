package cn.edu.fjnu.cse.studentgrowth.dao.base;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import java.util.List;

/**
 * @Author: chan
 * @DATE: 5/24/14
 * @TIME: 9:23 PM
 * @Function:
 */
public class BaseJdbcDao extends JdbcDaoSupport {
    /**
     *
     * @创建日期   [2014-5-11 上午9:46:45]<p>
     * @作者       [李笃昌]<p>
     * @功能描述   [查找记录]<p>
     * @参数及返回值说明
     *  	@param sql SQL语句
     *  	@param params 参数
     *  	@param paramTypes  参数对应的类型
     *  	@param rowMapper 行映射
     *  	@return []  返回值
     */
    public <T> List<T> queryObject(String sql, Object[] params, int[] paramTypes, RowMapper<T> rowMapper) {
        return this.getJdbcTemplate().query(sql, params, paramTypes, rowMapper);
    }

    /**
     * @创建日期   [2014-5-17 上午12:06:56]<p>
     * @作者       [李笃昌]<p>
     * @功能描述   [插入记录]<p>
     * @参数及返回值说明
     *  	@param sql SQL语句
     *  	@param params 参数
     *  	@param paramTypes [] 参数对应的类型
     */
    public void insertObject(String sql, Object[] params, int[] paramTypes) {
        this.getJdbcTemplate().update(sql, params, paramTypes);
    }

    /**
     * @创建日期   [2014-5-17 上午12:10:24]<p>
     * @作者       [李笃昌]<p>
     * @功能描述   [更新记录]<p>
     * @参数及返回值说明
     *  	@param sql SQL语句
     *  	@param params 参数
     *  	@param paramTypes [] 参数对应的类型
     */
    public void updateObject(String sql, Object[] params, int[] paramTypes) {
        this.getJdbcTemplate().update(sql, params, paramTypes);
    }
}
