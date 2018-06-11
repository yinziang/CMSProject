package com.hy.utils;


/**
 * 常量接口
 */
public interface Constants {

    /* 模块编号 */
    Integer ABOUT_US_MODULE_ID = 1;
    Integer Solution_MODULE_ID = 2;
    Integer Center_MODULE_ID = 3;

    Integer ABOUT_US_PART_ID = 1;
    Integer NEWS_PART_ID = 0;
    Integer HEALTH_EDUCATION_PART_ID = 11;
    Integer INDEX_MAX_NEWS_NUMBER = 3;

    String ERROR_MESSAGE = "遇到麻烦了，请等喘口气再操作！";
    String OK_MESSAGE = "操作成功";
    String PICTURE_NAME = "pic";
    String SOLUTION_IMAGE_PATH = "images/page/solution.jpg";


    /* followings deprecated */
    JSONResult UNDEFINED_JSON_RESULT = JSONResult.build(666, Constants.ERROR_MESSAGE, null);
    JSONResult UNCOMLETED_JSON_RESULT = JSONResult.ok("抱歉，还没掌握这个技能，:)");

    String ABOUT_US_IMAGE_PATH = "images/about_us/about_us.jpg";
    String ABOUT_US_CONTENT = "我们是XXX医院，我们能XXX。";
}
