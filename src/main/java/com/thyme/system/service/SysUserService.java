package com.thyme.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.thyme.system.entity.SysUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @author thyme
 * @ClassName UserService
 * @Description TODO
 * @Date 2019/12/11 10:30
 */
public interface SysUserService {

    /**
     * 根据姓名查询
     * @param name 姓名
     * @return 用户实例
     */
    SysUser findByName(@Param("name") String name);

    String findBranchId(String name);

    List<Map<String, Object>> findCruuentBranchUser(String name);

    /**
     * 查询所有用户
     * @param page 分页数据
     * @return 所有用户集合
     */
    IPage<SysUser> getAll(Page page);

    /**
     * 根据id查用户
     * @param id id
     * @return 用户集合
     */
    SysUser getById(String id);

    /**
     * 根据id删除用户
     * @param id id
     * @return 返回值
     */
    int deleteById(String id);

    /**
     * 根据id用户
     * @param sysUser 用户
     * @return 返回值
     */
    int updateById(SysUser sysUser);

    /**
     * 保存用户
     * @param sysUser 用户
     * @return 返回值
     */
    int insert(SysUser sysUser);

    /**
     * 根据用户id,更新密码
     * @param password
     * @param id
     * @return
     */
    int updatePasswordById(String password, String id);
}
