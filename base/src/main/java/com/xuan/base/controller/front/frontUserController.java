package com.xuan.base.controller.front;

import com.xuan.base.dao.front.UserMapper;
import com.xuan.base.entity.front.FrontUser;
import com.xuan.base.service.front.UserService;
import com.xuan.base.util.front.HostHolder;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * @Auther: 梦致A远
 * @Date: 2023/1/3 14:54
 * @Description:
 */

@Api(description = "用户会员管理")
@Controller
@Slf4j
@RequestMapping("/user")
public class frontUserController {

    @Autowired
    HostHolder hostHolder;

    @Autowired
    UserService userService;

    @Autowired
    UserMapper userMapper;

    //返回个页
    @GetMapping("/profile")
    public String getUserProfile(){
        return "/user/profile";
    }



    //用户开通会员
    @GetMapping("/open/{type}")
    public String open(Model model,@PathVariable("type") int type){
        FrontUser user = hostHolder.getUser();
        String msg = userService.updateType(user.getId(), type);
        model.addAttribute("msg",msg);
        return "redirect:/user/profile";
    }

    //管理员解锁会员
    @GetMapping("/unlock/{userId}")
    public String unlock(Model model,@PathVariable("userId") int userId){
        userService.updateStatus(userId,0);
        return "/user/exit";
    }

    //冻结会员
    @GetMapping("/block/{userId}")
    public String block(Model model,@PathVariable("userId") int userId){
        userService.updateStatus(userId,1);
        return "/user/exit";
    }

    //查看用户信息/个人信息
    @GetMapping("/profile/{userId}")
    public String getUserInfo(Model model,@PathVariable("userId") int userId){
        FrontUser user = userService.findUserById(userId);
        model.addAttribute("user",user);
        return "/user/profile";
    }


    //修改密码，model变量用来向页面返回数据
    //@LoginRequired
    @RequestMapping(path = "/changePassword", method = {RequestMethod.GET,RequestMethod.POST})
    public String changePassword(String oldPassword,String newPassword,String confirmPassword, Model model) {
        FrontUser user = hostHolder.getUser();
        Map<String, Object> map = userService.changePassword(user,oldPassword, newPassword, confirmPassword);
        if(map == null || map.isEmpty()){
            return "redirect:/index";
        }else {
            model.addAttribute("oldPasswordMsg", map.get("oldPasswordMsg"));
            log.error(oldPassword);
            model.addAttribute("newPasswordMsg", map.get("newPasswordMsg"));
            log.error(newPassword);
            model.addAttribute("confirmPasswordMsg", map.get("confirmPasswordMsg"));
            return "/site/setting";
        }
    }

    @RequestMapping(path = "/forgetPassword", method = RequestMethod.GET)
    //忘记密码
    public String forgetPassword() {
        return "/site/forget";
    }

}
