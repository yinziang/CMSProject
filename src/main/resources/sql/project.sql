/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : project

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 06/11/2018 17:39:50 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `about_we`
-- ----------------------------
DROP TABLE IF EXISTS `about_we`;
CREATE TABLE `about_we` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `itext` varchar(1023) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `about_we`
-- ----------------------------
BEGIN;
INSERT INTO `about_we` VALUES ('1', 'images/page/d7e2b54f107143a6a77669b3fe209fee.jpg images/page/3f8418515fcd4a498fdd9367f04c8b5d.jpg', '以人为本是我们的核心价值\n\n我们来自台湾，是一个专业从事医疗产品代理与提供整体解决方案的现代化企业，致力为医疗专业人士和患者服务。\n\n \n\n自2003年成立以来，凭借着台湾医疗管理的丰富经验，配合国内一群拥有高素质的专业人才，成功将先进的管理理念及优质的医疗产品以优惠的价格与完善的专业服务提供给各大医疗院所及使用者。\n\n \n\n我们提供产品、服务及个性化、全方位的整体解决方案，保持在技术创新和市场方面的领先地位——服务内容包括科室建立、设计规划、人员培训、市场行销....等。通过优化透析中心临床工作流程，建立标准作业程序，提高服务质量，增加服务成本的有效性，不断提高透析患者的透析质量及生活品质。\n\n \n\n企业的强大来自于产品用户与合作伙伴的信任，体现的是企业经营的诚意和社会责任，杏泰医疗秉承“以人为本”的理念，将心比心，凭借服务的热忱赢得社会的信赖和支持。我们抱着不停滞、不满足的心态不断学习改进、不断提高自我，追求创新、追求进步、精益求精，为合作中心创造价值，也为患者创造福祉，重拾自在人生。', '1'), ('2', 'images/page/3f8418515fcd4a498fdd9367f04c8b5d.jpg', '合作透析中心的主任专访\n\n\n湖南地区医院\n与杏泰医疗合作至今有8年光景，台湾医疗的领先是有目共睹的，杏泰的团队凭借着台湾的医院管理经验、护理教育培训、优质的技术以及对病患提供的人性化专业服务，让我们医院的血透科室在短时间内有相当可观的成长。\n \n\n一开始我们中心只有8台血透机，随着杏泰提供专业人员培训、完善的场地规划、高质量的产品设备及后续专业人员的培训，至今我们已超过2200人次数，在湖南地区，我们的血透室是血透病患的首选，同时也提升了整个医院的知名度。\n\n\n不但如此，杏泰因为拥有良好的两岸平台，台湾专家也会定期与我方医护人员进行学术交流，彼此互相切磋，进而提升医疗照护质量。并且定期举办肾友会，提供给肾友第一线亲近专家的机会，吸收最好的透析领域知识。\n \n\n我们希望未来能持续与杏泰医疗合作，为我们的肾友提供更好的服务，一个好的产品及服务提供商，能为医院及病患带来的效益是永续不断的，看着患者满意度的增长，身为一个血透科室的主任，我由衷感谢杏泰医疗为医院及病人致力付出的一切，希望未来能继续借助双方的共同经验，携手往前。', '2');
COMMIT;

-- ----------------------------
--  Table structure for `ad_image`
-- ----------------------------
DROP TABLE IF EXISTS `ad_image`;
CREATE TABLE `ad_image` (
  `id` int(11) NOT NULL,
  `url` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ad_image`
-- ----------------------------
BEGIN;
INSERT INTO `ad_image` VALUES ('1', 'images/ad/5a0e4b1ca24141079ac428c1756dec0f.jpg'), ('2', 'images/ad/a31001d6b58b4e438328eb088cddc47f.jpg'), ('3', 'images/ad/b904bf160c7842bbb426345cf305bdd8.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `admin`
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `telphone` char(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `contact`
-- ----------------------------
BEGIN;
INSERT INTO `contact` VALUES ('1', '湖北康泰化成医疗管理有限公司', 'Hubei Kangtai Hua Cheng Medical Management Co.,Ltd.', '027-87366568', '593970826@qq.com', 'http://www.kthcyl.com', '武汉市武昌区汉街总部国际F座704-706室');
COMMIT;

-- ----------------------------
--  Table structure for `image_text`
-- ----------------------------
DROP TABLE IF EXISTS `image_text`;
CREATE TABLE `image_text` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `itext` varchar(1023) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `image_text`
-- ----------------------------
BEGIN;
INSERT INTO `image_text` VALUES ('1', '3', '1', 'images/page/416a61780ce64100acd2843e5b24b7a8.jpg', null, '湖北肾畅泰康医疗科技有限公司，是一家专注于血液透析领域投资、运营和管理的公司.\n我们依托于湖北康泰化成医疗管理有限公司，凭借着集团公司医疗管理的丰富经验，配合国内顶尖的高素质专业人才 ，将完善的血液透析医疗服务提供给肾病患者，将血液透析整体解决方案提供给各大医疗机构。\n我们是独立血透中心的投资者和经营者，我们是血透整体解决方案的提供者，我们是肾畅医疗。'), ('2', '3', '2', 'images/page/d7e2b54f107143a6a77669b3fe209fee.jpg images/page/3f8418515fcd4a498fdd9367f04c8b5d.jpg', null, '我们为患者和医疗机构提供最专业最优质的服务，是肾畅医疗存在的价值，而服务体系的专业与完善，更是我们时刻谨记在心的责任。\n我们是一群有着专业技能的团队，我们的队伍中有着资深的技术能力带头人，更重要的是我们 还是一群有着梦想的群体，正是因为有了梦想，我们用更多的行动去证明自己。\n我们的使命是，通过优化血透中心临床工作流程，建立标准的作业程序，提高服务质量，增加服务成本的有效性 ，并且不断提高透析者的透析质量和生活品质。'), ('3', '10', '1', null, '系统简介', '我们拥有一套完善的透析信息化管理系统，涉及到的内容包含了透析的过程中的每个小的过程域，用细致的服务管理来给用户提供一个有保证的透析服务。\n    系统中有六大管理内容：检查管理、偷透析管理、费用管理、数据管理、系统管理和患者管理，通过这些数据来对患者的实时信息进行监控和管理，从而给患者提供舒适安心的资料体验，这样也更能有利于患者的恢复。\n\n     除了上述的溜达系统的管理功能之外，我们还有一些辅助管理功能，比如有透析医嘱、透析记录、透析日程表、透析准备、透析月报等，让患者更详细清楚的了解到自己的治疗情况。另外还有确认处理结果、药剂透析汇总、透析记录自动获取、透析状态远程监控、医生护士值班表、信息上报以及耗材管理等，这样来协助各项工作的顺利开展。'), ('4', '10', '2', '/images/page/ce47f903f7ca4b5991eee1993ff29b52.jpg', '系统亮点', '我们的血透信息化管理系统除了具有上述的完善的各项功能之外，还具有一下的一些亮点。\n     1、无纸化：整个治疗过程基本上做到了无纸化的操作\n\n     2、精准化：各项库存管理提供精准的数据\n\n     3、实时化：在整个系统的监控过程中都保证数据的实时性\n\n     4、自动化：在很多数据的采集过程中都是自动进行，无需人工参与\n\n     5、弹性化：根据具体的病房使用情况来进行具体的安排，具有很强的弹性空间\n\n     6、云端化：信息上传到云端，更便于即时掌握和管控\n\n   如下图所示：'), ('5', '12', '1', '/images/page/1af4b165bd1947a5924319848e14c025.jpg', '医院简介', '嘉鱼县康泰医院始建于2004年10月，是咸宁市第一所民营非营利性综合性二级医院。医院占地面积6000平方米，建筑面积15000平方米，是职工 医保、居民医保、合作医疗、民政优抚、特殊慢性病、人寿保险、工伤保险等定点医疗机构。\n\n    医院现在开放床位200张；设有临床、医技、行政、后勤科室38个；现有员工250人，专业技术人员190人（其中 具有高中、中级专业技术人员100余人）；年门诊急诊量达到10万余人次，年出院量达到8000余人次，年手术量达到2000余台次。'), ('6', '12', '2', '/images/page/3601d417a29246e1bd36ba3c887fc887.jpg', '专家教授简介', '十年来，医院始终坚持\"以病人为中心\"的服务理念，不断提高服务质量、加强医疗安全，努力提高患者满意度，构建和谐医患关系。\n\n    医院相继获得\"咸宁市民营医院\'三好一满意\'活动先进单位\"、\"价格诚信示范单位\"、\"白内障复明工程协助单位\"、 \"咸宁市巾帼文明示范岗\"、\"咸宁市医疗质量荆楚行先进单位\"等荣誉称号。\n\n    2011年10月又被中国医院协会民营医院管理分会、卫生部医院管理研究所授予\"全国诚信民营医院\"荣誉称号。 2012年顺利通过市医院等级评审委员会验收，于2013年被授予二级乙等综合医院称号。');
COMMIT;

-- ----------------------------
--  Table structure for `info_news`
-- ----------------------------
DROP TABLE IF EXISTS `info_news`;
CREATE TABLE `info_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `content` varchar(1023) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `info_news`
-- ----------------------------
BEGIN;
INSERT INTO `info_news` VALUES ('1', '2018高考第一天', '2018高考第一天本公司带避暑清凉药去守望考生', '高考 热 武汉', '2018-06-07', '2018年武汉高考第一天，很热。本公司华总代领312全体成员前往湖北省实验中学看望该校考生，免费提供避暑良药。'), ('2', 'fdfsdfsdf', 'fsdfdsf', 'sfdfdsfd', '2018-06-08', 'ghfhg');
COMMIT;

-- ----------------------------
--  Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `content` varchar(1023) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `email` varchar(127) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `mname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `module`
-- ----------------------------
BEGIN;
INSERT INTO `module` VALUES ('1', '关于肾肠'), ('2', '解决方案'), ('3', '血透中心'), ('4', '最新资讯'), ('5', '健康宣教'), ('6', '联系我们');
COMMIT;

-- ----------------------------
--  Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `create_at` date DEFAULT NULL,
  `image_url` varchar(1023) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `page`
-- ----------------------------
BEGIN;
INSERT INTO `page` VALUES ('1', 'CSN2017 | 肾脏病学分会学术年会于武汉圆满闭幕', '0', 'CNS2017 肾脏病学分会', '由中华医学会、中华医学会肾脏病学分会主办，湖北省医学会承办的中华医学会肾脏病学分会2017年学术年会在历经4天的学术交流后， 于9月16日在武汉洲际酒店国际会议中心圆满闭幕。', '由中华医学会、中华医学会肾脏病学分会主办，湖北省医学会承办的中华医学会肾脏病学分会2017年学术年会在历经4天的学术交流后，于9月16日在武汉洲际酒店国际会议中心圆满闭幕。\n本次会议设立多个肾脏病领域的学术交流专场，内容涵盖肾脏病预防、治疗、护理等多个方向的发展热点以及近年来本领域取得的最新科研成果和学术成就。在学术的争鸣与思想的碰撞中，推进了我国肾脏病学事业的发展和前行。\n闭幕仪式上，中华医学会肾脏病学分会主任委员余学清教授进行致辞并做会议总结：本次会议注册总人数10766名，正式代表7510名，企业代表3256名。汇集海内外多个国家的肾脏病专家，在参会人数、学术水平及互动交流方面均较往年有所增加。', '2017-09-17', 'images/page/6ae0201f8a6b4e1798aa67a330f4c353.jpg', 'images/page/thumbnail/2299dc594a7e4884b6a91dc58f7fec41.jpg'), ('2', '关于我们', '1', null, null, '医院占地面积2.3万平方米，建筑面积3.4万平米，是二级甲等综合性医院。医院设有临床科室45个，其中内科涵盖呼吸内科、消化内科、神经内科、心血管内科、血液内科、肾病免疫、内分泌科、老年病科、肿瘤内科等专业科室；外科涵盖普通外科、神经外科、骨科、脊柱外科、泌尿外科、男科、肛肠科、肝胆胰腺外科、体表肿物和疝外科、烧伤\\疮疡科、乳腺科、心胸外科、心脏大血管外科等专业科室；还设有妇科、产科、儿科、眼科、耳鼻咽喉头颈外科、口腔科、皮肤科、急诊医学科、康复医学科、中医科、麻醉科、重症医学科等专业科室。其中眼科为区级重点学科；心血管内科、神经内科、泌尿外科、急诊科、儿科、妇产科是院内的重点学科；另设有检验科、超声科、影像科、导管室、功能科、病理科、药剂科等医技科室7个。拥有职能部门25个。', null, 'images/page/about_us.jpg', null), ('3', '联系我们', '2', null, null, null, null, null, null), ('4', '肾友会活动——两岸携手，共抗肾病（延吉泌尿肾病医院）', '0', '肾友会 活动', '近日，延边州首家社会办医血液透析中心——延吉泌尿肾病医院正式投入使用，该项目总投资1.5亿元， 是延边州规模最大的非公医疗机构。杏泰医疗有幸参与其中，与香港远东国际医疗投资集团合作， 力求为延边的患者提供更好的医疗服务', '近日，在延吉举办的“吉林省延边地区海峡两岸首届血液透析交流会暨首届肾友联谊会”上，延边州首家社会办医血液透析中心——延吉泌尿肾病医院正式投入使用，该项目总投资1.5亿元，是延边州规模最大的非公医疗机构，可同时接纳200-300名尿毒症血液透析患者。该项目是在延吉市及延边州政府的支持和督导以及延吉市医院的鼎力帮扶下创立的，杏泰医疗有幸参与其中，与香港远东国际医疗投资集团合作，力求为延边的患者提供更好的医疗服务。\n日本原装进口的东丽血液透析设备；水处理设备采用台湾莱特大型水处理机，属于国际级领先的水处理设备，以保证患者透析用水的安全，达到超纯透析。血透室内还专设了小手术室，供插管及内瘘手术用。血液透析中心采用国内通行的每周两次血透和一次血滤相结合的治疗方案，让每个患者都得到高品质的服务。\n延边州政协副主席马景峰出席了启动仪式并为活动剪彩。马主席表示，延吉泌尿肾病医院血液净化中心项目启动是延边医疗卫生战线的一件喜事，为延边医疗卫生事业注入新的活力，为推进社会资本办医、完善医疗卫生事业、丰富医疗卫生服务产业起到积极的影响。延吉泌尿肾病医院院长宋俊军还介绍说，血液净化中心通过与台湾专家的交流学习，利用先进的医疗设备、完善的服务功能、优良的透析技术，为我州血透患者提供更好的医疗服务。\n启动仪式之后，“吉林省延边地区海峡两岸首届血液透析交流会暨首届肾友联谊会”在延边白山大厦正式开始。台湾长庚医院肾脏科主任陈右明教授为来到现场的200多位肾友和家属做了题为“血液透析急性并发症的防治”、“提高慢性肾脏病患者的生存质量”的讲座，向肾友们讲解了台湾针对血液透析患者并发症的管理理念和防治的方式。\n随后，浙江省中医院血液透析科护士长杨希老师为肾友们讲解了终末期肾病长期透析并发症的防治和饮食方面的注意事项等内容，并向肾友们详细阐述了充分透析的必要性，让肾友们认识和了解优质透析的方法和注意事项。\n活动过程中，两位专家与肾友们进行了面对面的交流，针对大家在治疗和生活当中遇到的问题和困惑给出了解答，帮助大家树立了治疗的信心。同时还向肾友们提供了免费的矿泉水、食物、牛奶、免费体检卡和肾友知识宣传手册，并赠送了护理小礼品等。\n心系两岸，关爱透析，我们将以先进的硬件设备、优质的服务以及一流的就医环境为肾友提供一个温馨、舒适、安全、规范的就医场所。', '2018-06-09', 'images/page/6ae0201f8a6b4e1798aa67a330f4c353.jpg', 'images/page/thumbnail/722f5d5b2a7d4d539814ead6d83f68ab.jpg'), ('5', '健康宣教', '11', null, '血透病人常用药物知识简介抗凝剂：如肝素，主要的作用是使血液透析正常运行，并且不影响透析膜的生物相容性， 不影响全身凝血系统，避免出血并发症发生，主要不良反应是用药过多导致自发性出血，如皮下淤血、血肿等， 患者首先应准确测量体重，这样能使医生根据体重正确使用甘肃两，另外有出血时，如口腔出血、血尿、便血、黑...', '健康宣教内容_含格式文本', '2017-06-11', null, 'images/page/thumbnail/128bd2b645e54557b46391f443c1e645.jpg'), ('6', '健康护理', '11', null, '平日皮肤的护理洗澡时不要将肥皂直接涂在皮肤上，洗完澡后可擦拭乳液剪短指甲可避免抓破皮肤， 预防感染局部瘙痒时可用冰敷或涂些清凉油若皮肤瘙痒难耐时，请医师开口服药或外用药瘙痒厉害时， 注意检查血液钙磷及甲状腺激素水平以维持正常透析病人如何纾解情绪压力当意志消沉，心情沮丧时， 可将内心的感受表达出来，以减轻内...', '健康宣教内容_含格式文本', '2018-06-11', null, 'images/page/thumbnail/8c9c278d312d4afdb88345d5be90e689.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `part`
-- ----------------------------
DROP TABLE IF EXISTS `part`;
CREATE TABLE `part` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pname` varchar(63) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `part`
-- ----------------------------
BEGIN;
INSERT INTO `part` VALUES ('0', '5', '新闻', '最近相关新闻'), ('1', '1', '关于我们', null), ('2', '6', '联系我们', null), ('3', '1', '关于肾畅', null), ('4', '1', '肾畅实力', null), ('5', '1', '肾畅文化', null), ('6', '1', '社会责任', null), ('7', '2', '设计规划', null), ('8', '2', '市场营销', null), ('9', '2', '人员培训', null), ('10', '2', '信息化系统', null), ('11', '5', '健康宣教', null), ('12', '3', '嘉鱼康泰血透中心', null), ('13', '3', '通山康泰血透中心', null), ('14', '3', '阳新肾畅血透中心', null), ('15', '3', '崇仁肾畅血透中心', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
