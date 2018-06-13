package com.hy.service.impl;

import com.hy.dao.mapper.AdminMapper;
import com.hy.domain.Admin;
import com.hy.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Description:
 * 实现管理员登录操作和登出操作
 *
 * @author huaxin
 * @create 2018/06/13 16:02
 */
@Service
public class AdminServiceImpl implements AdminService{

    @Resource
    private AdminMapper adminMapper;

    @Override
    public boolean loginByUsernamePassword(String username, String password) {
        Admin admin = adminMapper.selectByUsername(username);

        if (admin != null) {
            return admin.getPassword().equals(password);
        }

        return false;
    }

}
