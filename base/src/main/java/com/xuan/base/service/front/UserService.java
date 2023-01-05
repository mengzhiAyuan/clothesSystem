package com.xuan.base.service.front;




import com.xuan.base.entity.front.LoginTicket;
import com.xuan.base.entity.front.FrontUser;

import java.util.Map;

/**
 * @Auther: 梦致A远
 * @Date: 2023/1/1 19:51
 * @Description:
 */

public interface UserService {

    FrontUser findUserById(int id);

    Map<String,Object> register(FrontUser user);

    Map<String,Object> login(String username,String password,int expiredSeconds);

    void logout(String ticket);

    LoginTicket findLoginTicket(String ticket);

//    修改用户头像
    int updateHeader(int userId,String headerUrl);

    FrontUser findUserByName(String username);

    //修改密码
    Map<String, Object> changePassword(FrontUser user, String oldPassword, String newPassword, String confirmPassword);

    FrontUser findUserByEmail(String email);


    String updateType(int userId, int type);

    String updateStatus(int userId, int status);
}
