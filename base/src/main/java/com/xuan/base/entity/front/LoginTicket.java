package com.xuan.base.entity.front;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Auther: 梦致A远
 * @Date: 2023/1/1 19:51
 * @Description:
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginTicket {

    private int id;
    private int userId;
    private String ticket; //0：有效  1：无效
    private int status;
    private Date expired;

}
