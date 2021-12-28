package com.wangpeng.bms.utils;

import com.wangpeng.bms.model.User;

import java.util.HashMap;
import java.util.Map;

public class UserTableUtils {
    // 私有化构造器
    private UserTableUtils() {

    }
    // 静态对象
    private static Map<String, User> table = new HashMap<>();

    // 设置用户
    public static void setUser(String token, User user) {
        table.put(token, user);
    }

    // 查询用户
    public static User getUser(String token) {
        return table.get(token);
    }

    // 移除用户
    public static void removeUser(String token) {
        table.remove(token);
    }
}
