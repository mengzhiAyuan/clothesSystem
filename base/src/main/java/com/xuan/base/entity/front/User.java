package com.xuan.base.entity.front;

import com.xuan.base.annotion.ValidateEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import java.util.Date;
import java.util.Objects;

/**
 * @Auther: 梦致A远
 * @Date: 2023/1/1 19:51
 * @Description:
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    private static final int USER_SEX_UNKONW = 2;//性别未知
    private static final int USER_DEFAULT_TYPE = 0;//普通用户
    private static final int USER_DEFAULT_STATUS = 0;//正常

    @ValidateEntity(required=false)
    @Column(name="id",length=1)
    private int id;

    @ValidateEntity(required=true,requiredLeng=true,minLength=4,maxLength=18,errorRequiredMsg="用户名不能为空!",errorMinLengthMsg="用户名长度需大于4!",errorMaxLengthMsg="用户名长度不能大于18!")
    @Column(name="username",nullable=false,length=18,unique=true)
    private String userName;//用户名

    @ValidateEntity(required=true,requiredLeng=true,minLength=4,maxLength=32,errorRequiredMsg="密码不能为空！",errorMinLengthMsg="密码长度需大于4!",errorMaxLengthMsg="密码长度不能大于32!")
    @Column(name="password",nullable=false,length=32)
    private String password;//登录密码

    @ValidateEntity(required=false)
    @Column(name="status",length=1)
    private int status = USER_DEFAULT_STATUS;//用户状态,默认可用

    @ValidateEntity(required=false)
    @Column(name="head_pic",length=128)
    private String headPic;//用户头像

    @ValidateEntity(required=false)
    @Column(name="sex",length=1)
    private int sex = USER_SEX_UNKONW;//用户性别

    @ValidateEntity(required=false)
    @Column(name="mobile",length=12)
    private String mobile;//用户手机号

    @ValidateEntity(required=false)
    @Column(name="email",length=32)
    private String email;//用户邮箱

    @ValidateEntity(required=false)
    @Column(name="type",length=1)
    private int type = USER_DEFAULT_TYPE;//用户状态


    @ValidateEntity(required=false)
    @Column(name="expire_time",length=128)
    private Date expireTime;//用户头像

    @ValidateEntity(required=false)
    @Column(name="address",length=128)
    private String address;//用户头像

    @ValidateEntity(required=false)
    @Column(name="create_time",length=128)
    private Date createTime;//用户头像

}
