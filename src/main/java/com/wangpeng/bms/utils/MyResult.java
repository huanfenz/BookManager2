package com.wangpeng.bms.utils;

import java.util.HashMap;

public class MyResult {

    public static HashMap<String, Object> getResultMap(Integer status, String message) {
        return new HashMap<String, Object>() {
            {
                put("status", status);
                put("message", message);
                put("timestamp", System.currentTimeMillis());
            }
        };
    }

    public static HashMap<String, Object> getResultMap(Integer status, String message, Object data) {
        return new HashMap<String, Object>() {
            {
                put("status", status);
                put("message", message);
                put("data", data);
                put("timestamp", System.currentTimeMillis());
            }
        };
    }

    public static HashMap<String, Object> getListResultMap(Integer status, String message, Integer count, Object data) {
        return new HashMap<String, Object>() {
            {
                put("code", status);
                put("message", message);
                put("count", count);
                put("data", data);
            }
        };
    }
}
