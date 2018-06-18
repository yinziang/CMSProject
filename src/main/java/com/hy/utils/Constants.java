package com.hy.utils;


/**
 * 常量接口
 */
public interface Constants {

    /* 模块编号 */
    Integer ABOUT_SHENCHANG_MODULE_ID = 1;
    Integer SOLUTION_MODULE_ID = 2;
    Integer CENTER_MODULE_ID = 3;
    Integer NEWS_MODULE_ID = 4;
    Integer HEALTH_EDU_MODULE_ID = 5;
    Integer SHENYOU_MODULE_ID = 6;
    Integer CONTACT_MODULE_ID = 7;

    /* 子模块编号 */
    Integer SHENCHANG_JIANJIE_PART_ID = 1;
    Integer SHENCHANG_SHILI_PART_ID = 2;
    Integer SHENCHANG_WENHUA_PART_ID = 3;
    Integer SHEHUI_ZEREN_PART_ID = 4;

    Integer SHENJI_GUIHUA_PART_ID = 5;
    Integer SHICHANG_YINGXIAO_PART_ID = 6;
    Integer RENYUAN_PEIXUN_PART_ID = 7;
    Integer XINXI_XITONG_PART_ID = 8;

    Integer JIAYU_CENTER_PART_ID = 9;
    Integer TONGSHAN_CENTER_PART_ID = 10;
    Integer YANGXIN_CENTER_PART_ID = 11;
    Integer CHONGREN_CENTER_PART_ID = 12;

    Integer NEWS_PART_ID = 13;
    Integer HEALTH_EDUCATION_PART_ID = 14;

    Integer MAX_DESCRIPTION_LENGTH = 70;
    Integer INDEX_MAX_NEWS_NUMBER = 3; // 首页轮播广告最大个数

    String ERROR_MESSAGE = "遇到麻烦了，请等喘口气再操作！";
    String OK_MESSAGE = "操作成功";
    String PICTURE_NAME = "pic";


    /* followings deprecated */
    /*
    Integer ABOUT_US_PART_ID = 1;
    String SOLUTION_IMAGE_PATH = "images/page/solution.png";
    JSONResult UNDEFINED_JSON_RESULT = JSONResult.build(666, Constants.ERROR_MESSAGE, null);
    JSONResult UNCOMLETED_JSON_RESULT = JSONResult.ok("抱歉，还没掌握这个技能，:)");
    String ABOUT_US_IMAGE_PATH = "images/about_us/about_us.jpg";
    String ABOUT_US_CONTENT = "我们是XXX医院，我们能XXX。";
    */
}
