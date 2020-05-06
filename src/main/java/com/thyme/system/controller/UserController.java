package com.thyme.system.controller;

import com.thyme.common.utils.SecurityUtils;
import com.thyme.system.entity.SysUser;
import com.thyme.system.service.SysRoleService;
import com.thyme.system.service.SysUserService;
import lombok.RequiredArgsConstructor;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author cuiyating
 * @date 2020/1/2 20:43
 */
@Controller
@RequestMapping("/user")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class UserController {

    private final SysUserService sysUserService;

    private final SysRoleService sysRoleService;

    @GetMapping("/list")
    public String index(){
        return "module/user/user";
    }

    @GetMapping("/update")
    public String update(String id, Model model){
        SysUser sysUser = sysUserService.getById(id);
        String roleName = sysRoleService.getById(sysUser.getId());
        model.addAttribute("sysUser", sysUser);
        model.addAttribute("roleName", roleName);
        return "module/user/updateUser";
    }

    @GetMapping("/add")
    public String add(){
        return "module/user/addUser";
    }

    @GetMapping("/changePassword")
    public String changePassword(){
        return "module/user/changePassword";
    }

    @GetMapping("/personal")
    public String personal(Model model){
        Authentication authentication = SecurityUtils.getCurrentUserAuthentication();
        String username = (String)authentication.getPrincipal();
        SysUser sysUser = sysUserService.findByName(username);
        String roleName = sysRoleService.getById(sysUser.getId());
        model.addAttribute("sysUser", JSONObject.fromObject(sysUser));
        model.addAttribute("roleName", roleName);
        return "module/user/personal";
    }
}
