package com.wangpeng.bms.web;

import com.wangpeng.bms.model.BookType;
import com.wangpeng.bms.service.BookTypeService;
import com.wangpeng.bms.utils.JsonUtil;
import com.wangpeng.bms.utils.MyResult;
import com.wangpeng.bms.utils.MyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/bookType")
public class BookTypeController {

    @Autowired
    BookTypeService bookTypeService;

    // 获得数量
    @GetMapping(value = "/getCount")
    public Integer getCount(){
        return bookTypeService.getCount();
    }

    // 查询所有类型
    @GetMapping(value = {"/queryBookTypes", "/reader/queryBookTypes"})
    public List<BookType> queryBookTypes(){
        return bookTypeService.queryBookTypes();
    }

    // 分页查询图书类型 params: {page, limit, booktypename}
    @GetMapping(value = "/queryBookTypesByPage")
    public Map<String, Object> queryBookTypesByPage(@RequestParam Map<String, Object> params){
        MyUtils.parsePageParams(params);
        int count = bookTypeService.getSearchCount(params);
        List<BookType> bookTypes = bookTypeService.searchBookTypesByPage(params);
        return MyResult.getListResultMap(0, "success", count, bookTypes);
    }

    // 添加类型
    @PostMapping(value = "/addBookType")
    public Integer addBookType(@RequestBody BookType bookType){
        return bookTypeService.addBookType(bookType);
    }

    // 删除类型
    @DeleteMapping(value = "/deleteBookType")
    public Integer deleteBookType(@RequestBody BookType bookType){
        return bookTypeService.deleteBookType(bookType);
    }

    // 删除一些类型
    @DeleteMapping(value = "/deleteBookTypes")
    public Integer deleteBookTypes(@RequestBody List<BookType> bookTypes){
        return bookTypeService.deleteBookTypes(bookTypes);
    }

    // 更新类型
    @PutMapping(value = "/updateBookType")
    public Integer updateBookType(@RequestBody BookType bookType){
        return bookTypeService.updateBookType(bookType);
    }
}
