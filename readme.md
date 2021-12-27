# 图书管理系统接口程序（Book Management System, Created by SpringBoot framework）

[![我的博客](https://img.shields.io/badge/%E6%88%91%E7%9A%84%E5%8D%9A%E5%AE%A2-huanfenz.top-brightgreen)](http://huanfenz.top)	[![演示地址](https://img.shields.io/badge/%E6%BC%94%E7%A4%BA%E5%9C%B0%E5%9D%80-%E7%82%B9%E5%87%BB%E6%9F%A5%E7%9C%8B-blue)](https://github.com/huanfenz/BookManager#演示地址)	[![联系方式](https://img.shields.io/badge/%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F-%E7%82%B9%E5%87%BB%E6%9F%A5%E7%9C%8B-green)](https://github.com/huanfenz/BookManager#联系方式)

## 项目介绍

前后端分离的图书管理系统项目。

后端使用Java+SpringBoot+MyBatis+MySQL

前端使用Vue+Axios+Element UI

项目整体难度简单，部署简单，界面友好，代码结构清晰，相比上一个项目，虽然规模缩小了，但是很多地方有了改善。适合初学者学习和练习。

**注意**：这个仓库只有接口，对应的前端程序如下

https://github.com/huanfenz/BookManagerVue

## 环境介绍

| 名称      | 描述                                     |
| --------- | ---------------------------------------- |
| Java版本  | JDK 1.8.0                                |
| IDE工具   | IntelliJ IDEA 2021.2.1(Ultimate Edition) |
| 构建工具  | Maven 3.3.9                              |
| Web服务器 | SpringBoot内嵌的Tomcat                   |
| 数据库    | MySQL 5.7                                |

## 搭建步骤

### 后端程序

1、数据库导入，新建数据库student_manager，将`book_manager.sql`文件导入并运行。

2、打开项目，打开`src/main/resources/application.properties`，修改数据库的配置文件。

3、运行项目

### 前端程序

1.   在项目目录下，输入命令`npm install`安装环境
2.   输入命令`npm run dev`运行程序

## 项目截图

![image-20211227232703076](http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202112272327142.png)

![image-20211227232606714](http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202112272326816.png)

## 演示地址

**滴滴滴，演示目前还是旧版用LayUI的版本。新版有空再上传服务器。**

项目演示地址：http://47.97.104.230:8092/BookManager/

管理员账号`admin`，密码`admin`

读者账号`wangpeng`，密码`123456`

>   注意：请试用时尽量不要影响到原有的记录。

## 项目描述

### 数据库结构

![Diagram 1](http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111211945265.jpg)

## 联系方式

我的博客地址：[个人博客](http://huanfenz.top)，[CSDN博客](https://blog.csdn.net/qq_34245098?spm=1000.2115.3001.5343)。欢迎大家来踩。

我的联系方式，欢迎联系我：

*   邮箱：`huanfenz@qq.com`
*   QQ：`894176237`





