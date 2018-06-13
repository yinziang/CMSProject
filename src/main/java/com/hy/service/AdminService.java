package com.hy.service;


/**
 * Description:
 * 管理员用户的相关服务
 *
 * @author huaxin
 * @create 2018/06/13 16:11
 */
public interface AdminService {

    /**
     * 实现管理员用户的登录操作
     *
     * @param username
     * @param password
     * @return
     */
    public boolean loginByUsernamePassword(String username, String password);

}
