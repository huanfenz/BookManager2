package com.wangpeng.bms.utils;

import java.util.Map;

public class MyUtils {

    // 给map加上begin和size，方便处理分页
    public static void parsePageParams(Map<String, Object> params) {
        int page = Integer.parseInt((String) params.get("page"));
        int size = Integer.parseInt((String) params.get("limit"));
        params.put("begin", (page - 1) * size);
        params.put("size", size);
    }

}
