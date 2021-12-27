/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : book_manager

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 21/11/2021 19:28:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookAuthor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookPrice` decimal(10, 2) NOT NULL,
  `bookTypeId` int(11) NOT NULL,
  `bookDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍描述',
  `isBorrowed` tinyint(4) NOT NULL COMMENT '1表示借出，0表示已还',
  `bookImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍图片',
  PRIMARY KEY (`bookId`) USING BTREE,
  INDEX `fk_book_info_book_type_1`(`bookTypeId`) USING BTREE,
  CONSTRAINT `book_info_ibfk_1` FOREIGN KEY (`bookTypeId`) REFERENCES `book_type` (`bookTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, 'Java程序设计', '耿祥义', 55.50, 1, '《Java2实用教程》不仅可以作为高等院校相关专业的教材，也适合自学者及软件开发人员参考使用。Java是一种很优秀的编程语言，具有面向对象、与平台无关、安全、稳定和多线程等特点，是目前软件设计中极为健壮的编程语言。Java语言不仅可以用来开发大型的应用程序，而且特别适合于在Internet上应用开发，Java已成为网络时代最重要的编程语言之一。', 0, 'http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111112241065.jpg');
INSERT INTO `book_info` VALUES (2, '红楼梦', '曹雪芹', 36.00, 3, '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面。', 0, 'http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111112140064.jpg');
INSERT INTO `book_info` VALUES (4, '西游记', '吴承恩', 60.00, 3, '《西游记》主要描写的是孙悟空保唐僧西天取经，历经九九八十一难的故事。唐僧取经是历史上一件真实的事。大约距今一千三百多年前，即唐太宗贞观元年（627），年仅25岁的青年和尚玄奘离开京城长安，只身到天竺（印度）游学。他从长安出发后，途经中亚、阿富汗、巴基斯坦，历尽艰难险阻，最后到达了印度。他在那里学习了两年多，并在一次大型佛教经学辩论会任主讲，受到了赞誉。', 0, 'http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111112242308.jpg');
INSERT INTO `book_info` VALUES (5, '水浒传', '施耐庵', 50.60, 3, '《水浒传》是我国第一部以农民起义为题材的长篇章回小说，是我国文学史上一座巍然屹立的丰碑，也是世界文学宝库中一颗光彩夺目的明珠。数百年来，它一直深受我国人民的喜爱，并被译为多种文字，成为我国流传最为广泛的古代长篇小说之一。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228386001水浒传.jpg');
INSERT INTO `book_info` VALUES (12, '三国演义', '罗贯中', 42.00, 3, '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。', 0, 'http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111112143793.jpg');
INSERT INTO `book_info` VALUES (13, '三体（全集）', '刘慈欣', 92.00, 4, '三体三部曲 (《三体》《三体Ⅱ·黑暗森林》《三体Ⅲ·死神永生》) ，原名“地球往事三部曲”，是中国著名科幻作家刘慈欣的首个长篇系列。', 0, 'http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111112143943.jpg');
INSERT INTO `book_info` VALUES (14, '天龙八部', '金庸', 58.00, 6, '天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等 几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作品。', 0, 'http://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/img/202111112143125.jpg');
INSERT INTO `book_info` VALUES (27, '明朝那些事儿', '当年明月', 399.00, 2, '国民史学读本，持续风行十余年，畅销3000万册，全本白话正说明朝大历史', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228686000明朝那些事儿.jpg');
INSERT INTO `book_info` VALUES (28, '沙丘', 'Frank Herbert', 394.90, 4, '每个“不可不读”的书单上都有《沙丘》！伟大的《沙丘》六部曲中文版初次完整出版！人类每次正视自己的渺小，都是自身的一次巨大进步。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228758971沙丘.jpg');
INSERT INTO `book_info` VALUES (30, 'C Primer Plus', '史蒂芬·普拉达', 90.50, 1, 'C语言入门教程，C语言程序设计籍，程序员的启蒙教材，针对C11标准库更新', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637224588022C.jpg');
INSERT INTO `book_info` VALUES (31, '计算机网络：自顶向下方法', 'James，F.Kurose', 73.40, 1, '以自顶向下的方式系统展现计算机网络的原理与结构，广受欢迎的计算机网络教材。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637230839418计算机网络.jpg');
INSERT INTO `book_info` VALUES (32, '围城', '钱钟书', 30.20, 3, '《围城》是一幅栩栩如生的世井百态图，人生的酸甜苦辣千般滋味均在其中得到了淋漓尽致的体现。钱钟书先生将自己的语言天才并入极其渊博的知识，再添加上一些讽刺主义的幽默调料，以一书而定江山。《围城》显示给我们一个真正的聪明人是怎样看人生，又怎样用所有作家都必得使用的文字来表述自己的“观”和“感”的。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228900554围城.jpg');
INSERT INTO `book_info` VALUES (33, '平凡的世界', '路遥', 101.80, 3, '人生路遥，但没有白走的路；在平凡的世界里，照样可以活得丰富而精彩。《平凡的世界》激励了一代又一代青年人向上向善、自强不息，产生了广泛而深远的社会影响。读者从路遥身上获取励志的力量，正在于他的作品始终充盈着奋斗、激扬着拼搏，这是作品的魂魄，更是他人生的真实写照。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228780984平凡的世界.jpg');
INSERT INTO `book_info` VALUES (34, '哈利波特', 'J.K.罗琳', 648.00, 6, '本书生动幽默，感人至深，而罗琳的创作经历就像这个故事本身一样令人印象深刻。与哈利·波特一样，J.K.罗琳的内心深藏着魔法。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228304016哈利波特.jpg');
INSERT INTO `book_info` VALUES (36, '新概念英语1', '亚历山大', 41.85, 7, '全新的教学理念、有趣的课文内容、全面的技能训练，提供完整、经过实践检验的英语学习体系！', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228199551新概念英语1.jpg');
INSERT INTO `book_info` VALUES (37, '新概念英语2', '亚历山大', 47.25, 7, '全新的教学理念、有趣的课文内容、全面的技能训练，提供完整、经过实践检验的英语学习体系！', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228195386新概念英语2.jpg');
INSERT INTO `book_info` VALUES (38, '新概念英语3', '亚历山大', 46.50, 7, '全新的教学理念、有趣的课文内容、全面的技能训练，提供完整、经过实践检验的英语学习体系！', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228191325新概念英语3.jpg');
INSERT INTO `book_info` VALUES (39, '新概念英语4', '亚历山大', 45.50, 7, '全新的教学理念、有趣的课文内容、全面的技能训练，提供完整、经过实践检验的英语学习体系！', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637228187117新概念英语4.jpg');
INSERT INTO `book_info` VALUES (40, '数据结构', '严蔚敏', 39.80, 1, '计算机科学教材', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637227911889数据结构.jpg');
INSERT INTO `book_info` VALUES (41, '数据库系统概论', '王珊，萨师煊', 42.00, 1, '数据库经典教材', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637227861672数据库.jpg');
INSERT INTO `book_info` VALUES (43, '献给阿尔吉侬的花束', '丹尼尔·凯斯', 36.00, 4, '声称能改造智能的科学实验在白老鼠阿尔吉侬身上获得了突破性的进展，下一步急需进行人体实验。个性和善、学习态度积极的心智障碍者查理·高登成为最佳人选。手术成功后，查理的智商从68跃升为185，然而那些从未有过的情绪和记忆也逐渐浮现。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637335107095献给阿尔吉侬的花束.jpg');
INSERT INTO `book_info` VALUES (44, '银河帝国1', 'Foundation', 36.50, 4, '人类蜗居在银河系的一个小角落——太阳系，在围绕太阳旋转的第三颗 行星上，生 活了十多万年之久。\n人类在这个小小的行星（他们称之为“地球”）上，建立了两百多个不同的行政区域（他们称之为“国家”），直到地球上诞生了第一个会思考的机器人。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637335181577银河帝国.jpg');
INSERT INTO `book_info` VALUES (45, '中国历代政治得失', '钱穆', 12.00, 2, '《中国历代政治得失》为作者的专题演讲合集，分别就中国汉、唐、宋、明、清五代的政府组织、百官职权、考试监察、财经赋税、兵役义务等种种政治制度作了提要勾玄的概观与比照，叙述因革演变，指陈利害得失。既高屋建瓴地总括了中国历史与政治的精要大义，又点明了近现代国人对传统文化和精神的种种误解。言简意赅，语重心长，实不失为一部简明的“中国政治制度史”。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229238833中国历代政治得失.jpg');
INSERT INTO `book_info` VALUES (46, '万历十五年', '黄仁宇', 18.00, 2, '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，表面看来虽似末端小节，但实质上却是以前发生大事的症结，也是将在以后掀起波澜的机缘。在历史学家黄仁宇的眼中，其间的关系因果，恰为历史的重点，而我们的大历史之旅，也自此开始……', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229292783万历十五年.jpg');
INSERT INTO `book_info` VALUES (47, '红星照耀中国', '埃德加·斯诺', 43.00, 2, '《红星照耀中国》（曾译《西行漫记》）自1937年初版以来，畅销至今，而董乐山译本已经是今天了解中国工农红军的经典读本。本书真实记录了斯诺自1936年6月至10月在中国西北革命根据地进行实地采访的所见所闻，向全世界报道了中国和中国工农红军以及许多红军领袖、红军将领的情况。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229348394红星.jpg');
INSERT INTO `book_info` VALUES (48, '鹿鼎记', '金庸', 96.00, 6, '这是金庸先生最后一部小说，也是登峰造极之作，是金大侠自言最喜欢之大作。 这部小说讲的是一个从小在扬州妓院长大的小孩韦小宝，他不会任何武功，却因机缘巧合闯入了江湖，并凭其绝伦机智周旋于江湖各大帮会、皇帝、朝臣之间并奉旨远征云南、俄罗斯之故事，书中充满精彩绝倒的对白及逆思考的事件，令人于捧腹之余更进一步深思其口才与机敏。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229559975鹿鼎记.jpg');
INSERT INTO `book_info` VALUES (49, '追风筝的人', '卡勒德·胡赛尼', 29.00, 6, '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。\n成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽最后一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229535609追风筝的人.jpg');
INSERT INTO `book_info` VALUES (50, '白鹿原', '陈忠实', 39.00, 3, '在从清末民初到建国之初的半个世纪里，一阵阵狂风掠过了白鹿原上空，而每一次的变动都震荡着它的内在结构：打乱了再恢复，恢复了再打乱，细腻地反映出白姓和鹿姓两大家族祖孙三代的恩怨纷争。陈忠实先生在这里，人物的命运是纵线，百回千转，社会历史的演进是横面，愈拓愈宽，传统文化的兴衰则是全书的精神主体，以至人、社会历史、文化精神三者之间相互激荡，相互作用，共同推进了作品的时空，在我们眼前铺开了一轴恢宏的、动态的、极富纵深感的关于我们民族灵魂的现实主义的画卷。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229617573白鹿原.jpg');
INSERT INTO `book_info` VALUES (51, '巨人的陨落', '肯·福莱特', 35.50, 6, '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴情的德国特工… 从充满灰尘和危险的煤矿到闪闪发光的皇室宫殿，从代表着权力的走廊到爱恨纠缠的卧室，五个家族迥然不同又纠葛不断的命运逐渐揭晓，波澜壮阔地展现了一个我们自认为了解，但从未如此真切感受过的20世纪。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229745368巨人的陨落.jpg');
INSERT INTO `book_info` VALUES (52, '白夜行', '东野圭吾', 29.80, 6, '“只希望能手牵手在太阳下散步”，这个象征故事内核的绝望念想，有如一个美丽的幌子，随着无数凌乱、压抑、悲凉的故事片段像纪录片一样一一还原：没有痴痴相思，没有海枯石烂，只剩下一个冰冷绝望的诡计，最后一丝温情也被完全抛弃，万千读者在一曲救赎罪恶的凄苦爱情中悲切动容……', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229775159白夜行.jpg');
INSERT INTO `book_info` VALUES (53, '英语语法新思维', '张满胜', 39.00, 7, '2003年，我受邀在《新东方英语》杂志开辟语法专栏“英语语法新思维”。转眼间，十多年过去了。让我没有想到的是，我就这样一月一篇专栏文章坚持写到了现在，期间从未中断过。累积下来已写完100多篇。这些文章深受读者喜爱，不断有读者建议将这些文章结集成书出版。如今呈现在大家面前的这本《英语语法新思维——语法难点妙解》就是这些专栏文章的精选。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637229921309语法新思维.jpg');
INSERT INTO `book_info` VALUES (56, 'JavaScript高级程序设计', '尼古拉斯·泽卡斯', 99.00, 1, '本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637334053325javascript.jpg');
INSERT INTO `book_info` VALUES (57, '活着', '余华', 20.00, 3, '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637334100418活着.jpg');
INSERT INTO `book_info` VALUES (58, '挑战程序设计竞赛', '秋叶拓哉 /岩田阳一/北川宜稔', 79.00, 1, '世界顶级程序设计高手的经验总结\n【ACM-ICPC全球总冠军】巫泽俊主译\n日本ACM-ICPC参赛者人手一册\n本书对程序设计竞赛中的基础算法和经典问题进行了汇总，分为准备篇、初级篇、中级篇与高级篇4章。作者结合自己丰富的参赛经验，对严格筛选的110 多道各类试题进行了由浅入深、由易及难的细致讲解，并介绍了许多实用技巧。每章后附有习题，供读者练习，巩固所学。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637334263096挑战.jpg');
INSERT INTO `book_info` VALUES (59, '人类简史', '尤瓦尔·赫拉利', 68.00, 2, '十万年前，地球上至少有六种不同的人\n但今日，世界舞台为什么只剩下了我们自己？\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\n从认知革命、农业革命，到科学革命、生物科技革命，\n我们如何登上世界舞台成为万物之灵的？', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637334357792人类简史.jpg');
INSERT INTO `book_info` VALUES (61, '中国大历史', '黄仁宇', 19.00, 2, '中国历史典籍浩如烟海，常使初学者不得其门而入。作者倡导“大历史”（macro-history），主张利用归纳法将现有史料高度压缩，先构成一个简明而前后连贯的纳领，然后在与欧美史比较的基础上加以研究。本书从技术的角度分析中国历史的进程，着眼于现代型的经济体制如何为传统社会所不容，以及是何契机使其在中国土地上落脚。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637334601318大理市.jpg');
INSERT INTO `book_info` VALUES (62, '危机与重构', '李碧妍', 79.80, 2, '“安史之乱”无疑是中国中古史上的大事关键，但相对于其重要性，既往的研究却还远远不够。本书从政治地理学切入，通过对唐代后半期 最为重要的政治群体之一——藩镇的实证性考 察，对唐帝国得以成功度过“安史之乱”这一中古史上之剧变，并在由此创发的新兴的藩镇体制下，重建其政治权威与统治力的问题，给出了一个合理的历史解释，为我们重新认识中古史提供了一条重要的线索。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637334747447危机与重构.jpg');
INSERT INTO `book_info` VALUES (63, '笑傲江湖', '金庸', 76.80, 6, '《笑傲江湖》是中国现代作家金庸创作的一部长篇武侠小说，1967年开始创作并连载于《明报》，1969年完成。这部小说通过叙述华山派大弟子令狐冲的江湖经历，反映了武林各派争霸夺权的历程。作品没有设置时代背景，“类似的情景可以发生在任何朝代”，折射出中国人独特的政治斗争状态，同时也表露出对斗争的哀叹，具有一定的政治寓意。小说情节跌宕起伏，波谲云诡，人物形象个性鲜明，生动可感。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637335240088笑傲江湖.jpg');
INSERT INTO `book_info` VALUES (64, '东晋门阀政治', '田余庆', 49.00, 2, '本书以丰富的史料和周密的考证分析，对中国中古历史中的门阀政治问题作了再探索，认为中外学者习称的魏晋南北朝门阀政治，实际上只存在于东晋一朝；门阀政治是皇权政治在特定历史条件下出现的变态，具有暂时性和过渡性，其存在形式是门阀士族与皇权的共治。本书不落以婚宦论门阀士族的窠臼，对中国中古政治史中的这一重要问题提供了精辟的见解，具有很高的学术价值。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637335543310东晋.jpg');
INSERT INTO `book_info` VALUES (65, '激荡三十年', '吴晓波', 32.00, 2, '尽管任何一段历史都有它不可替代的独特性，可是，1978年—2008年的中国，却是最不可能重复的，在一个拥有近13亿人口的大国里，僵化的计划经济体制日渐瓦解了，一群小人物把中国变成了一个巨大的试验场，它在众口睽睽之下，以不可逆转的姿态向商业社会转轨……', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637335658056激荡.jpg');
INSERT INTO `book_info` VALUES (66, '百年孤独', 'Cien años de soledad', 39.50, 3, '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637335801222百年孤独.jpg');
INSERT INTO `book_info` VALUES (67, '长夜难明', '紫金陈', 42.00, 6, '麦家、鹦鹉史航、马伯庸、雷米、周浩晖都推崇的作家\n社会派悬疑推理大神紫金陈“推理之王”系列第3部', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637336029232长夜难明.jpg');
INSERT INTO `book_info` VALUES (68, '基督山伯爵', '大仲马', 43.90, 6, '小说以法国波旁王朝和七月王朝两大时期为背景，描写了一个报恩复仇的故事。法老号大副唐泰斯受船长的临终嘱托，为拿破仑送了一封信，受到两个对他嫉妒的小人的陷害，被打入死牢，狱友法里亚神甫向他传授了各种知识，还在临终前把一批宝藏的秘密告诉了他。他设法越狱后找到了宝藏，成为巨富。从此他化名为基督山伯爵，经过精心策划，报答了他的恩人，惩罚了三个一心想置他于死地的仇人。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637336102114基督山伯爵.jpg');
INSERT INTO `book_info` VALUES (69, '福尔摩斯探案全集', '柯南·道尔', 53.00, 6, '最经典的群众出版社的翻译版本，一经出版，立即风靡成千上万的中国人。离奇的情节，扣人的悬念，世界上最聪明的侦探，人间最诡秘的案情，福尔摩斯不但让罪犯无处藏身，也让你的脑细胞热情激荡，本套书获第一届全国优秀外国文学图书奖。', 0, 'https://wangpeng-imgsubmit.oss-cn-hangzhou.aliyuncs.com/BookManager/pictures/1637336151137福尔摩斯.jpg');

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `bookTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `bookTypeName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookTypeDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍类型描述',
  PRIMARY KEY (`bookTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (1, '计算机科学', '计算机相关');
INSERT INTO `book_type` VALUES (2, '历史', '历史相关');
INSERT INTO `book_type` VALUES (3, '文学', '文学相关');
INSERT INTO `book_type` VALUES (4, '科幻', '科幻相关');
INSERT INTO `book_type` VALUES (6, '小说', '小说相关');
INSERT INTO `book_type` VALUES (7, '外语', '外语相关');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `borrowId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `borrowTime` datetime NOT NULL,
  `returnTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`borrowId`) USING BTREE,
  INDEX `fk_borrow_user_1`(`userId`) USING BTREE,
  INDEX `fk_borrow_book_info_1`(`bookId`) USING BTREE,
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `book_info` (`bookId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (26, 11, 2, '2021-11-18 14:24:06', '2021-11-18 16:07:03');
INSERT INTO `borrow` VALUES (27, 11, 1, '2021-11-18 15:01:31', '2021-11-18 16:07:06');
INSERT INTO `borrow` VALUES (28, 11, 4, '2021-11-18 15:22:05', '2021-11-18 16:07:08');
INSERT INTO `borrow` VALUES (30, 14, 2, '2021-11-18 16:52:05', '2021-11-19 20:55:10');
INSERT INTO `borrow` VALUES (32, 14, 4, '2021-11-18 16:52:17', '2021-11-18 16:52:41');
INSERT INTO `borrow` VALUES (38, 14, 1, '2021-11-19 22:19:43', '2021-11-19 22:19:48');
INSERT INTO `borrow` VALUES (39, 14, 1, '2021-11-19 22:46:14', '2021-11-19 22:46:18');
INSERT INTO `borrow` VALUES (40, 14, 1, '2021-11-19 22:57:21', '2021-11-19 22:57:26');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassword` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isAdmin` tinyint(4) NOT NULL COMMENT '1是管理员，0非管理员',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 1);
INSERT INTO `user` VALUES (2, '李明', '123456', 0);
INSERT INTO `user` VALUES (11, 'zhang', '123', 0);
INSERT INTO `user` VALUES (13, 'zhao', 'abc', 1);
INSERT INTO `user` VALUES (14, 'wangpeng', '123456', 0);

SET FOREIGN_KEY_CHECKS = 1;
