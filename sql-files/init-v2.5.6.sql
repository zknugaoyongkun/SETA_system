DELETE FROM anouncement;
DELETE FROM message;
DELETE FROM homework_post_floor;
DELETE FROM group_post_floor;
DELETE FROM homework_post;
DELETE FROM group_post;
DELETE FROM course_rule;
DELETE FROM hw_result;
DELETE FROM homework;
DELETE FROM study_group;
DELETE FROM attend;
DELETE FROM class;
DELETE FROM student_info;
DELETE FROM student;
DELETE FROM course;
DELETE FROM teacher_info;
DELETE FROM teacher;

INSERT INTO `teacher` (`tid`, `username`,`password`, `verified_email`, `verified_phone`,`name`, `gender`, `college`, `department`, `position`, `education`, `direction`, `past_evaluation`, `desc_achive`, `desc_teach_type`, `desc_publish`, `desc_honor`, `desc_more`) VALUES
(1, 're_xw', 're_xw', 0, 0, '邢卫', 'M', '茶学院', '计算机科学与技术', '系主任', '教授', '软件开发', '高质量', 'IEEE论文10000篇', '风趣幽默', '《成为系主任的一百种方法》', '“竺可祯和平奖”，“周树人杯作文大赛冠军”', '好好学习，天天向上！'),
(2, 'rem_jb', 'rem_jbhhh', 0, 0,'金波', 'M', '计算机学院', '软件工程', '和蔼可亲的老教授', '教授', '软件管理', '讲不来', 'SRS写报告大赛冠军', '和蔼', '《我还想写100本书》', '“林俊杰歌唱大赛第二名”', '全都怪我，不该沉默时沉没'),
(3, 'net_qjs', 'rem_jbhhh', 0, 0,'邱劲松', 'F', '计算机学院和茶学院', '计算机网路', '五星好评', '应该教授', '计网', '666', 'web服务器编写大赛冠军', '厉害厉害', '《Http Caching》', '403，无法访问！', '这个东西你给我保存至少20天，不要来问我了');


INSERT INTO `course` (`coid`, `coname`, `textbook`, `cocode`, `cotype`, `semster`, `coname_en`, `college`, `credit`, `week_learn_time`, `weight`, `pre_learning`, `plan`, `background`, `assessment`, `project_info`) VALUES
(1, "软件需求工程", "《软件需求工程实践》", '21010211', "专业课", "秋冬", "SRE", "计算机学院", '4.0', '5', '1.0-1.0', "软件工程基础、C语言程序设计", "函数在一点连续的概念，间断点的分类，单侧连续性。连续函数的四则运算，复合函数的连续性。反函数的连续性（可不证）。初等函数的连续性。利用连续性计算极限。闭区间上连续函数的重要性质：有界性定理、介值定理和最大最小值定理（不证）", "   《微积分》是以函数为研究对象，运用极限手段（如无穷小与无穷逼近等极限过程），分析处理问题的一门数学学科，学时数为80学时。课程将采用讲授与讨论相结合的方法。", "教学内容有：函数极限与连续、一元函数的微分学、一元函数的积分学、无穷级数。", "http://10.2nsun&courseWebsiteId=1ask了都塞一个了肯定就噶似的雾化器的好"),
(2, "茶与自然", "《周易妈妈的话》", 'M1010211', "通识课", "冬", "Tea&Nature", "浙大茶学院", '1.0', '3', '0.0-1.0', "没有哦", "红茶绿茶黑茶大白茶啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", "改配合你演出的我演视而不见改配合你演出的我演视而不见改配合你演出的我演视而不见改配合你演出的我演视而不见改配合你演出的我演视而不见改配合你演出的我演视而不见", "教学内容有：好多好多好多哦", "我没什么好说的"),
(3, "计算机网络", "《网络实践》", '2KFJ0211', "专业课", "秋", "NETWORK", "计算机学院", '2.0', '5', '1.0-1.0', "C语言程序设计，Java语言程序设计", "这里好像应该写得很长...", "代理会做CACHE哦，我要怎么憋出100字啊哈哈哈哈哈开洒机会啊是的噢3のuiu个对啊是孤独日文是怎么打出来的？？？！", "我们就不做多大的要求了，动态媒体JPEG压缩基础", "lksdjfguew=3294832894了都塞一个了肯定就噶似的雾化器的好");

INSERT INTO `student` (`sid`, `username`, `password`, `verified_email`, `verified_phone`) VALUES
(10001, '3140102351', '000', '0', '0'),
(10002, '3140102352', 'e', '0', '0'),
(10003, '3140103303', '456', '0', '0'),
(10004, '3140103214', '123', '0', '0'),
(10005, '3140124985', 'qwi', '0', '0'),
(10006, '31dhsakda6', 'uuhwie', '0', '0');

INSERT INTO `student_info` (`sid`, `name`, `gender`, `college`, `major`) VALUES
(10001, '王二1', 'M', '计算机学院', '软件工程'),
(10002, '张三2', 'M', '计算机学院', '计算机科学'),
(10003, '卢四3', 'F', '农学院', '施肥系'),
(10004, '刘五4', 'F', '茶学院', '养殖系'),
(10005, '边五5', 'F', '激光学院', '天文系'),
(10006, '邢小六6', 'F', '人文学院', '诗歌系');

INSERT INTO `class` (`clid`, `coid`, `tid`, `cltime`, `place`, `student_num`) VALUES
(1, 1, 1, '周五123', '曹光彪101', '50'),
(2, 1, 2, '周一678', '曹西202', '28'),
(3, 1, 1, '周五678', '曹光彪301', '12'),
(4, 2, 2, '不用时间', '30舍232', '20'),
(5, 2, 3, '两年', '中国·北京·三里屯', '42'),
(6, 3, 3, '周日21893', '埃菲尔铁塔', '29');

INSERT INTO `study_group` (`gid`, `clid`, `gname`, `teamleader_id`) VALUES
(1, 1, 'CL1G1菊花队', 10001),
(2, 1, 'CL1G1桃花队', 10002),
(3, 5, 'CL2G3杏花队', 10005),
(4, 5, 'CL2G4烟花队', 10004),
(5, 4, 'CL4G5昙花队', 10006),
(6, 4, 'CL4G6兰花队', 10002);

INSERT INTO `attend` (`sid`, `clid`, `gid`) VALUES
(10001, 1, 1),
(10003, 1, 1),
(10004, 1, 1),
(10002, 1, 2),
(10005, 1, 2),
(10006, 1, 2),
(10002, 5, 3),
(10005, 5, 3),
(10004, 5, 4),
(10001, 4, 5),
(10005, 4, 5),
(10006, 4, 5),
(10002, 4, 6),
(10004, 4, 6);

INSERT INTO `homework` (`hid`, `clid`, `type`, `name`, `end_t`, `hard_ddl`, `begin_t`, `punish_weight`, `score_face`, `score_weight`, `finish_number`, `url`) VALUES
(1, 1, 'O', '第1次个人在线作业', '2016-10-10 00:00:00', '2016-10-11 00:00:00', '2016-09-01 00:00:00', 3, 100, 0.1, 3, 'BUwBCMVIGw4W01TUjBRGP6XSfTEAOMTn'),
(2, 1, 'O', '第2次个人在线作业', '2016-12-12 00:00:00', '2017-01-08 22:22:22', '2016-09-01 00:00:00', 3, 100, 0.1, 2, 'asCldsDF3Tdadsadhsuide286889dy8s'),
(3, 1, 'O', '第3次个人在线作业', '2017-01-22 00:00:00', '2017-01-23 11:11:11', '2016-09-01 00:00:00', 3, 100, 0.2, 1, 'lMBSDJFHGUGzas90asopuHIUADasd87S'),
(4, 1, 'F', '第1次个人离线作业', '2017-01-12 23:59:59', '2017-01-23 11:11:11', '2016-09-01 00:00:00', 3, 100, 0.3, 2, 'zLFncwZjW8MhSOSfAiCGbNQyg1UjTdEX'),
(5, 1, 'G', '第1次小组作业',     '2017-01-20 23:59:59', '2017-01-20 23:59:59', '2016-09-01 00:00:00', 3, 100, 0.3, 1,    'SDINYWEUIY3NS3Y8yna8sdysdIIIw7Y3'),
(6, 2, 'O', '第2——1次个人在线作业', '2017-01-22 00:00:00', '2017-01-23 11:11:11', '2016-09-01 00:00:00', 3, 100, 0.3, 2, 'OI7B6sjduYaiusySHS8D687687s8s68L'),
(7, 3, 'O', '第3——1次个人在线作业', '2017-01-22 00:00:00', '2017-01-23 11:11:11', '2016-09-01 00:00:00', 3, 100, 0.3, 2, 'PSAN8787n8wonLnwue88ey287ey72ey8'),
(8, 4, 'O', '第4——2次个人在线作业', '2017-01-22 00:00:00', '2017-01-23 11:11:11', '2016-09-01 00:00:00', 3, 100, 0.2, 2, '089SADJIsjsiosHIUSHIsiohAII55551');

INSERT INTO `hw_result` (`rid`, `hid`, `sid`, `type`, `uploadtime`, `ifcorrected`, `score`, `comment`, `url`) VALUES
(1 , 1, 10001, 'O', '2016-10-10 10:10:10', 1, 61, "写得什么玩意？？", "Q.XML"),
(2 , 1, 10002, 'O', '2016-10-10 10:10:10', 0, 0, "", "W.XML"),
(3 , 1, 10003, 'O', '2016-10-10 10:10:10', 1, 80, "继续努力2333", "E.XML"),
(4 , 2, 10004, 'O', '2016-10-10 10:10:10', 0, 0, "", "R.XML"),
(5 , 2, 10005, 'O', '2016-10-10 10:10:10', 0, 0, "", "T.XML"),
(6 , 3, 10002, 'O', '2016-10-10 10:10:10', 0, 0, "", "Y.XML"),
(7 , 4, 10002, 'F', '2016-10-10 10:10:10', 0, 0, "", "期末报告提交要求2016.pdf"),
(8 , 4, 10006, 'F', '2016-10-10 10:10:10', 0, 0, "", "KJSADIU898.pdf"),
(9 , 5, 10001, 'G', '2016-10-10 10:10:10', 0, 0, "", "al.rar"),
(10, 6, 10001, 'O', '2016-10-10 10:10:10', 0, 0, "", "U.XML"),
(11, 6, 10001, 'O', '2016-10-10 10:10:10', 0, 0, "", "I.XML"),
(12, 7, 10001, 'O', '2016-10-10 10:10:10', 0, 0, "", "O.XML"),
(13, 7, 10001, 'O', '2016-10-10 10:10:10', 0, 0, "", "P.XML"),
(14, 8, 10001, 'O', '2016-10-10 10:10:10', 0, 0, "", "A.XML"),
(15, 8, 10001, 'O', '2016-10-10 10:10:10', 0, 0, "", "S.XML");

INSERT INTO `course_rule` (`ruleID`, `coid`, `hw_punish_type`, `hw_punish_weight`, `total_material_space`) VALUES
(1, 1, 'N', 3, 1073741824),
(2, 2, 'R', 2, 1073741824),
(3, 3, 'M', 9, 1073741824);

INSERT INTO `homework_post` (`post_id`, `coid`, `tid`, `title`, `post_date`, `frozon`, `hotness`, `content`) VALUES
(1, 1, 1,'第一次作业讨论', '2016-12-02 00:00:00', b'0', '0', '请学术一点'),
(2, 1, 1, '第二次作业', '2016-12-30 00:00:00', b'0', '0', '请认真一点');


INSERT INTO `group_post` (`post_id`, `gid`, `sid`, `title`, `post_date`, `frozon`, `hotness`, `content`) VALUES
(1, 1, 10001,'软需第一次作业好难啊！', '2016-12-15 00:00:00', b'0', '0', '2333333333333333好难好难怎么学'),
(2, 1, 10001,'明天要上课吗', '2016-12-02 00:00:00', b'0', '0', '求问老师明天上不上课xxxxxx'),
(3, 2, 10002,'xxxxxxxxxxxxsssssss', '2016-12-22 00:00:00', b'0', '0', '12345'),
(4, 1, 10001,'这是A', '2016-12-01 00:00:00', b'0', '0', 'AAAAAAAAAAAAAAAAAA'),
(5, 2, 10002,'这是B', '2016-12-10 00:00:00', b'0', '0', 'BBBBBBBBBBBBBBb');


INSERT INTO `group_post_floor` (`floor_id`, `post_id`, `utype`,`tid`,`taid`,`sid`, `post_date`, `content`, `ref_fid`, `ref_count`) VALUES
(1, 1, 'T', 1, null, null, '2016-12-29 00:00:00', '回去认真看看教材怎么说的', null, 0),
(2, 1, 'S', null, null, 10001, '2016-12-30 00:00:00', '老师我还没买教材', 1, 0);

INSERT INTO `homework_post_floor` (`floor_id`, `post_id`, `utype`,`tid`,`taid`,`sid`, `post_date`, `content`, `ref_fid`, `ref_count`) VALUES
(1, 1, 'S',null,null,10002, '2016-12-23 00:00:00', '第一小题什么意思', null, 0),
(2, 1, 'S',null,null,10001, '2016-12-29 00:00:00', 'AAAAXXXXX', 1, 0);

INSERT INTO `anouncement` (`anid`, `tid`, `coid`, `adate`, `title`, `content`, `type`, `read_count`) VALUES
(1, 1, 1, '2016-12-02 00:00:00', '课程时间变了', '注意注意', 'e', 0),
(2, 1, 1, '2016-12-08 00:00:00', '课程资料已经上传', '同学们快下载', 'n', 0),
(3, 2, 1, '2016-12-02 00:00:00', '很高兴', '我成为了你的老师啊哈哈哈哈哈哈', 'n', 0),
(4, 2, 2, '2016-12-02 00:00:00', '课程时间变了', '注意注意', 'e', 0),
(5, 3, 2, '2016-12-02 00:00:00', '课程时间变了', '注意注意', 'e', 0),
(6, 3, 3, '2016-12-02 00:00:00', '课程资料已经上传', '同学们快下载', 'e', 0);

INSERT INTO `message` (`mid`, `refer_mid`,`fromid`,`toid`,`fromtype`,`totype`,`mdate`, `content`, `title`, `ifread`)
	VALUES (1, null, 10001,1,0,1, '2016-12-01 00:00:00', '老师我忘记密码了', '老师求重置密码', b'1'),
	       (2, 1,  1,10001,1,0,'2016-12-07 00:00:00', '那你是怎么发我信息的？', '蛤蛤蛤？', b'1'),
	       (3, 2,  10001,1,0,1, '2016-12-07 00:00:00', '啊 对哦', '23333', b'1');
