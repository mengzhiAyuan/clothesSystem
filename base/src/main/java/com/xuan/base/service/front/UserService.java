package com.xuan.base.service.front;




import com.xuan.base.entity.front.LoginTicket;
import com.xuan.base.entity.front.User;

import java.util.Collection;
import java.util.Map;

/**
 * @Auther: 梦致A远
 * @Date: 2023/1/1 19:51
 * @Description:
 */

public interface UserService {

    User findUserById(int id);

    Map<String,Object> register(User user);

    Map<String,Object> login(String username,String password,int expiredSeconds);

    void logout(String ticket);

    LoginTicket findLoginTicket(String ticket);

//    修改用户头像
    int updateHeader(int userId,String headerUrl);

    User findUserByName(String username);

    //修改密码
    Map<String, Object> changePassword(User user, String oldPassword, String newPassword, String confirmPassword);

    User findUserByEmail(String email);

}
