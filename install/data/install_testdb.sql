DROP TABLE IF EXISTS cmseasy_a_attachment;
CREATE TABLE `cmseasy_a_attachment` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(11) default NULL,
  `path` varchar(150) NOT NULL,
  `thumb` varchar(100) default NULL,
  `intro` varchar(100) default NULL,
  `adddate` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  KEY `aid` USING BTREE (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_a_comment;
CREATE TABLE `cmseasy_a_comment` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  `userid` int(11) default NULL,
  `username` varchar(50) default NULL,
  `adddate` datetime default NULL,
  `ip` varchar(20) default NULL,
  `state` tinyint(2) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  KEY `aid` USING BTREE (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_a_rank;
CREATE TABLE `cmseasy_a_rank` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(11) default NULL,
  `catid` int(11) default NULL,
  `typeid` int(11) default NULL,
  `ranks` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `aid` USING BTREE (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_a_vote;
CREATE TABLE `cmseasy_a_vote` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(11) default NULL,
  `titles` text,
  `votes` text,
  `users` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `aid` USING BTREE (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_activity;
CREATE TABLE `cmseasy_activity` (
  `id` int(255) NOT NULL auto_increment,
  `timestamp` int(255) default NULL,
  `operatorid` varchar(255) NOT NULL default '',
  `departmentid` int(10) NOT NULL default '0',
  `status` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_announcement;
CREATE TABLE `cmseasy_announcement` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `content` mediumtext NOT NULL,
  `adddate` datetime default NULL,
  `state` tinyint(2) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_archive;
CREATE TABLE `cmseasy_archive` (
  `aid` int(11) NOT NULL auto_increment,
  `catid` int(6) NOT NULL,
  `typeid` int(6) NOT NULL,
  `title` varchar(60) NOT NULL,
  `tag` varchar(255) default NULL,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `view` int(11) NOT NULL default '0',
  `color` char(20) default NULL,
  `strong` tinyint(1) default '0',
  `toppost` tinyint(1) default '0',
  `font` char(6) default NULL,
  `spid` int(11) default NULL,
  `ip` varchar(20) default NULL,
  `mtitle` varchar(255) default NULL,
  `keyword` varchar(255) default NULL,
  `description` text,
  `listorder` int(11) default NULL,
  `adddate` datetime default NULL,
  `author` varchar(20) default NULL,
  `image` varchar(255) default NULL,
  `thumb` varchar(255) default NULL,
  `state` tinyint(2) default '1',
  `checked` tinyint(2) default '0',
  `introduce` text,
  `introduce_len` int(5) NOT NULL,
  `content` mediumtext,
  `template` varchar(50) default NULL,
  `showform` varchar(50) default NULL,
  `htmlrule` varchar(100) default NULL,
  `ishtml` tinyint(2) default '0',
  `iswaphtml` tinyint(2) default '0',
  `linkto` varchar(100) default NULL,
  `attr1` varchar(20) default NULL,
  `attr2` varchar(20) default NULL,
  `attr3` varchar(20) default NULL,
  `comment_num` int(11) default '0',
  `attachment_id` varchar(50) default NULL,
  `attachment_path` varchar(150) default NULL,
  `grade` tinyint(1) unsigned NOT NULL default '0',
  `pics` text,
  `type` char(10) NOT NULL,
  `province_id` int(3) NOT NULL,
  `city_id` int(3) default NULL,
  `section_id` int(3) default NULL,
  `outtime` DATE NOT NULL,
  `my_size` varchar(100) default NULL,
  `my_zhaopinbumen` varchar(100) default NULL,
  `my_jobtype` varchar(10) default NULL,
  `my_jobtitle` varchar(100) default NULL,
  `my_jobnumber` varchar(100) default NULL,
  `my_jobgender` varchar(10) default NULL,
  `my_jobwork` text,
  `my_jobacademic` varchar(10) default NULL,
  `my_jobage` varchar(100) default NULL,
  `my_jobworkareas` varchar(100) default NULL,
  `my_jobrequirements` text,
  `my_contactname` varchar(100) default NULL,
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `aid` USING BTREE (`aid`),
  KEY `keyword` USING BTREE (`keyword`),
  KEY `title` USING BTREE (`title`),
  KEY `type` USING BTREE (`type`),
  KEY `catid` USING BTREE (`typeid`),
  KEY `typeid` USING BTREE (`catid`),
  KEY `tag` USING BTREE (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_assigns;
CREATE TABLE `cmseasy_assigns` (
  `id` int(255) NOT NULL auto_increment,
  `departmentid` int(255) NOT NULL default '0',
  `operatorid` int(255) NOT NULL default '0',
  `poll` int(255) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_b_arctag;
CREATE TABLE `cmseasy_b_arctag` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(11) default '0',
  `tagid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `aid` (`aid`),
  UNIQUE KEY `arctag` USING BTREE (`aid`,`tagid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_b_area;
CREATE TABLE `cmseasy_b_area` (
  `id` int(6) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `parentid` int(6) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  KEY `name` USING BTREE (`name`),
  KEY `parentid` USING BTREE (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=3373 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_b_category;
CREATE TABLE `cmseasy_b_category` (
  `catid` int(6) NOT NULL auto_increment,
  `parentid` int(6) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `scategory` varchar(50) default NULL,
  `listorder` int(11) default NULL,
  `image` varchar(150) default NULL,
  `meta_title` varchar(255) default NULL,
  `keyword` varchar(150) default NULL,
  `description` text,
  `categorycontent` mediumtext,
  `htmldir` varchar(50) NOT NULL,
  `template` varchar(50) default NULL,
  `listtemplate` varchar(50) default NULL,
  `showtemplate` varchar(50) default NULL,
  `showform` varchar(50) default NULL,
  `templatewap` varchar(50) DEFAULT NULL,
  `listtemplatewap` varchar(50) DEFAULT NULL,
  `showtemplatewap` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) default NULL,
  `listhtmlrule` varchar(100) default NULL,
  `showhtmlrule` varchar(100) default NULL,
  `module` varchar(16) NOT NULL default 'article',
  `isshow` tinyint(2) default '1',
  `ishtml` tinyint(2) default '0',
  `iswaphtml` tinyint(2) default '0',
  `ispages` tinyint(2) default NULL,
  `includecatarchives` tinyint(2) default '0',
  `addarcenable` tinyint(2) default NULL,
  `linkto` varchar(150) default NULL,
  `attr1` varchar(20) default NULL,
  `attr2` varchar(20) default NULL,
  `attr3` varchar(20) default NULL,
  `thumb` varchar(100) default NULL,
  `thumb_width` int(3) default NULL,
  `thumb_height` int(3) default NULL,
  `isnav` tinyint(1) default NULL,
  `ismobilenav` tinyint(1) UNSIGNED NOT NULL default  '1',
  PRIMARY KEY  (`catid`),
  UNIQUE KEY `category` USING BTREE (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_b_special;
CREATE TABLE `cmseasy_b_special` (
  `spid` smallint(5) unsigned NOT NULL auto_increment,
  `title` varchar(80) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL,
  `adddate` int(10) unsigned NOT NULL default '0',
  `listorder` smallint(5) unsigned NOT NULL default '0',
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `order` int(6) default NULL,
  `ishtml` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_b_tag;
CREATE TABLE `cmseasy_b_tag` (
  `tagid` int(11) NOT NULL auto_increment,
  `tagname` varchar(30) default NULL,
  PRIMARY KEY  (`tagid`),
  UNIQUE KEY `tagid` USING BTREE (`tagid`),
  UNIQUE KEY `tagname` USING BTREE (`tagname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_ballot;
CREATE TABLE `cmseasy_ballot` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `type` set('radio','checkbox') NOT NULL default 'radio',
  `num` int(11) unsigned NOT NULL default '0',
  `order` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_archive`;
CREATE TABLE IF NOT EXISTS `cmseasy_bbs_archive` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `replynum` smallint(6) NOT NULL DEFAULT '0',
  `replyid` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `updatetime` int(11) NOT NULL DEFAULT '0',
  `isstop` tinyint(1) NOT NULL DEFAULT '0',
  `recommend` tinyint(1) NOT NULL DEFAULT '0',
  `purview` tinyint(1) NOT NULL DEFAULT '0',
  `noreply` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_category`;
CREATE TABLE IF NOT EXISTS `cmseasy_bbs_category` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `listorder` int(4) NOT NULL,
  `typename` varchar(200) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '这里是专题简介',
  `keyword` varchar(255) NOT NULL DEFAULT '这里是专题关键字',
  `purview` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_label`;
CREATE TABLE IF NOT EXISTS `cmseasy_bbs_label` (
  `lid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `labelname` varchar(80) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_reply`;
CREATE TABLE IF NOT EXISTS `cmseasy_bbs_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '帖子id',
  `tid` smallint(3) NOT NULL COMMENT '回复的子回复，与id对应，当为第一条时，其值为0',
  `username` varchar(30) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `updatetime` int(11) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_chat;
CREATE TABLE `cmseasy_chat` (
  `id` int(255) unsigned NOT NULL auto_increment,
  `sessionid` int(10) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` varchar(200) default NULL,
  `timestamp` int(10) NOT NULL default '0',
  `ip` varchar(20) NOT NULL,
  `departmentid` int(10) default NULL,
  `operatorid` int(10) default NULL,
  `status` tinyint(1) NOT NULL default '0',
  `admin_status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_departments;
CREATE TABLE `cmseasy_departments` (
  `id` int(255) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `visible` int(1) NOT NULL default '1',
  `order` int(255) NOT NULL default '1',
  `email` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_detail;
CREATE TABLE `cmseasy_detail` (
  `id` int(255) NOT NULL auto_increment,
  `chatid` int(255) NOT NULL default '0',
  `detail` text NOT NULL,
  `who_witter` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_event;
CREATE TABLE `cmseasy_event` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `username` varchar(50) default NULL,
  `ip` varchar(20) default NULL,
  `addtime` int(11) default NULL,
  `event` varchar(30) default NULL,
  `note` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  KEY `user` USING BTREE (`uid`,`username`,`ip`),
  KEY `time` USING BTREE (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_friendlink;
CREATE TABLE `cmseasy_friendlink` (
  `id` int(11) NOT NULL auto_increment,
  `linktype` tinyint(2) default NULL,
  `typeid` tinyint(2) default NULL,
  `name` varchar(60) NOT NULL,
  `listorder` int(11) default NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) default NULL,
  `introduce` text,
  `uid` int(11) default NULL,
  `username` varchar(60) default NULL,
  `adddate` datetime default NULL,
  `hits` int(11) default NULL,
  `state` tinyint(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_guestbook;
CREATE TABLE `cmseasy_guestbook` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime NOT NULL,
  `state` tinyint(2) default '1',
  `guesttel` varchar(50) NOT NULL,
  `guestemail` varchar(50) NOT NULL,
  `guestqq` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `reply` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_linkword;
CREATE TABLE `cmseasy_linkword` (
  `id` int(11) NOT NULL auto_increment,
  `linkword` varchar(255) NOT NULL,
  `linkurl` varchar(255) default NULL,
  `linkorder` int(11) default NULL,
  `linktimes` int(3) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `word` USING BTREE (`linkword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS cmseasy_my_yingpin;
CREATE TABLE `cmseasy_my_yingpin` (
  `fid` int(11) NOT NULL auto_increment,
  `aid` int(11) default NULL,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime default NULL,
  `view` int(11) default '0',
  `state` tinyint(2) default '1',
  `checked` tinyint(2) default '0',
  `ip` varchar(20) default NULL,
  `my_xingming` varchar(100) default NULL,
  `my_xingbie` varchar(10) default NULL,
  `my_nianliang` varchar(100) default NULL,
  `my_minzu` varchar(100) default NULL,
  `my_shengao` varchar(100) default NULL,
  `my_shenfenzheng` varchar(100) default NULL,
  `my_jiguan` varchar(100) default NULL,
  `my_xueli` varchar(10) default NULL,
  `my_zanzhudizhi` varchar(100) default NULL,
  `my_zhuanye` varchar(100) default NULL,
  `my_biyeshijian` datetime default NULL,
  `my_biyeyuanxiao` varchar(100) default NULL,
  `my_waiyujibie` varchar(10) default NULL,
  `my_jisuanji` varchar(10) default NULL,
  `my_zhuanyetechang` varchar(100) default NULL,
  `my_zhicheng` varchar(100) default NULL,
  `my_daiyu` text,
  `my_lianxidianhua` varchar(100) default NULL,
  `my_shouji` varchar(100) default NULL,
  `my_email` varchar(100) default NULL,
  `my_xuexijingli` text,
  `my_gongzuojingli` text,
  `my_gerenjianli` text,
  PRIMARY KEY  (`fid`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_operators;
CREATE TABLE `cmseasy_operators` (
  `id` int(255) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL default '',
  `password` varchar(255) NOT NULL default '',
  `firstname` varchar(255) NOT NULL default '',
  `lastname` varchar(255) NOT NULL default '',
  `departmentid` int(10) NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `level` int(1) NOT NULL default '0',
  `timestamp` int(255) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_option;
CREATE TABLE `cmseasy_option` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `bid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL default '0',
  `order` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `bid` USING BTREE (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_p_orders;
CREATE TABLE `cmseasy_p_orders` (
  `id` mediumint(8) NOT NULL auto_increment,
  `oid` varchar(100) NOT NULL,
  `aid` varchar(50) NOT NULL,
  `status` int(3) NOT NULL default '0',
  `mid` int(10) NOT NULL default '0',
  `adddate` int(10) NOT NULL default '0',
  `ip` char(15) NOT NULL,
  `telphone` varchar(50) NOT NULL,
  `pnums` varchar(50) NOT NULL default '0',
  `pname` char(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` char(20) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `aid` (`aid`,`mid`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_p_pay;
CREATE TABLE `cmseasy_p_pay` (
  `pay_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pay_code` varchar(20) NOT NULL default '',
  `pay_name` varchar(120) NOT NULL default '',
  `pay_fee` varchar(10) NOT NULL default '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL default '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `is_cod` tinyint(1) unsigned NOT NULL default '0',
  `is_online` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_p_ologin`;
CREATE TABLE IF NOT EXISTS `cmseasy_p_ologin` (
  `ologin_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ologin_code` varchar(20) NOT NULL DEFAULT '',
  `ologin_name` varchar(120) NOT NULL DEFAULT '',
  `ologin_desc` text NOT NULL,
  `ologin_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ologin_id`),
  UNIQUE KEY `ologin_code` (`ologin_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_p_shipping;
CREATE TABLE `cmseasy_p_shipping` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL default '0.00',
  `overweight` int(10) NOT NULL,
  `cashondelivery` tinyint(1) unsigned NOT NULL default '0',
  `insure` tinyint(1) NOT NULL default '0',
  `insureproportion` smallint(6) NOT NULL default '0',
  `addtime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_pay_exchange;
CREATE TABLE `cmseasy_pay_exchange` (
  `exchangeid` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `type` enum('money','point','time','credit') NOT NULL default 'money',
  `value` float NOT NULL default '0',
  `unit` enum('','y','m','d') NOT NULL default '',
  `note` text NOT NULL,
  `addtime` int(11) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `authid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`exchangeid`),
  KEY `username` (`username`,`type`),
  KEY `authid` (`authid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_sessions;
CREATE TABLE `cmseasy_sessions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `departmentid` int(10) NOT NULL default '0',
  `timestamp` int(10) NOT NULL default '0',
  `ip` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_settings;
CREATE TABLE `cmseasy_settings` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(10) default NULL,
  `tag` varchar(30) NOT NULL default '',
  `value` mediumtext NOT NULL,
  `array` mediumtext,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `tag` USING BTREE (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_templatetag;
CREATE TABLE `cmseasy_templatetag` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `tagmodule` varchar(32) default NULL,
  `tagtype` varchar(32) default NULL,
  `tagcontent` text NOT NULL,
  `tagvar` text,
  `note` text,
  `tagfrom` varchar(16) default 'define',
  `template_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `name` USING BTREE (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_type;
CREATE TABLE `cmseasy_type` (
  `typeid` int(6) NOT NULL auto_increment,
  `parentid` int(6) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `stype` varchar(50) default NULL,
  `listorder` int(11) default NULL,
  `image` varchar(150) default NULL,
  `meta_title` varchar(255) default NULL,
  `keyword` varchar(150) default NULL,
  `description` text,
  `typecontent` mediumtext,
  `htmldir` varchar(50) NOT NULL,
  `template` varchar(50) default NULL,
  `listtemplate` varchar(50) default NULL,
  `showtemplate` varchar(50) default NULL,
  `htmlrule` varchar(100) default NULL,
  `listhtmlrule` varchar(100) default NULL,
  `showhtmlrule` varchar(100) default NULL,
  `module` varchar(16) NOT NULL default 'article',
  `isshow` tinyint(2) default '1',
  `ishtml` tinyint(2) default '0',
  `iswaphtml` tinyint(2) default '0',
  `ispages` tinyint(2) default NULL,
  `includecatarchives` tinyint(2) default '0',
  `addarcenable` tinyint(2) default NULL,
  `linkto` varchar(150) default NULL,
  `attr1` varchar(20) default NULL,
  `attr2` varchar(20) default NULL,
  `attr3` varchar(20) default NULL,
  `thumb` varchar(100) default NULL,
  `thumb_width` int(3) default NULL,
  `thumb_height` int(3) default NULL,
  PRIMARY KEY  (`typeid`),
  UNIQUE KEY `type` USING BTREE (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_union;
CREATE TABLE `cmseasy_union` (
  `userid` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `payaccount` varchar(30) NOT NULL default '',
  `website` varchar(100) NOT NULL default '',
  `visits` int(10) unsigned NOT NULL default '0',
  `registers` int(10) unsigned NOT NULL default '0',
  `settleexpendamount` float unsigned NOT NULL default '0',
  `totalexpendamount` float unsigned NOT NULL default '0',
  `totalpayamount` float unsigned NOT NULL default '0',
  `lastpayamount` float unsigned NOT NULL default '0',
  `lastpaytime` float unsigned NOT NULL default '0',
  `profitmargin` float unsigned NOT NULL default '0',
  `regtime` int(10) unsigned NOT NULL default '0',
  `regip` varchar(15) NOT NULL default '',
  `passed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_union_pay;
CREATE TABLE `cmseasy_union_pay` (
  `payid` int(10) unsigned NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL default '0',
  `payaccount` varchar(100) NOT NULL default '',
  `amount` float NOT NULL default '0',
  `expendamount` float unsigned NOT NULL default '0',
  `profitmargin` float unsigned NOT NULL default '0',
  `inputer` varchar(30) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`payid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_union_visit;
CREATE TABLE `cmseasy_union_visit` (
  `visitid` int(10) unsigned NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL default '0',
  `visittime` int(10) unsigned NOT NULL default '0',
  `visitip` varchar(15) NOT NULL default '',
  `referer` varchar(255) NOT NULL default '',
  `regusername` varchar(30) NOT NULL default '',
  `regtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`visitid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS cmseasy_user;
CREATE TABLE `cmseasy_user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(20) default NULL,
  `groupid` int(2) NOT NULL default '0',
  `checked` tinyint(2) default NULL,
  `qqlogin` varchar(255) default NULL,
  `alipaylogin` varchar(255) default NULL,
  `avatar` varchar(100) default NULL,
  `userip` varchar(20) default NULL,
  `state` tinyint(4) default '1',
  `qq` int(15) default NULL,
  `e_mail` varchar(60) default NULL,
  `address` varchar(255) default NULL,
  `tel` varchar(100) default NULL,
  `question` varchar(255) default NULL,
  `answer` varchar(255) default NULL,
  `intro` text,
  `point` smallint(5) unsigned default '0',
  `introducer` int(10) unsigned default NULL,
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `userid` USING BTREE (`userid`),
  UNIQUE KEY `username` USING BTREE (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_usergroup`;
CREATE TABLE IF NOT EXISTS `cmseasy_usergroup` (
  `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `discount` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  `powerlist` text,
  `fpwlist` text,
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000 ;
DROP TABLE IF EXISTS `cmseasy_stats`;
CREATE TABLE `cmseasy_stats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bot` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cmseasy_sessionox`;
CREATE TABLE `cmseasy_sessionox` (
  `PHPSESSID` varchar(50) NOT NULL,
  `update_time` int(10) NOT NULL,
  `client_ip` varchar(15) NOT NULL,
  `data` text,
  PRIMARY KEY  (`PHPSESSID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_webscan`;
CREATE TABLE `cmseasy_webscan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `var` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `ext1` varchar(100) DEFAULT NULL,
  `ext2` varchar(100) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO cmseasy_a_attachment VALUES('1','20','http://www.baidu.com/logo.gif','','下载','2011-11-11 11:25:45');

INSERT INTO cmseasy_a_vote VALUES('1','5','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('2','6','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('3','7','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('4','3','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('5','8','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('6','9','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('7','10','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('8','20','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('9','21','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('10','22','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('11','19','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('12','23','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('13','24','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('14','11','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('15','12','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('16','13','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('17','14','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('18','15','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('19','16','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('20','17','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');
INSERT INTO cmseasy_a_vote VALUES('21','18','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','');

INSERT INTO cmseasy_activity VALUES('22','1321717289','1','0','2');

INSERT INTO cmseasy_announcement VALUES('1','热烈庆祝本公司网站构建成立！','<p>热烈庆祝本公司网站构建成立！</p>','2010-07-07 07:07:07','1');

INSERT INTO `cmseasy_archive` VALUES ('1', '1', '0', '企业文化', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:53:18', 'cmseasy', '', '', '1', '1', '企业文化简介内容&hellip;&hellip;', '200', '<p>企业文化简介内容&hellip;&hellip;</p>', '0', '0', '', '0', '0', '', '1', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('2', '1', '0', '企业荣誉', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:53:59', 'cmseasy', '', '', '1', '1', '企业荣誉介绍&hellip;&hellip;', '200', '<p>企业荣誉介绍&hellip;&hellip;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('3', '1', '0', '诚聘英才', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:58:30', 'cmseasy', '', '', '1', '1', '诚聘英才内容&hellip;&hellip;', '200', '<p>诚聘英才内容&hellip;&hellip;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('4', '1', '0', '网站地图', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:59:22', 'cmseasy', '', '', '1', '1', '', '200', '', 'archive/show_sitemap.html', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('5', '2', '0', '行业网站的设计心得', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:14:31', 'cmseasy', '', '', '1', '1', '  框架介绍 1. 前言 CMSEasy根据当前广为流行的敏捷开发方式，实现了基于ROR模型框架，能够快速高效的完成各种应用的开发和扩展。 2. 环境   开发语言：PHP   数据库：MySQL   系统环境：Window Server 或者Linux   框架结构 Cmseasy内核 ● 数据缓存 ●      数据库CRUD ● URI ●      MVC模式 ●      自定义模板 ●      表单模型 优势： 由内核进行总体控制，提高程序的安全性，可靠性。 …', '200', '<p>&nbsp;</p> <p>　　很多设计师认为做好了企业网站就一定能够做好行业网站的设计，其实对设计来说行业网站和企业网站的设计截然不同，对整个网站的创意、风格、整体框架布局、文字编排、图片的合理利用，空间的合理安排上面等&hellip;有着许多诸多的要求，需要考虑的面更广，面对的问题也会更多。对于一名优秀的网站设计师来说不能绝不能放过任何一点小细节，本篇文章简述的是设计师在做行业网站时所需考虑的一些问题。 <br /> 一、网站风格/创意</p> <p>　　风格(style)是抽象的。是指站点的整体形象给浏览者的综合感受。整体形象包括站点的版面布局，色彩，字体，浏览方式等&hellip;。如：我们觉得迪斯尼是生动活泼的而IBM则是专业严肃的。每一个网站都会给人们留下的不同感受。这里我们需要做到的是根据网站的定位做出网站特有的风格。除此我们还需要在风格同一上需要把握一下，其实这个风格的统一和传统的印刷出版物没什么区别。你网页上所有的图像、文字，包括像背景颜色、区分线、字体、标题、注脚什么的，都要统一风格，贯穿全站。这样子用户看起来舒服、顺畅，会对你的网站留下一个&ldquo;很专业&rdquo;的印象。而企业网站设计师往往就缺乏这一点，没有全局意思。</p> <p>　　创意，所谓创意就是不拘一格？某些设计师在做创意的时候大费周章，做出来确实不可否认很有创意、很别致，但往往对于行业网站的客户为什么不能接受呢？此时不要太责怪客户的不识货，应该反思，抓住客户的需求。其实做行业网站不需要很多大的创意，也不要浪费过多的时间去追求如何个性、如何好看，我们只需要一点小小的创意贯穿全站，也许会使网站更生动更具有吸引力、更有思想，比如企业网站管理程序(<a href=\"http://www.cmseasy.cn/\">http://www.cmseasy.cn/</a>)就是一个很好的案例，它把领先的SEO融入到网站中，使它脱颖而出。</p> <p>二、网站LOGO</p> <p>　　Logo顾名思义就是站点的标志图案，logo最重要的就是用图形化的方式传递网站的定位和经营理念、同时便于人们识别。网站logo的设计过程中一般有以下三种思路：1.直接以网站网址作为logo。2.根据网站提供的产品/服务特点展开logo设计。3.以传递网站运营商的经营理念为特色。如：企业网站建设网logo(<a href=\"http://www.cmseasy.cn\">www.cmseasy.cn</a>)</p> <p>三、视觉流程</p> <p>　　人们在阅读某种信息时，视觉总有一种自然的流动习惯，先看什么，后看什么，再看什么。在心理学的研究表明，一般的浏览习惯是从上到下、从左到右，在一个平面上，上松下稳而压抑。同样，平面的左松右稳。所以平面的视觉影响力上方强于下方，左侧强于右侧。这样平面的上部和中上部被称为&ldquo;最佳视域&rdquo;，也就是最优选的地方。在网页设计中一些突出或推荐的信息通常都放在这个位置。当然这种视觉流程只是一种感觉并非一种固定的公式，只要符合人们的心理顺序和逻辑顺序，就可以更为灵活地运用，在网页设计中，灵活而合理地运用直接影响到传达信息的准确与有效性。</p> <p>四、网页框架与布局</p> <p>　　网页布局大致可分为&ldquo;国&rdquo;字型、拐角型、&ldquo;T&rdquo;字型、&ldquo;L&rdquo;字型、综合框架型、Flash型、变化型，在这里就不做一一论述了。其实在我们在做设计的时候并没有过多的去考虑什么形式，比如我们在一张纸看到一个圆形的东西，很容易可以联想到它像太阳，而有些人则联想到月亮等等&hellip;这都是一种形式比喻，最重要的是抓住客户的需求，把握网站的定位做处合理的框架布局。</p> <p>1． 分辨率</p> <p>　　网页的整体宽度可分为三种设置形式：百分比、象素、象素+百分比。通常在网站建设中以象素形式最为常用，行业网站也不列外。我们在设计网页的时候必定会考虑到分辨率的问题，科技发展到现在我们通常用的是1024*768和800*600的分辨率，现在网络上很多都是用到778个象素的宽度，在800的分辨率下面往往使整个网页很压抑，有种不透气的感觉，其实这个宽度是指在800*600的分辨率上网页的最宽宽度，不代表最佳视觉，不妨试试760~770的象素，不管在1024还是800的分辨率下都可以达到较佳的视觉效果。</p> <p>2． 合理广告</p> <p>　　在目前一些网站的广告（弹出广告、浮动广告、大广告、banner广告、通栏广告等等&hellip;）让人觉得很烦琐，更本就不愿意来看，有时连你这个网站都不上了，这样一来网站受到了严重的影响、广告也没达到广告的目的。这些问题都是我们在设计网站之前需要考虑、需要规划的内容之一。</p> <p>　　浮动广告有两种，第一种是在网页两边空余的地方可以上下浮动的广告，第二种是满屏幕到处随机移动的广告。建议能使用第一种的情况下尽量使用第一种，不可避免第二种情况时尽量在数量上控制最多一个就好。如果数量过多会直接影响到用户的心理、防挨到用户浏览信息,适得其反。首页广告不宜过多适中即可。如在注册或者某个购买步骤的页面上最好不要出现过多的其他无关的内容让用户分心，避免客户流失等&hellip;</p> <p>3．空间的合理利用</p> <p>　　很多的网页都具有一个特点，用一个字来形容，那就是&ldquo;塞&rdquo;，它将各种各样的信息如文字、图片、动画等不加考虑的塞到页面上，有多少挤多少，不加以规范，导致浏览时会遇到很多的不方便，主要就是页面主次不分，喧宾夺主，要不就是没有重点，没有很好的归类，整体就像各大杂烩。让人难以找到需要的东西。有的则是一片空白失去平衡，也可以用个&ldquo;散&rdquo;字来形容。</p> <p>　　并非要把整个页面塞满了才不觉得空，也并非让整个页面空旷才不觉得满，只要合理的安排、有机的组合，使页面达到平衡，既使在一边的部分大面积留空，同样不会让人感到空，相反这样会给人留下广阔的思考空间，给人回味又达到了视觉效果。</p> <p>4．文字编排</p> <p>　　在网页设计中，字体的处理与颜色、版式、图形化等其他设计元素的处理一样非常关键。</p> <p>4.1文字图形化</p> <p>　　文字图形化就是将文字用图片的形式来表现，这种形式在页面的子栏目里面最为常用，因为它具有突出，同时又美化了页面，使页面更加人性化加强了视觉效果。是文字无法达到的。对于通用性的网站弊端就是扩展性不强。</p> <p>4.2强调文字</p> <p>　　如果将个别文字作为页面的诉求重点，则可以通过加粗、加下划线、加大号字体、加指示性符号、倾斜字体、改变字体颜色等手段有意识地强化文字的视觉效果，使其在页面整体中显得出众而夺目。这些方法实际上都是运用了对比的法则。如果在更新频率低的情况下也可以使用文字图形化。</p> <p>&nbsp;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('6', '2', '0', '网站文化与网页设计', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:21:57', 'cmseasy', '', '', '1', '1', '&nbsp; 　　网站的良好运营靠的是什么？靠技术，肯定不是，因为技术的发展是一个相对的概念，不具有耐久性，缺乏凝聚力，如果仅仅靠这个，是不能维系整个网站发展的。网站其实就是企业，只不过它是提供给自己的客户以不同的产品，即以网页的形式展现给他们浏览、以交互的方式让他们参与等等，既然网站是一个企业就不能回避一个问题，就是盈利的问题，如果只顾向网站投钱，作亏本生意，是那个网站都不愿意做的事情。所以网络如果要给自己带来回报，就必须以高标准来要求，这样就不得不提升到网站文化的高度。还是先来看一下企业文化的定义吧！  　　 只要问一问任何一家一流的高科技企业，什么使这些企业引以自豪，十家有八家或许会告诉你，它们引以自豪的是自己的产品或服务。剩下的两家则会举出一系列的东西，如它们的业务流程、它们的业务伙伴关系、它们的员工等等。总之，概括起来就是：企业文化。 什么是企业文化呢？Terence E. De', '200', '<p>&nbsp;</p> <p>　　网站的良好运营靠的是什么？靠技术，肯定不是，因为技术的发展是一个相对的概念，不具有耐久性，缺乏凝聚力，如果仅仅靠这个，是不能维系整个网站发展的。网站其实就是企业，只不过它是提供给自己的客户以不同的产品，即以网页的形式展现给他们浏览、以交互的方式让他们参与等等，既然网站是一个企业就不能回避一个问题，就是盈利的问题，如果只顾向网站投钱，作亏本生意，是那个网站都不愿意做的事情。所以网络如果要给自己带来回报，就必须以高标准来要求，这样就不得不提升到网站文化的高度。还是先来看一下企业文化的定义吧！ <br /> 　　 只要问一问任何一家一流的高科技企业，什么使这些企业引以自豪，十家有八家或许会告诉你，它们引以自豪的是自己的产品或服务。剩下的两家则会举出一系列的东西，如它们的业务流程、它们的业务伙伴关系、它们的员工等等。总之，概括起来就是：企业文化。 什么是企业文化呢？Terence E. Deal（特伦斯）和Allan A. Kennedy（阿伦）合著了一部颇具影响的专著，《企业文化》（Corporate Culture）。书中给企业文化的定义是，&quot;用以规范企业人多数情况下行为的一个强有力的不成文规则体系。&quot;</p> <p>　　其实企业文化指的是一个企业中所有员工共有的一套观念、信念、价值和行为准则，以及由此导致的行为模式。企业文化是以人为本的管理哲学，是把精神文明建设同企业特点和市场对企业发展的要求结合起来的一个重要形式，是借助文化力量的管理方式，良好的企业文化能为企业保持数十年的竞争优势。</p> <p>　　可以说企业文化是企业的灵魂。一个没有自己企业文化的企业其经营往往是随波逐流的，其员工也没有主人翁意识，这样的企业是长不了的。纵观国内外现代化企业管理已经从以物为中心的管理转向以人为中心的管理，从而越来越突出人在企业生存和发展中的作用和力量。企业最重要的资源是知识，而知识是人的资源，所以重视人就是重视企业最重要的资源。IBM这样一个老牌的大公司为什么经历如此多的风风雨雨至今仍然是蓝色巨人？HP公司为什么能保持20多年持续稳定的发展？其答案都很简单：重视人的建设是他们立于不败之地的保证。</p> <p>　　虽然现在的网站赖以竞争的本钱并不是靠的自己的文化，而是一些比如机遇、技术、条件等，但是现在并不能代表以后，随着社会经济和网络技术的发展，外部条件都不是问题，如果仅靠这些，网站之间的差别将变得很小，这样网站生存的价值就会变小。所以要能够在竞争中立于不败之地，就应该坚持以人为本，挖掘网站人的潜力，让他们发挥自己的才能，使他们能够不断的超越自我，更好的凸现自己的价值。从而形成一种合力，使网站的发展形成一种良好的机制。</p> <p>　　 在这样的情况下，网页设计就被赋予了新的内容，要求也随之提高，主要表现在几个方面：</p> <p>　　首先就是网站的整体形象，一个网站给人的第一印象就是主页，但是绝不是说，只要主页做好了，网站的整体形象就好，因为在用户对整个网站的浏览的过程中，会自然而然的形成一种对网站的看法，这种看法是附带有感情色彩的，比如喜欢、不喜欢、没有什么感觉等，这就是整体形象的体现，这是靠主页和其它的页面相配合来完成的，所以在制作网页的时候要考虑怎么将自己网站好的一面体现给自己的用户，又要考虑体现的方式，侧重点，不能一锅端，都放在主页上，造成杂乱的形象。而要给人以好的可以信赖的形象就必须从许多细节上入手，同时规范整个网站的外在表现，具体在于标志的设计、标准色彩的表达以及标准字体的设计。这些都是很重要的，有一个统一的、标准的形象是赢得自己用户信赖的条件。</p> <p>　　其次是如何在网页设计中将整个网站的员工的精神风貌体现出来，每个企业的员工其实是一分宝贵的财富，所以能够充分的将员工的精神风貌体现出来一方面可以激励他们努力的工作，热爱自己的工作，也是加强企业凝聚力的一个手段；同时也可以通过这样的方法来赢得自己的客户的支持，在网站林立的今天，赢得自己的用户就是赢得了市场，就是获得了生存的基本条件。</p> <p>　　再次，在网页设计的时候，需要结合网站本身的特点，提炼出自己的经营理念，摆脱低层次的网站运行模式，网站作为一个企业就必须在不断的发展壮大的时候，结合自身的文化特色，提炼出一些深层次的东西，而这些东西就是企业的灵魂，很多世界知名品牌都有自己的独特的经营理念，比如微软是&quot;成功诀窍 = 人才 + 创新，管理 = 合适的时间 + 应做的事&quot;，惠普是&quot;财富= 人才 = 资本 + 知识&quot;，飞利普是&quot;新产品 = 技术内涵 + 观念创新&quot;，东芝是&quot;企业活力 = 智力&times;（毅力 + 体力 + 速度）&quot;，麦当劳是&quot;企业的活力 = 原材料&times;设备&times;人力资源人力资源 = 人数&times;能力&times;态度&quot;。这样就给网页设计师提出了更高的要求，要求他们能够深入的了解网站，同时将自己融入的到网站中，不断的发掘具有闪光性的东西，同时找到合适的表达方式来加以强化。这样才能够使网站靠自身的优势获得用户的好感。从而奠定良性运行的基础。</p> <p>　　既然网站文化给网页设计师提出了更高的要求，那么具体到网页设计师身上该如何应对呢？提高自身的文化素质是必不可少的，假如自身素质不高的话，就无法领会到很多其中的内涵，这样在自己的设计表达的时候就不可能到位，其实作品就是一面镜子，在其中可以折射出设计者自身的素质，这是掩盖不了的，所以提高自身的文化修养是很重要的，形成一种习惯，这样在无形中就可以在设计的作品表现出来，所以这里没有任何捷径可以走，只有在平时的生活中点点滴滴的积累。同时要有一颗积极向上的心，对生活充满热情！这样才可能在自己的网页设计中挖掘出好的东西来，也给自己的用户留下好的印象。<br /> &nbsp;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('7', '2', '0', '一个成功的网站设计', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:22:19', 'cmseasy', '', '', '1', '1', '&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着网络技术的不断发展，网络应用已经渗透到人类社会的各个角落。作为网络世界的支撑点的网站，更是人们关注的热点：政府利用网站宣传自己的施政纲领，日益成为与百姓交流的直通车；企业利用网站宣传自己的形象，挖掘无限商机；个人利用网站展示个性风采，创建彼此沟通的桥梁。越来越多的人希望拥有网站，开辟网络世界里的一片天地。如何设计一个出色的网站呢？关于这个问题，人们讨论的很多，可以讨论的内容也很多，加之网络技术的飞速发展，很难提出一个绝对权威和正确的设计思路，任何网站都基于以下设计思路：  中国站长第一门户 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 一、定位网站的主题和名称  网站的主题也就是网站的题材，网站设计开始首先遇到的问题。网站题材千奇百怪,琳琅满目，', '200', '<p>&nbsp;</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着网络技术的不断发展，网络应用已经渗透到人类社会的各个角落。作为网络世界的支撑点的网站，更是人们关注的热点：政府利用网站宣传自己的施政纲领，日益成为与百姓交流的直通车；企业利用网站宣传自己的形象，挖掘无限商机；个人利用网站展示个性风采，创建彼此沟通的桥梁。越来越多的人希望拥有网站，开辟网络世界里的一片天地。如何设计一个出色的网站呢？关于这个问题，人们讨论的很多，可以讨论的内容也很多，加之网络技术的飞速发展，很难提出一个绝对权威和正确的设计思路，任何网站都基于以下设计思路： <br /> 中国站长第一门户</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 一、定位网站的主题和名称 <br /> 网站的主题也就是网站的题材，<a class=\"ljwz\" target=\"_blank\" href=\"http://www.webb.com.cn/\">网站设计</a>开始首先遇到的问题。网站题材千奇百怪,琳琅满目，只要想的到，就可以把它制作出来。</p> <p>如果题材已经确定以后，就可以围绕题材给网站起一个名字。网站名称，也是网站设计的一部分，而且是很关键的一个要素。</p> <p>中国站长第一门户建议：</p> <p>1、名称要正。其实就是要合法，和理，和情。不能用反动的，色情的，迷信的，危害社会安全的名词语句。</p> <p>2、名称要易记。最好用中文名称，不要使用英文或者中英文混合型名称。另外，网站名称的字数应该控制在六个字(最好四个字)以内，四个字的也可以用成语。字数少还有个好处，适合于其他站点的链接排版。</p> <p>3、名称要有特色。名称平实就可以接受，如果能体现一定的内涵，给浏览者更多的视觉冲击和空间想象力，则为上品。例如：音乐前卫，网页陶吧，e书时空等。在体现出网站主题的同时，能点出特色之处。</p> <p>二、定位网站的CI形象</p> <p>所谓CI(corporate identity)，意思是通过视觉来统一企业的形象。一个杰出的网站，和实体公司一样，需要整体的形象包装和设计。准确的，有创意的CI设计，对网站的宣传推广有事半功倍的效果。中国站长第一门户</p> <p>三、确定网站的栏目</p> <p>建立一个网站好比写一篇文章，首先要拟好提纲，文章才能主题明确，层次清晰。如果网站结构不清晰，目录庞杂，内容东一块西一块。结果不但浏览者看得糊涂，自己扩充和维护网站也相当困难。网站的题材确定后，并且收集和组织了许多相关的资料内容，但如何组织内容才能吸引网友们来浏览网站呢？栏目的实质是一个网站的大纲索引，索引应该将网 站的主体明确显示出来。</p> <p>四、确定网站的目录结构</p> <p>网站的目录是指你建立网站时创建的目录。例如：在用frontpage98建立网站时都默认建立了根目录和images(存放图片)子目录。目录结构的好坏，对浏览者来说并没有什么太大的感觉，但是对于站点本身的上传维护，内容未来的扩充和移植有着重要的影响。</p> <p>五、确定网站的链接结构中国站长第一门户</p> <p>网站的链接结构是指页面之间相互链接的拓扑结构。它建立在目录结构基础之上，但可以跨越目录。建立网站的链接结构有两种基本方式：</p> <p>1、树状链接结构</p> <p>类似DOS的目录结构，首页链接指向一级页面，一级页面链接指向二级页面。这样的链接结构浏览时，一级级进入，一级级退出。优点是条理清晰，访问者明确知道自己在什么位置，不会&quot;迷&quot;路。缺点是浏览效率低，一个栏目下的子页面到另一个栏目下的子页面，必须绕经首页。</p> <p>2、星状链接结构</p> <p>类似网络服务器的链接，每个页面相互之间都建立有链接。这种链接结构的优点是浏览方便，随时可以到达自己喜欢的页面。缺点是链接太多，容易使浏览者迷路，搞不清自己在什么位置，看了多少内容。中国站长第一门户<br /> &nbsp;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('8', '2', '0', '网站建设项目合同撰写注意点', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:22:46', 'cmseasy', '', '', '1', '1', '&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。本文就网站建设合同应该包含哪些主要内容，应该注意一些什么逐个做说明： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。网站建设合同必须包含以下主要内容： 1）网站建设工作范围 2）网站建设工作流程与时间进度 3）网站建设质量要求 4）网站承建费用支付，支付标准与支付方式 下面就每一部分应该写明一些什么内容和注意一些什么点逐个做说明（合同其他部分如，违约形式与责任，合同附件里的《网', '200', '<p>&nbsp;</p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。本文就网站建设合同应该包含哪些主要内容，应该注意一些什么逐个做说明：<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。网站建设合同必须包含以下主要内容：<br /> 1）网站建设工作范围<br /> 2）网站建设工作流程与时间进度<br /> 3）网站建设质量要求<br /> 4）网站承建费用支付，支付标准与支付方式<br /> 下面就每一部分应该写明一些什么内容和注意一些什么点逐个做说明（合同其他部分如，违约形式与责任，合同附件里的《网站建设方案书》本文不作讨论）。<br /> 一、网站建设工作范围<br /> 网站建设项目涉及到的工作一般包括，需求调研与《网站建设方案书》制作，网站建设素材准备，网站页面设计与制作，网站功能性部分程序开发与页面融合，数据库设计与数据输入，服务器购买（软件和硬件）或服务器空间租用、服务器存放，域名注册与解析。<br /> 所先，在这些网站建设工作中，合同需要确定哪些是承建方的工作，哪些不是，哪些是企业或者第三方的工作，以及各方工作之间的合作方式和要求。<br /> 这里需要注意的是，如果企业在工作中需要和建设方或者第三方进行合作，那么必须清晰说明这种合作的流程，方式和要求。譬如，如果网站建设素材由企业提供，合同必须对企业提供的素材内容，时间，要求作出清晰的说明。<br /> 其次，对于承建方工作部分，必须细致地说明。<br /> 例如，网站需要建设哪些栏目，每个栏目需要制作哪些内容，网站需要开发哪些功能性的程序（如BBS）等，对这些合同必须相当明确地作出说明。合同可以用建设方确认通过的《网站建设方案书》作为合同附录，来更详细阐明承建方的工作。<br /> 二、项目建设工作流程与时间进度</p> <p>网站建设流程一般流程为：需求调研，完成网站《网站建设方案书》，《方案书》确认，素材（文字，图片，数据）收集与整理，页面风格设计，风格设计确认，页面制作，程序开发，整合（页面，程序），建设方评估与测试，网站改进与建设方确认，服务器与域名准备，网站上传发布，网站维护。<br /> 所先，合同必须说明项目开展的工作流程。<br /> 其次，对于每个工作流程，需要概要说明承建方的工作内容，尤其对于需要企业参与的部分，需要说明企业的工作内容和要求。例如，需求调研时企业的配合和资源提供；设计制作确认时的确认方式和确认范围。<br /> 最后，是对每个流程环节的完成时间要求说明。合同需要给出每个流程环节的工作估计以及项目最终完工的日期估计，双方可以根据需要，协商在进度限制上的严格度。<br /> 三、网站建设质量要求<br /> 网站建设质量主要指网站页面设计，制作与网站程序的质量。合同需要对这些工作的质量作出周到的，尽量可度量的要求，譬如为保证浏览速度，建设方也可以对每个网页的大小作出一般性限制。<br /> 对于页面设计与制作，由于对设计风格的认识差异会导致建设方和承建方的质量评判结果不同，同时设计质量也难以度量，容易出现建设方多次否定设计的情况。在这个时候需要用变通的办法来弥合双方的质量评判差异。<br /> 例如，可以由承建方设计出5种建设方要求风格的设计页面，然后由建设方选择，或者重复修正设计不能超过5次，而承建方可以以半价收取落选设计页面费用的代价来限制设计要求的变化。<br /> 还有一种办法，就是采取第三方来度量页面设计与制作质量。例如，找一些普通的上网用户，测试他们成功搜索网站中某个特定内容所需要的时间，用这个时间来衡量网站连接设计质量和合理性。例如，可以通过在门户网站做网上调查，由网民来评判网站设计与制作质量，这样做同时也很好地宣传了网站。<br /> 而对于网站功能性程序来说，合同应该对功能作出详细的说明。如会员注册登陆系统，那么除了会员的注册，登陆，退出外，系统还应该提供给会员什么功能，譬如新闻定制等。这部分可以在《网站建设方案书》里作出更详细的说明。<br /> 如果，网站承建方同时提供虚拟主机空间，那么企业还可以对网站访问速度，宕机时间，网站带宽等方面作出要求（空间租用双方一般也可以另签《网站空间租用合同》）。</p> <p>四、网站承建费用支付，支付标准与支付方式<br /> 网站建设业内一般采用按制作量记费的方式，譬如按页面数量记费。<br /> 但网站制作量，如页面数量等，在制作过程中是变化的，所以在签合同的时候无法给出整个网站建设完成后的确切费用。但是合同却可以给出网站建设的收费项和收费标准，等网站建设完成后，统计整个网站的每项工作量，再结合记费标准来算出项目实际标的。<br /> 所先，确定网站建设收费项。网站建设收费项一般可以包括以下一些：<br /> 1）素材整理阶段的文字录入费，图片处理费，翻译费<br /> 2）《网站建设方案书》制作费用<br /> 3）普通页面制作费用<br /> 4）页面风格设计费用（一般指主页和栏目首页）<br /> 5）页面特效制作费用（譬如JavaScript，Flash等）<br /> 6）功能性程序开发费用（如调查系统，会员注册系统等）<br /> 7）数据库数据录入费用<br /> 8）空间租用费用等。<br /> 其次，确定每个收费项的单位价格。例如，文字翻译每千字50元等。<br /> 这一条款关系到日后合同标的的计算，所以务必非常清晰，双方不妨多花一点时间来协商这里的细节，以达到彼此在这一条款上的一致认可，以妨日后引起不必要的争执。为了做到这一点，我认为原则就?quot;细&quot;。譬如，必须定义怎么算作一个页面，是1024下的800*600，还是800*800？如果是800*600，那么一个800*1200的页面就算做两页；这是一个协商的过程，这样计算是否合理，我觉得只要双方都同意这样计算就没有问题，关键是必须使得日后统计制作量和计算合同标的时双方没有歧义。<br /> 费用支付一般可以分成三次进行。一般合同签署一周内支付一定数量，作为项目启动费用；项目中期支付一定数量；项目结束后，计算项目实际标的，再支付余额。<br /> 如前面所说，作为网站建设项目的建设合同还需要其他很多条款和辅助合同，如：《空间租用合同》等，但是以上谈到四点却是合同里最重要，也是最需要&quot;细扣&quot;的内容，希望大家以后在撰写网站建设合同时能从中获得一点帮助。<br /> &nbsp;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('9', '2', '0', '优秀网站的五大要素', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 02:50:29', 'cmseasy', '', '/upload/images/201111/13223335247372.jpg', '1', '1', '  1、网站内容非富           网站作为一种媒体，提供给用户的最主要还是网站的内容，没有人会在一个没内容的网站上留连往返，就象没人会两次看同一份毫无新意的报纸一样！ 2、页面下载速度快 　　 据研究发现，页面下载速度是网站留住访问者的关键因素，如果20—30秒还不能打开一个网页，一般人就会没有耐心。如果不能让每个页面都保持较快的下载速度，至少应该确保主页速度尽可能快。 　　 在目前的情况下，保持页面下载速度的主要方法是让网页简单，仅将最重要的信息安排在首页，尽量避免使用大量的图片。 　　 虽然大量使用文字降低了网页的视觉效果，显得有些呆板，不过根据加拿大最近一项“网民网上看什么”的调查显示，互联网用户92%的上网时间用来看文字资讯。 3、功能多样', '200', '<p>&nbsp;</p>\r\n<p>1、网站内容非富</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站作为一种媒体，提供给用户的最主要还是网站的内容，没有人会在一个没内容的网站上留连往返，就象没人会两次看同一份毫无新意的报纸一样！</p>\r\n<p>2、页面下载速度快</p>\r\n<p>　　 据研究发现，页面下载速度是网站留住访问者的关键因素，如果20&mdash;30秒还不能打开一个网页，一般人就会没有耐心。如果不能让每个页面都保持较快的下载速度，至少应该确保主页速度尽可能快。</p>\r\n<p>　　 在目前的情况下，保持页面下载速度的主要方法是让网页简单，仅将最重要的信息安排在首页，尽量避免使用大量的图片。</p>\r\n<p>　　 虽然大量使用文字降低了网页的视觉效果，显得有些呆板，不过根据加拿大最近一项&ldquo;网民网上看什么&rdquo;的调查显示，互联网用户92%的上网时间用来看文字资讯。</p>\r\n<p>3、功能多样、使用方便</p>\r\n<p>　　 网站吸引用户访问的基本目的无非是出于几个方面：扩大网站知名度和吸引力；将潜在顾客转化为实际顾客；将现有顾客发展为忠诚顾客等。为用户提供一个多功能的人性化界面，并保持这种功能的使用方便，就显得十分重要，说到底用户使用一种服务----不管在网上网下------最主要的是方便。包括方便的导航系统、必要的帮助信息、常见问题解答、尽量简单的用户注册程序等等。</p>\r\n<p>4、网站品质优秀</p>\r\n<p>　　 网页上的错误链接常常是人们对网站抱怨的主要因素之一。我们时常可以看到&ldquo;该网页已被删除或不能显示&rdquo;、&ldquo;Filenotfound&rdquo;等由于无效链接而产生的反馈信息，这种情况往往让人觉得难以忍受，同时也严重影响了用户对网站的信心。如果网站同时可以提供800免费服务电话和callcenter等联系方式，相信不仅可以体现公司的实力，而且更能充分体现出良好的顾客服务。</p>\r\n<p>5、保护个人信息</p>\r\n<p>　　 在个性化服务十分普及的今天，许多网站要求用户首先注册为会员，网站收集用户资料有何目的？如何利用用户的个人信息？是否将用户资料出售给其它机构？是否会利用个人信息向用户发送大量的广告邮件？用户是否对此拥有选择的权利？填写的个人信息是否安全？是否能获得必要的回报？这些都是用户十分关心的问题，如果网站对此没有明确的说明和承诺，这样的网站显然缺乏必要的商业道德，或者至少可以被认为对用户不够尊重。<br />\r\n&nbsp;</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:1:{i:0;s:0:\"\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('10', '10', '2', '罗技G500鼠标', '', 'cmseasy', '127', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:43', 'cmseasy', '', '/upload/images/201111/13223331569197.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 罗技持续在零售领域扩展产品线和市场占有率。随着越来越多的消费者为其PC添加具有个性特色的且功能强劲的外设并通过无线桌面获得更多的使用自由，在目前的消费趋势下大大推动了罗技产品多样化和全面化的进程。消费者们还购买为诸如游戏、多媒体或网上视听交流等新的运用或特定目的而设计的辅助设备。此外罗技零售业务涉及的范围远不止基于PC平台个人的周边设备，更包括比如游戏机、便携式音乐播放器、移动电话和家庭娱乐系统等等。</p>\r\n<p>　　如今，罗技的零售业务占收入的88.4%。除了充分发挥其自有的设计和制造优势外，罗技还通过战略购并及结盟其他业界领先厂商，为给消费者提供更多的优秀产品。</p>\r\n<p>　　罗技深信以下战略发展方向将为公司带来持续的业务增长：</p>\r\n<p>　　&middot;拓宽电脑周边产品线：罗技已经超越了台式电脑定位设备提供商的传统角色，成为网络摄像机、键盘、PC音响产品、游戏控制器、数码笔和高级通用遥控器的领先品牌。</p>\r\n<p>　　&middot;从桌面转入起居室：如今，越来越多的消费者在通过高级音响、多媒体设备和游戏机来享受数字娱乐生活。罗技已为PlayStation&amp;reg; 2游戏机和微软Xbox提供多款设备。罗技还为消费者的起居生活设计了一系列产品，包括流媒体音乐解决方案和通用遥控设备。</p>\r\n<p>　　&middot; 为行动中的人们提供个人周边设备：为了满足移动市场的需求，罗技在不同的平台上提供了多种产品。罗技为笔记本用户提供了无线或有线的鼠标以及便携式网络摄像头。为手机用户提供使用舒适的无线或者有线耳机，而对于那些习惯在旅程中享受娱乐的人们来说，罗技提供了一系列PSP的个人周边设备并将很快为iPod 和其他MP3播放器提供各种产品。罗技还提供一种新的数字化输入系统 该系统把人对笔和纸的的熟悉度以及个人电脑数字世界的力量完美结合了起来。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '360', '', '0', '', '', '0', 'a:5:{i:1;s:40:\"/upload/images/201111/13223330863906.jpg\";i:2;s:40:\"/upload/images/201111/13223330952057.jpg\";i:3;s:40:\"/upload/images/201111/13223331282027.jpg\";i:4;s:40:\"/upload/images/201111/13223331408657.jpg\";i:5;s:39:\"/upload/images/201111/1322333133274.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('11', '10', '2', '罗技M215无线鼠标', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:19', 'cmseasy', '', '/upload/images/201111/13223332667578.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;罗技持续在零售领域扩展产品线和市场占有率。随着越来越多的消费者为其PC添加具有个性特色的且功能强劲的外设并通过无线桌面获得更多的使用自由，在目前的消费趋势下大大推动了罗技产品多样化和全面化的进程。消费者们还购买为诸如游戏、多媒体或网上视听交流等新的运用或特定目的而设计的辅助设备。此外罗技零售业务涉及的范围远不止基于PC平台个人的周边设备，更包括比如游戏机、便携式音乐播放器、移动电话和家庭娱乐系统等等。</p>\r\n<p>　　如今，罗技的零售业务占收入的88.4%。除了充分发挥其自有的设计和制造优势外，罗技还通过战略购并及结盟其他业界领先厂商，为给消费者提供更多的优秀产品。</p>\r\n<p>　　罗技深信以下战略发展方向将为公司带来持续的业务增长：</p>\r\n<p>　　&middot;拓宽电脑周边产品线：罗技已经超越了台式电脑定位设备提供商的传统角色，成为网络摄像机、键盘、PC音响产品、游戏控制器、数码笔和高级通用遥控器的领先品牌。</p>\r\n<p>　　&middot;从桌面转入起居室：如今，越来越多的消费者在通过高级音响、多媒体设备和游戏机来享受数字娱乐生活。罗技已为PlayStation&amp;reg; 2游戏机和微软Xbox提供多款设备。罗技还为消费者的起居生活设计了一系列产品，包括流媒体音乐解决方案和通用遥控设备。</p>\r\n<p>　　&middot; 为行动中的人们提供个人周边设备：为了满足移动市场的需求，罗技在不同的平台上提供了多种产品。罗技为笔记本用户提供了无线或有线的鼠标以及便携式网络摄像头。为手机用户提供使用舒适的无线或者有线耳机，而对于那些习惯在旅程中享受娱乐的人们来说，罗技提供了一系列PSP的个人周边设备并将很快为iPod 和其他MP3播放器提供各种产品。罗技还提供一种新的数字化输入系统 该系统把人对笔和纸的的熟悉度以及个人电脑数字世界的力量完美结合了起来。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '520', '', '0', '', '', '0', 'a:4:{i:1;s:40:\"/upload/images/201111/13223331569197.jpg\";i:2;s:40:\"/upload/images/201111/13223332476952.jpg\";i:3;s:40:\"/upload/images/201111/13223332905428.jpg\";i:4;s:40:\"/upload/images/201111/13223332814555.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('12', '10', '2', '罗技MX518新版鼠标', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:11', 'cmseasy', '', '/upload/images/201111/13223335802831.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 罗技持续在零售领域扩展产品线和市场占有率。随着越来越多的消费者为其PC添加具有个性特色的且功能强劲的外设并通过无线桌面获得更多的使用自由，在目前的消费趋势下大大推动了罗技产品多样化和全面化的进程。消费者们还购买为诸如游戏、多媒体或网上视听交流等新的运用或特定目的而设计的辅助设备。此外罗技零售业务涉及的范围远不止基于PC平台个人的周边设备，更包括比如游戏机、便携式音乐播放器、移动电话和家庭娱乐系统等等。</p>\r\n<p>　　如今，罗技的零售业务占收入的88.4%。除了充分发挥其自有的设计和制造优势外，罗技还通过战略购并及结盟其他业界领先厂商，为给消费者提供更多的优秀产品。</p>\r\n<p>　　罗技深信以下战略发展方向将为公司带来持续的业务增长：</p>\r\n<p>　　&middot;拓宽电脑周边产品线：罗技已经超越了台式电脑定位设备提供商的传统角色，成为网络摄像机、键盘、PC音响产品、游戏控制器、数码笔和高级通用遥控器的领先品牌。</p>\r\n<p>　　&middot;从桌面转入起居室：如今，越来越多的消费者在通过高级音响、多媒体设备和游戏机来享受数字娱乐生活。罗技已为PlayStation&amp;reg; 2游戏机和微软Xbox提供多款设备。罗技还为消费者的起居生活设计了一系列产品，包括流媒体音乐解决方案和通用遥控设备。</p>\r\n<p>　　&middot; 为行动中的人们提供个人周边设备：为了满足移动市场的需求，罗技在不同的平台上提供了多种产品。罗技为笔记本用户提供了无线或有线的鼠标以及便携式网络摄像头。为手机用户提供使用舒适的无线或者有线耳机，而对于那些习惯在旅程中享受娱乐的人们来说，罗技提供了一系列PSP的个人周边设备并将很快为iPod 和其他MP3播放器提供各种产品。罗技还提供一种新的数字化输入系统 该系统把人对笔和纸的的熟悉度以及个人电脑数字世界的力量完美结合了起来。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '650', '', '0', '', '', '0', 'a:4:{i:1;s:39:\"/upload/images/201111/1322333614653.jpg\";i:2;s:40:\"/upload/images/201111/13223336081776.jpg\";i:3;s:39:\"/upload/images/201111/1322333626268.jpg\";i:4;s:40:\"/upload/images/201111/13223336022154.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('25', '6', '0', '下载一', '', 'cmseasy', '1', '1', '#000000', '0', '0', '', '0', '', '', '', '', '0', '2012-08-04 10:06:09', 'cmseasy', '', '/upload/images/201111/13223349964656.jpg', '1', '1', '下载说明', '0', '<p>&nbsp;下载说明</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '10 KB', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('13', '10', '2', '罗技G105背光游戏键盘', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:02', 'cmseasy', '', '/upload/images/201111/13223337305891.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;二十年来,瑞士外设厂商罗技凭着出色的设计和优秀的品质受无数用户的喜爱，从MX300到大革命、G19，罗技旗下很多外设产品都为用户留下了深刻的印象。2011年8月30日，罗技召开了新品发布会，推出了多款外设新品，其中型号为G105背光游戏键盘，是罗技目前价格最低的背光游戏键盘。</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 作为一款面入入门级游戏玩家推出的产品，罗技G105背光游戏键盘的官方零售价格只有299元。市场定位低于G110的G105键盘，是否会是一款严重缩水的产品，定位于入门级的它是否依旧可以为游戏玩家带来丰富的使用体验，下面就让我们一起来看。</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 罗技G105背光游戏键盘采用极富罗技特色的黑绿两色包装外观，键盘包装采用瓦楞纸板制作。包装采用瓦楞纸板制作，可以对内部的键盘起到一定的保护作用。包装正面印有罗技G105背光游戏键盘产品展示图和产品名称，背面印有键盘的6大设计特点。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '320', '', '0', '', '', '0', 'a:3:{i:1;s:40:\"/upload/images/201111/13223337593193.jpg\";i:2;s:40:\"/upload/images/201111/13223337491171.jpg\";i:3;s:40:\"/upload/images/201111/13223337435191.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('14', '10', '2', '森海塞尔CX200', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:30:32', 'cmseasy', '', '/upload/images/201111/13223339078017.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>森海塞尔CX200概述</strong></p>\r\n<p>　　用CX 200 Street II提升你的街头风格指数吧。 此款时尚的耳机以创新的外壳形状为特点，方便用手指调整，使佩戴更舒适。得益于很高的被动式环境噪声阻抑和强力的低音，CX Street II 是你在小巷里或人行道上的绝佳伙伴。</p>\r\n<p>　　<strong>特点</strong></p>\r\n<p>　　创新的方便手指调整的外形让佩戴更轻松、更舒适（附带不同尺码的耳垫） 强力、低音驱动的立体声 很高的被动式环境噪声阻抑 为MP3播放器、iPod、iPhone、CD播放器和便携游戏机优化设计（iPod和iPhone是Apple公司在美国和其它国家注册了的商标） 对称（等长）的耳机线 2年质保</p>\r\n<p>　　<strong>包装内含</strong></p>\r\n<p>　　CX 200 Street II 耳塞 耳垫套装（小/中/大） 其它颜色</p>\r\n<p>　　CX 200 Street II 白色</p>\r\n<p>　　<strong>技术参数</strong></p>\r\n<p>　　型号 CX 200 STREET II</p>\r\n<p>　　佩戴方式 入耳式</p>\r\n<p>　　主要用途 随身听</p>\r\n<p>　　换能原理 动圈式</p>\r\n<p>　　频率响应 20Hz-20KHz</p>\r\n<p>　　阻抗 16欧</p>\r\n<p>　　灵敏度 110dB(1kHz/1Vrms)</p>\r\n<p>　　颜色：灰色、白色</p>\r\n<p>　　支持：CD、DVD、iPod、iPhone</p>\r\n<p>　　总谐波失真：&lt;0.2%</p>\r\n<p>　　声压（SPL）：110 dB (1kHz/1Vrms)</p>\r\n<p>　　插头 3.5mm (弯插)</p>\r\n<p>　　电缆 1.2m</p>\r\n<p>　　重量 5g</p>\r\n<p>　　<strong>主要参数</strong></p>\r\n<p>　　方便手指调整的创新外形让佩戴更轻松,更舒适(附带不同尺码的耳垫)/强力,低音驱动的立体声/很高的被动式环境噪声阻抑/为MP3播放器,iPod,iPhone,CD播放器和便携游戏机优化设计(iPod和iPhone是Apple公司在美国和其它国家注册了的商标)/对称(等长)的耳机线/2年质保[1]</p>\r\n<div>&nbsp;</div>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '200', '', '0', '', '', '0', 'a:3:{i:1;s:40:\"/upload/images/201111/13223339078017.jpg\";i:2;s:40:\"/upload/images/201111/13223339219891.jpg\";i:3;s:40:\"/upload/images/201111/13223339328968.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('15', '11', '0', 'ipod4', '', 'cmseasy', '127', '2', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:37:10', 'cmseasy', '', '/upload/images/201111/13223340795465.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p><strong>版本介绍</strong></p>\r\n<p>　　*iPod classic(80GB,160GB)</p>\r\n<p>　　*iPod nano3(4及8GB，5种颜色)</p>\r\n<p>　　*iPod nano4(8及16GB，9种颜色 ,红色为限 &nbsp;iPod历代产品量版大陆地区暂不销售,16G国内也仅仅在部分大城市才能买到)</p>\r\n<p>　　*iPod nano5(8及16GB，9种颜色，其中黄色为Apple Store零售店特供颜色机型，红色为 (PRODUCT)RED特别版)</p>\r\n<p>　　*iPod nano6(8及16GB，7种颜色，红色为(PRODUCT)RED特别版)</p>\r\n<p>　　*iPod shuffle(第二代，1GB/2GB)</p>\r\n<p>　　*iPod shuffle(第三代，2GB/4GB，5种颜色）</p>\r\n<p>　　*iPod shuffle(第四代，2GB，5种颜色)</p>\r\n<p>　　*iPod touch(8G/16G/32G)</p>\r\n<p>　　*iPod touch 2(8G/16G/32G)</p>\r\n<p>　　*iPod touch 3(8G/32G/64G)</p>\r\n<p>　　*iPod touch 4(8G/32G/64G，两种颜色)</p>\r\n<p><strong>RED特别版</strong></p>\r\n<p>　　补充下:iPod (PRODUCT) RED特别版（即红色机型）并不是限量版，红色的iPod nano6 是苹果公司与Product Red组织联手打造的一款特别版的iPod，现在购买 iPod (PRODUCT) RED 特别版机型，苹果会将销售所得的一部分捐献给 Global Fund，用于非洲的艾滋病防治。到目前为止，在APPLE 实体店 (如：北京三里屯apple store）和苹果在线商店均有售。自该计划推出至今，(PRODUCT) RED 已向 Global Fund 捐献了 100 余万美金。现在，如果你购买 (PRODUCT) RED，亦可奉献一份爱心。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '1650', '', '0', '', '', '0', 'a:5:{i:1;s:40:\"/upload/images/201111/13223341109035.jpg\";i:2;s:40:\"/upload/images/201111/13223341003949.jpg\";i:3;s:40:\"/upload/images/201111/13223340961641.jpg\";i:4;s:40:\"/upload/images/201111/13223340913937.jpg\";i:5;s:40:\"/upload/images/201111/13223340795465.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('16', '11', '1', '苹果MacBook Air', '', 'cmseasy', '127', '3', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:30:22', 'cmseasy', '', '/upload/images/201111/13223342151967.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; 苹果MacBook Air(MC968CH/A)笔记本配备了最新的酷睿i5处理器以及高速度的SSD固态硬盘，对于有移动办公需求并且注重外观设计的朋友来说是个不错的选择。目前，这款笔记本售价稳定仅为6298元，喜欢的朋友可以考虑一下。</p>\r\n<p>&nbsp; &nbsp; 外观方面，苹果MacBook Air(MC968CH/A)依然是经典的白色外观，1280&times;800 的分辨率搭配13.3英寸的显示器，使其能够满足大多数用户的视觉需求，而其拥有耐用的无缝一体成型机身，圆润的轮廓让你可以轻松将它取出或放入包袋。坚固的聚碳酸酯外壳足以应对在学校、工作或旅途等日常生活中的碰撞和颠簸，电源线通过磁性固定到位，万一有人绊到线缆，它能够干净利落地断开，从而让您的MacBook安然无恙。</p>\r\n<p>苹果 MacBook Air（MC968CH/A）</p>\r\n<p>&nbsp; &nbsp; 配置方面，苹果MacBook Air(MC968CH/A)笔记本拥有一颗英特尔酷睿i5-2467M处理器，2GB DDR3内存，64GB固态硬盘，吸入式DVD刻录光驱，英特尔HD 3000核芯显卡，AirPort Extreme Wi-Fi无线网卡，机身拥有2个USB 2.0接口，RJ45以及DVI视频输出等接口，预装Mac OS X 10.7 Lion操作系统。</p>\r\n<p>&nbsp;</p>\r\n<p>苹果 MacBook Air（MC968CH/A）</p>\r\n<p>处理器型号<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Intel 酷睿i5 2467M</p>\r\n<p>硬盘容量<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>64GB SSD固态硬盘</p>\r\n<p>显卡芯片<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Intel HD 3000</p>\r\n<p>屏幕尺寸<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>11.6英寸</p>\r\n<p>笔记本重量<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>1080g</p>\r\n<p>电池类型<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>锂电池</p>\r\n<p>操作系统<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Mac OS X 10.7 Lion</p>\r\n<p>&gt;&gt;点击查看详细配置&lt;&lt;</p>\r\n<p>&nbsp; &nbsp; 编辑点评： &nbsp;</p>\r\n<p>&nbsp; &nbsp; 这款苹果 MacBook Air（MC968CH/A）笔记本可谓内外兼备，时尚的设计，良好的处理能力以及极致轻薄便携的性能。对于经常需要移动办公的商务人士，追赶时尚潮流的时尚达人和希望体验全新电脑操作理念的朋友来说，都是不错的选择。目前的报价仅为6298元。感兴趣的朋友多多关注。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '6298', '', '0', '', '', '0', 'a:5:{i:1;s:40:\"/upload/images/201111/13223342498278.jpg\";i:2;s:40:\"/upload/images/201111/13223342463343.jpg\";i:3;s:40:\"/upload/images/201111/13223342428847.jpg\";i:4;s:39:\"/upload/images/201111/1322334239093.jpg\";i:5;s:40:\"/upload/images/201111/13223342235644.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('17', '10', '1', '佳能60D', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:30:14', 'cmseasy', '', '/upload/images/201111/13223346177095.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>　　近日笔者的一位好友拿着前不久刚买的单反相机找到我诉苦，说是自己新买的相机出现了问题，明明插入了一张能装下800张照片的8G卡，结果只拍了160多张照片，就提示存储空间已满！并且在电脑上查看存储卡时还发现，存储卡里面出现了好多没用的&ldquo;垃圾文件&rdquo;。相机也能产生垃圾文件？这个说法笔者还是第一次听说。笔者在帮这位朋友详细检查了相机的设置后发现，原来他在无意中开启了RAW+JEPG的记录方式，难怪卡里会出现好多打不开的文件。鉴于有很多新手玩家RAW格式的文件都不太熟悉，笔者借此机会详细的给大家讲解下RAW格式的使用方法。</p>\r\n<p>&middot;RAW到底是什么格式？</p>\r\n<p>　　在目前所有的单反相机中都有选择照片格式的这么一个选项，很多新手玩家在购买相机后都将其常年设置在JEPG选项上，对RAW格式并不是很了解。RAW单从字面上解释为&ldquo;未经加工的&rdquo;，我们可以将其理解为在数码相机内部没有进行任何处理的图像数据，它反映的是从影像传感器中得到的最原始的信息，可以说是真正意义上的数字底片。</p>\r\n<p>RAW格式图像没有进过相机的任何处理</p>\r\n<p>　　需要注意的是，我们将照片设置为RAW格式后所拍摄图像文件的后缀名并不一定是xxx.RAW，RAW只是这类未经加工图像的统称。各家相机厂商会采用不同的编码方式来记录RAW数据，所以相应的后缀名也不同。</p>\r\n<p>各家厂商都有自己的RAW格式后缀名</p>\r\n<p>　　通过上面的阅读，我们已经大致的了解了RAW格式图像是什么。那么它和JEPG格式的照片有哪些区别呢？它又有哪些优点和缺点？我们应该怎样处理和使用RAW格式的照片？在使用RAW格式拍照时又需要有哪些需要注意的地方？别着急，下面我会为大家详细讲述。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '2890', '', '0', '', '', '0', 'a:5:{i:1;s:40:\"/upload/images/201111/13223346238903.jpg\";i:2;s:40:\"/upload/images/201111/13223346177095.jpg\";i:3;s:40:\"/upload/images/201111/13223346351077.jpg\";i:4;s:40:\"/upload/images/201111/13223346306073.jpg\";i:5;s:40:\"/upload/images/201111/13223346272965.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('18', '10', '2', '易通企业网站管理系统', '', 'cmseasy', '127', '0', '', '0', '0', '', '1', '', '', '', '', '0', '2011-11-27 03:32:03', 'cmseasy', '', '/upload/images/201111/13223349964656.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>易通企业网站系统是九州易通科技开发的中国首套免费提供模板的营销型企业网站管理系统，系统前台生成html、完全符合SEO、同时有在线客服、潜在客户跟踪、便捷的企业网站管理、搜索引擎推广等功能。</p>\r\n<p>九州易通科技开发的核心产品易通企业网站系统(CmsEasy3.0)是充分按照SEO最佳标准来开发，营销实用性非常强企业建站系统。灵活的静态化控制，可以自定义字段，自定义模板，自定义表单，自定义URL，交叉绑定分类，地区，专题等多元化定制大大增加了企业网站的各种需求空间。强大的模板自定义可以轻松打造出个性的栏目封面，文章列表，图片列表，下载列表，分类列表，地区列表等等。</p>\r\n<p>主体功能列表如下：</p>\r\n<p>支持生成html，支持google和百度地图生成、自定义标题、自定义关键词、自定义描述、伪静态等符合SEO最佳标准的功能；</p>\r\n<p>支持缓存功能，全面提升网站运行速度；</p>\r\n<p>支持自定义模板，拥有特有的模板标签，留有全面的个性化设计空间；</p>\r\n<p>支持图片增加水印，支持水印位置和自定义水印图片等；</p>\r\n<p>支持附件大小控制；支持敏感词过滤；</p>\r\n<p>支持邮件多种模式的群发；内置cnzz全景统计；</p>\r\n<p>支持无限极栏目；支持内容绑定分类；</p>\r\n<p>支持栏目，分类是否启用开关；</p>\r\n<p>支持外部跳转链接控制；</p>\r\n<p>支持分组浏览权限；支持用户组，支持自定义用户字段；</p>\r\n<p>支持内容自定义字段；</p>\r\n<p>支持专题发布；</p>\r\n<p>支持URL自定义；</p>\r\n<p>支持自定义表单；</p>\r\n<p>拥有投票、评论、公告、留言板、友情链接等常用模块；</p>\r\n<p>支持自定义标签，拥有模板助手功能；</p>\r\n<p>拥有地区功能；</p>\r\n<p>中文标签调用内容列表；</p>\r\n<p>中文标签调用图片内容列表；</p>\r\n<p>中文标签调用栏目列表；</p>\r\n<p>拥有商品购物车；</p>\r\n<p>拥有在线订单功能；</p>\r\n<p>拥有物流配货功能；</p>\r\n<p>拥有独创的企业推广联盟模块；</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '0', '', '0', '0', '', '', '500', '', '0', '', '', '0', 'a:2:{i:1;s:40:\"/upload/images/201111/13223349964656.jpg\";i:2;s:39:\"/upload/images/201111/1322335354967.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('19', '10', '0', '徕卡M9', '', 'cmseasy', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 02:19:39', 'cmseasy', '', '/upload/images/201111/13223316075369.jpg', '1', '1', '内容', '200', '<p>&nbsp;</p>\r\n<p>推荐理由：就是一个字&ldquo;贵&rdquo;，这个岁数开始享受生活，玩也要玩点特殊东西，徕卡M9顶级做工绝对奢华。</p>\r\n<p>　　徕卡M9采用了全新的1800万像素全画幅，面积为24mmX36mm的感光元件。同时，M9能够支持徕卡所有M系列的镜头，可以说是目前世界上最小的全幅数码相机。徕卡M9机身尺寸为139&times;37&times;80mm(宽x深x 高)，重量为560克，机身采用了坚固的铝镁合金的金属支撑，机顶与底盖用整块的使用了实心铜锌合金制造，想必会带来不错的手感。 徕卡M9的快门速度为32秒到1／4000秒，也可以半级调整有B门曝光模式。而拍摄模式则设计了手动模式和光圈优先、以及快门优先三种，完全符合传统徕卡传统用家的习惯。</p>\r\n<p>&nbsp;</p>', 'archive/show_pic.html', '0', '', '0', '0', '', '', '40500', '', '0', '', '', '0', 'a:4:{i:1;s:40:\"/upload/images/201111/13223346177095.jpg\";i:2;s:40:\"/upload/images/201111/13223346238903.jpg\";i:3;s:40:\"/upload/images/201111/13223346306073.jpg\";i:4;s:40:\"/upload/images/201111/13223346272965.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('24', '11', '1', 'iPhone', '', 'cmseasy', '1', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:31', 'cmseasy', '', '/upload/images/201111/13223310240799.jpg', '1', '1', 'a...', '0', '<p>iPhone 4，FaceTime将可视电话变为现实，通过 WLAN 连接两部 iPhone 4，只要轻轻一点，你就可以与地球另一端的人相视微笑；iPhone 4 的 Retina 显示屏是迄今最清晰、 最鲜活、分辨率最高的 iPhone 屏幕，像素数是之前 iPhone 的 4 倍。它开创了多任务处理的新模式。现在，你可以同时运行多个喜爱的第三方应用程序，并在它们之间迅速切换，却不会让前台应用程序变慢，或不必要地消耗过多电量。这种更智能的多任务处理方式仅在 iPhone 上提供。高清摄像，以高清格式拍摄你自己的影片...</p>', '0', '0', '', '0', '0', '', '', '5620', '', '0', '', '', '0', 'a:6:{i:1;s:40:\"/upload/images/201111/13223310325929.jpg\";i:2;s:40:\"/upload/images/201111/13223310431244.jpg\";i:3;s:39:\"/upload/images/201111/1322331246723.jpg\";i:4;s:40:\"/upload/images/201111/13223312412788.jpg\";i:5;s:40:\"/upload/images/201111/13223310486736.jpg\";i:6;s:40:\"/upload/images/201111/13223312538947.jpg\";}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `cmseasy_archive` VALUES ('26', '7', '0', '部门主管', '', 'cmseasy', '1', '0', '#000000', '0', '0', '', '0', '', '', '', '', '0', '2012-08-04 10:06:32', 'cmseasy', '', '', '1', '1', '职位详细说明', '0', '<p>&nbsp;职位详细说明</p>', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '销售部', '1', '热爱本职工作', '2', '1', '至少2年销售经验', '4', '20-40', '不限', '5000-8000', '董先生');



INSERT INTO cmseasy_b_arctag VALUES('9','20','0');
INSERT INTO cmseasy_b_arctag VALUES('3','21','0');
INSERT INTO cmseasy_b_arctag VALUES('4','22','0');
INSERT INTO cmseasy_b_arctag VALUES('16','19','0');
INSERT INTO cmseasy_b_arctag VALUES('7','23','0');
INSERT INTO cmseasy_b_arctag VALUES('46','24','0');
INSERT INTO cmseasy_b_arctag VALUES('47','10','0');
INSERT INTO cmseasy_b_arctag VALUES('45','11','0');
INSERT INTO cmseasy_b_arctag VALUES('23','9','0');
INSERT INTO cmseasy_b_arctag VALUES('44','12','0');
INSERT INTO cmseasy_b_arctag VALUES('43','13','0');
INSERT INTO cmseasy_b_arctag VALUES('42','14','0');
INSERT INTO cmseasy_b_arctag VALUES('49','15','0');
INSERT INTO cmseasy_b_arctag VALUES('41','16','0');
INSERT INTO cmseasy_b_arctag VALUES('40','17','0');
INSERT INTO cmseasy_b_arctag VALUES('48','18','0');

INSERT INTO cmseasy_b_area VALUES('82','北京市','0');
INSERT INTO cmseasy_b_area VALUES('83','天津市','0');
INSERT INTO cmseasy_b_area VALUES('84','河北省','0');
INSERT INTO cmseasy_b_area VALUES('85','山西省','0');
INSERT INTO cmseasy_b_area VALUES('86','内蒙古自治区','0');
INSERT INTO cmseasy_b_area VALUES('87','辽宁省','0');
INSERT INTO cmseasy_b_area VALUES('88','吉林省','0');
INSERT INTO cmseasy_b_area VALUES('89','黑龙江省','0');
INSERT INTO cmseasy_b_area VALUES('90','上海市','0');
INSERT INTO cmseasy_b_area VALUES('91','江苏省','0');
INSERT INTO cmseasy_b_area VALUES('92','浙江省','0');
INSERT INTO cmseasy_b_area VALUES('93','安徽省','0');
INSERT INTO cmseasy_b_area VALUES('94','福建省','0');
INSERT INTO cmseasy_b_area VALUES('95','江西省','0');
INSERT INTO cmseasy_b_area VALUES('96','山东省','0');
INSERT INTO cmseasy_b_area VALUES('97','河南省','0');
INSERT INTO cmseasy_b_area VALUES('98','湖北省','0');
INSERT INTO cmseasy_b_area VALUES('99','湖南省','0');
INSERT INTO cmseasy_b_area VALUES('100','广东省','0');
INSERT INTO cmseasy_b_area VALUES('101','广西壮族自治区','0');
INSERT INTO cmseasy_b_area VALUES('102','海南省','0');
INSERT INTO cmseasy_b_area VALUES('103','重庆市','0');
INSERT INTO cmseasy_b_area VALUES('104','四川省','0');
INSERT INTO cmseasy_b_area VALUES('105','贵州省','0');
INSERT INTO cmseasy_b_area VALUES('106','云南省','0');
INSERT INTO cmseasy_b_area VALUES('107','西藏自治区','0');
INSERT INTO cmseasy_b_area VALUES('108','陕西省','0');
INSERT INTO cmseasy_b_area VALUES('109','甘肃省','0');
INSERT INTO cmseasy_b_area VALUES('110','青海省','0');
INSERT INTO cmseasy_b_area VALUES('111','宁夏回族自治区','0');
INSERT INTO cmseasy_b_area VALUES('112','新疆维吾尔自治区','0');
INSERT INTO cmseasy_b_area VALUES('113','台湾省','0');
INSERT INTO cmseasy_b_area VALUES('114','香港特别行政区','0');
INSERT INTO cmseasy_b_area VALUES('115','澳门特别行政区','0');
INSERT INTO cmseasy_b_area VALUES('116','北京辖区','82');
INSERT INTO cmseasy_b_area VALUES('117','北京辖县','82');
INSERT INTO cmseasy_b_area VALUES('118','天津辖区','83');
INSERT INTO cmseasy_b_area VALUES('119','天津辖县','83');
INSERT INTO cmseasy_b_area VALUES('120','重庆辖区','103');
INSERT INTO cmseasy_b_area VALUES('121','重庆辖县','103');
INSERT INTO cmseasy_b_area VALUES('122','上海辖区','90');
INSERT INTO cmseasy_b_area VALUES('123','上海辖县','90');
INSERT INTO cmseasy_b_area VALUES('124','东城区','116');
INSERT INTO cmseasy_b_area VALUES('125','西城区','116');
INSERT INTO cmseasy_b_area VALUES('126','崇文区','116');
INSERT INTO cmseasy_b_area VALUES('127','宣武区','116');
INSERT INTO cmseasy_b_area VALUES('128','朝阳区','116');
INSERT INTO cmseasy_b_area VALUES('129','丰台区','116');
INSERT INTO cmseasy_b_area VALUES('130','石景山区','116');
INSERT INTO cmseasy_b_area VALUES('131','海淀区','116');
INSERT INTO cmseasy_b_area VALUES('132','门头沟区','116');
INSERT INTO cmseasy_b_area VALUES('133','房山区','116');
INSERT INTO cmseasy_b_area VALUES('134','通州区','116');
INSERT INTO cmseasy_b_area VALUES('135','顺义区','116');
INSERT INTO cmseasy_b_area VALUES('136','昌平区','116');
INSERT INTO cmseasy_b_area VALUES('137','大兴区','116');
INSERT INTO cmseasy_b_area VALUES('138','怀柔区','116');
INSERT INTO cmseasy_b_area VALUES('139','平谷区','116');
INSERT INTO cmseasy_b_area VALUES('140','密云县','117');
INSERT INTO cmseasy_b_area VALUES('141','延庆县','117');
INSERT INTO cmseasy_b_area VALUES('142','和平区','118');
INSERT INTO cmseasy_b_area VALUES('143','河东区','118');
INSERT INTO cmseasy_b_area VALUES('144','河西区','118');
INSERT INTO cmseasy_b_area VALUES('145','南开区','118');
INSERT INTO cmseasy_b_area VALUES('146','河北区','118');
INSERT INTO cmseasy_b_area VALUES('147','红桥区','118');
INSERT INTO cmseasy_b_area VALUES('148','塘沽区','118');
INSERT INTO cmseasy_b_area VALUES('149','汉沽区','118');
INSERT INTO cmseasy_b_area VALUES('150','大港区','118');
INSERT INTO cmseasy_b_area VALUES('151','东丽区','118');
INSERT INTO cmseasy_b_area VALUES('152','西青区','118');
INSERT INTO cmseasy_b_area VALUES('153','北辰区','118');
INSERT INTO cmseasy_b_area VALUES('154','津南区','118');
INSERT INTO cmseasy_b_area VALUES('155','武清区','118');
INSERT INTO cmseasy_b_area VALUES('156','宝坻区','118');
INSERT INTO cmseasy_b_area VALUES('157','静海县','119');
INSERT INTO cmseasy_b_area VALUES('158','宁河县','119');
INSERT INTO cmseasy_b_area VALUES('159','蓟县','119');
INSERT INTO cmseasy_b_area VALUES('160','黄浦区','122');
INSERT INTO cmseasy_b_area VALUES('161','卢湾区','122');
INSERT INTO cmseasy_b_area VALUES('162','徐汇区','122');
INSERT INTO cmseasy_b_area VALUES('163','徐家汇','122');
INSERT INTO cmseasy_b_area VALUES('164','长宁区','122');
INSERT INTO cmseasy_b_area VALUES('165','静安区','122');
INSERT INTO cmseasy_b_area VALUES('166','普陀区','122');
INSERT INTO cmseasy_b_area VALUES('167','闸北区','122');
INSERT INTO cmseasy_b_area VALUES('168','虹口区','122');
INSERT INTO cmseasy_b_area VALUES('169','杨浦区','122');
INSERT INTO cmseasy_b_area VALUES('170','宝山区','122');
INSERT INTO cmseasy_b_area VALUES('171','闵行区','122');
INSERT INTO cmseasy_b_area VALUES('172','嘉定区','122');
INSERT INTO cmseasy_b_area VALUES('173','浦东新区','122');
INSERT INTO cmseasy_b_area VALUES('174','松江区','122');
INSERT INTO cmseasy_b_area VALUES('175','金山区','122');
INSERT INTO cmseasy_b_area VALUES('176','青浦区','122');
INSERT INTO cmseasy_b_area VALUES('177','南汇区','122');
INSERT INTO cmseasy_b_area VALUES('178','奉贤区','122');
INSERT INTO cmseasy_b_area VALUES('179','崇明县','123');
INSERT INTO cmseasy_b_area VALUES('180','渝中区','120');
INSERT INTO cmseasy_b_area VALUES('181','大渡口区','120');
INSERT INTO cmseasy_b_area VALUES('182','江北区','120');
INSERT INTO cmseasy_b_area VALUES('183','沙坪坝区','120');
INSERT INTO cmseasy_b_area VALUES('184','九龙坡区','120');
INSERT INTO cmseasy_b_area VALUES('185','南岸区','120');
INSERT INTO cmseasy_b_area VALUES('186','北碚区','120');
INSERT INTO cmseasy_b_area VALUES('187','万盛区','120');
INSERT INTO cmseasy_b_area VALUES('188','双桥区','120');
INSERT INTO cmseasy_b_area VALUES('189','渝北区','120');
INSERT INTO cmseasy_b_area VALUES('190','巴南区','120');
INSERT INTO cmseasy_b_area VALUES('191','万州区','120');
INSERT INTO cmseasy_b_area VALUES('192','涪陵区','120');
INSERT INTO cmseasy_b_area VALUES('193','黔江区','120');
INSERT INTO cmseasy_b_area VALUES('194','长寿区','120');
INSERT INTO cmseasy_b_area VALUES('195','綦江县','121');
INSERT INTO cmseasy_b_area VALUES('196','潼南县','121');
INSERT INTO cmseasy_b_area VALUES('197','荣昌县','121');
INSERT INTO cmseasy_b_area VALUES('198','璧山县','121');
INSERT INTO cmseasy_b_area VALUES('199','大足县','121');
INSERT INTO cmseasy_b_area VALUES('200','铜梁县','121');
INSERT INTO cmseasy_b_area VALUES('201','梁平县','121');
INSERT INTO cmseasy_b_area VALUES('202','城口县','121');
INSERT INTO cmseasy_b_area VALUES('203','垫江县','121');
INSERT INTO cmseasy_b_area VALUES('204','武隆县','121');
INSERT INTO cmseasy_b_area VALUES('205','丰都县','121');
INSERT INTO cmseasy_b_area VALUES('206','奉节县','121');
INSERT INTO cmseasy_b_area VALUES('207','开县','121');
INSERT INTO cmseasy_b_area VALUES('208','云阳县','121');
INSERT INTO cmseasy_b_area VALUES('209','忠县','121');
INSERT INTO cmseasy_b_area VALUES('210','巫溪县','121');
INSERT INTO cmseasy_b_area VALUES('211','巫山县','121');
INSERT INTO cmseasy_b_area VALUES('212','石柱县','121');
INSERT INTO cmseasy_b_area VALUES('213','秀山县','121');
INSERT INTO cmseasy_b_area VALUES('214','酉阳县','121');
INSERT INTO cmseasy_b_area VALUES('215','彭水县','121');
INSERT INTO cmseasy_b_area VALUES('216','重庆辖市','103');
INSERT INTO cmseasy_b_area VALUES('217','永川市','216');
INSERT INTO cmseasy_b_area VALUES('218','合川市','216');
INSERT INTO cmseasy_b_area VALUES('219','江津市','216');
INSERT INTO cmseasy_b_area VALUES('220','南川市','216');
INSERT INTO cmseasy_b_area VALUES('221','沈阳市','87');
INSERT INTO cmseasy_b_area VALUES('222','大连市','87');
INSERT INTO cmseasy_b_area VALUES('223','鞍山市','87');
INSERT INTO cmseasy_b_area VALUES('224','抚顺市','87');
INSERT INTO cmseasy_b_area VALUES('225','本溪市','87');
INSERT INTO cmseasy_b_area VALUES('226','丹东市','87');
INSERT INTO cmseasy_b_area VALUES('227','锦州市','87');
INSERT INTO cmseasy_b_area VALUES('228','葫芦岛市','87');
INSERT INTO cmseasy_b_area VALUES('229','营口市','87');
INSERT INTO cmseasy_b_area VALUES('230','盘锦市','87');
INSERT INTO cmseasy_b_area VALUES('231','阜新市','87');
INSERT INTO cmseasy_b_area VALUES('232','辽阳市','87');
INSERT INTO cmseasy_b_area VALUES('233','铁岭市','87');
INSERT INTO cmseasy_b_area VALUES('234','朝阳市','87');
INSERT INTO cmseasy_b_area VALUES('235','长春市','88');
INSERT INTO cmseasy_b_area VALUES('236','吉林市','88');
INSERT INTO cmseasy_b_area VALUES('237','四平市','88');
INSERT INTO cmseasy_b_area VALUES('238','辽源市','88');
INSERT INTO cmseasy_b_area VALUES('239','通化市','88');
INSERT INTO cmseasy_b_area VALUES('240','白山市','88');
INSERT INTO cmseasy_b_area VALUES('241','延边朝鲜族自治州','88');
INSERT INTO cmseasy_b_area VALUES('242','白城市','88');
INSERT INTO cmseasy_b_area VALUES('243','松原市','88');
INSERT INTO cmseasy_b_area VALUES('244','哈尔滨市','89');
INSERT INTO cmseasy_b_area VALUES('245','齐齐哈尔市','89');
INSERT INTO cmseasy_b_area VALUES('246','鹤岗市','89');
INSERT INTO cmseasy_b_area VALUES('247','双鸭山市','89');
INSERT INTO cmseasy_b_area VALUES('248','鸡西市','89');
INSERT INTO cmseasy_b_area VALUES('249','大庆市','89');
INSERT INTO cmseasy_b_area VALUES('250','伊春市','89');
INSERT INTO cmseasy_b_area VALUES('251','牡丹江市','89');
INSERT INTO cmseasy_b_area VALUES('252','佳木斯市','89');
INSERT INTO cmseasy_b_area VALUES('253','七台河市','89');
INSERT INTO cmseasy_b_area VALUES('254','黑河市','89');
INSERT INTO cmseasy_b_area VALUES('255','绥化市','89');
INSERT INTO cmseasy_b_area VALUES('256','大兴安岭地区','89');
INSERT INTO cmseasy_b_area VALUES('257','石家庄市','84');
INSERT INTO cmseasy_b_area VALUES('258','唐山市','84');
INSERT INTO cmseasy_b_area VALUES('259','秦皇岛市','84');
INSERT INTO cmseasy_b_area VALUES('260','邯郸市','84');
INSERT INTO cmseasy_b_area VALUES('261','邢台市','84');
INSERT INTO cmseasy_b_area VALUES('262','保定市','84');
INSERT INTO cmseasy_b_area VALUES('263','张家口市','84');
INSERT INTO cmseasy_b_area VALUES('264','承德市','84');
INSERT INTO cmseasy_b_area VALUES('265','廊坊市','84');
INSERT INTO cmseasy_b_area VALUES('266','衡水市','84');
INSERT INTO cmseasy_b_area VALUES('267','沧州市','84');
INSERT INTO cmseasy_b_area VALUES('268','太原市','85');
INSERT INTO cmseasy_b_area VALUES('269','大同市','85');
INSERT INTO cmseasy_b_area VALUES('270','阳泉市','85');
INSERT INTO cmseasy_b_area VALUES('271','长治市','85');
INSERT INTO cmseasy_b_area VALUES('272','晋城市','85');
INSERT INTO cmseasy_b_area VALUES('273','朔州市','85');
INSERT INTO cmseasy_b_area VALUES('274','晋中市','85');
INSERT INTO cmseasy_b_area VALUES('275','运城市','85');
INSERT INTO cmseasy_b_area VALUES('276','忻州市','85');
INSERT INTO cmseasy_b_area VALUES('277','临汾市','85');
INSERT INTO cmseasy_b_area VALUES('278','吕梁地区','85');
INSERT INTO cmseasy_b_area VALUES('279','郑州市','97');
INSERT INTO cmseasy_b_area VALUES('280','开封市','97');
INSERT INTO cmseasy_b_area VALUES('281','平顶山市','97');
INSERT INTO cmseasy_b_area VALUES('282','焦作市','97');
INSERT INTO cmseasy_b_area VALUES('283','鹤壁市','97');
INSERT INTO cmseasy_b_area VALUES('284','新乡市','97');
INSERT INTO cmseasy_b_area VALUES('285','安阳市','97');
INSERT INTO cmseasy_b_area VALUES('286','濮阳市','97');
INSERT INTO cmseasy_b_area VALUES('287','许昌市','97');
INSERT INTO cmseasy_b_area VALUES('288','漯河市','97');
INSERT INTO cmseasy_b_area VALUES('289','三门峡市','97');
INSERT INTO cmseasy_b_area VALUES('290','南阳市','97');
INSERT INTO cmseasy_b_area VALUES('291','商丘市','97');
INSERT INTO cmseasy_b_area VALUES('292','信阳市','97');
INSERT INTO cmseasy_b_area VALUES('293','周口市','97');
INSERT INTO cmseasy_b_area VALUES('294','驻马店市','97');
INSERT INTO cmseasy_b_area VALUES('295','济南市','96');
INSERT INTO cmseasy_b_area VALUES('296','青岛市','96');
INSERT INTO cmseasy_b_area VALUES('297','淄博市','96');
INSERT INTO cmseasy_b_area VALUES('298','枣庄市','96');
INSERT INTO cmseasy_b_area VALUES('299','东营市','96');
INSERT INTO cmseasy_b_area VALUES('300','潍坊市','96');
INSERT INTO cmseasy_b_area VALUES('301','烟台市','96');
INSERT INTO cmseasy_b_area VALUES('302','威海市','96');
INSERT INTO cmseasy_b_area VALUES('303','济宁市','96');
INSERT INTO cmseasy_b_area VALUES('304','泰安市','96');
INSERT INTO cmseasy_b_area VALUES('305','日照市','96');
INSERT INTO cmseasy_b_area VALUES('306','莱芜市','96');
INSERT INTO cmseasy_b_area VALUES('307','临沂市','96');
INSERT INTO cmseasy_b_area VALUES('308','德州市','96');
INSERT INTO cmseasy_b_area VALUES('309','聊城市','96');
INSERT INTO cmseasy_b_area VALUES('310','滨州市','96');
INSERT INTO cmseasy_b_area VALUES('311','菏泽市','96');
INSERT INTO cmseasy_b_area VALUES('312','南京市','91');
INSERT INTO cmseasy_b_area VALUES('313','徐州市','91');
INSERT INTO cmseasy_b_area VALUES('314','连云港市','91');
INSERT INTO cmseasy_b_area VALUES('315','淮安市','91');
INSERT INTO cmseasy_b_area VALUES('316','宿迁市','91');
INSERT INTO cmseasy_b_area VALUES('317','盐城市','91');
INSERT INTO cmseasy_b_area VALUES('318','扬州市','91');
INSERT INTO cmseasy_b_area VALUES('319','泰州市','91');
INSERT INTO cmseasy_b_area VALUES('320','南通市','91');
INSERT INTO cmseasy_b_area VALUES('321','镇江市','91');
INSERT INTO cmseasy_b_area VALUES('322','常州市','91');
INSERT INTO cmseasy_b_area VALUES('323','无锡市','91');
INSERT INTO cmseasy_b_area VALUES('324','苏州市','91');
INSERT INTO cmseasy_b_area VALUES('325','合肥市','93');
INSERT INTO cmseasy_b_area VALUES('326','芜湖市','93');
INSERT INTO cmseasy_b_area VALUES('327','蚌埠市','93');
INSERT INTO cmseasy_b_area VALUES('328','淮南市','93');
INSERT INTO cmseasy_b_area VALUES('329','马鞍山市','93');
INSERT INTO cmseasy_b_area VALUES('330','淮北市','93');
INSERT INTO cmseasy_b_area VALUES('331','铜陵市','93');
INSERT INTO cmseasy_b_area VALUES('332','安庆市','93');
INSERT INTO cmseasy_b_area VALUES('333','黄山市','93');
INSERT INTO cmseasy_b_area VALUES('334','滁州市','93');
INSERT INTO cmseasy_b_area VALUES('335','阜阳市','93');
INSERT INTO cmseasy_b_area VALUES('336','宿州市','93');
INSERT INTO cmseasy_b_area VALUES('337','巢湖市','93');
INSERT INTO cmseasy_b_area VALUES('338','六安市','93');
INSERT INTO cmseasy_b_area VALUES('339','亳州市','93');
INSERT INTO cmseasy_b_area VALUES('340','池州市','93');
INSERT INTO cmseasy_b_area VALUES('341','宣城市','93');
INSERT INTO cmseasy_b_area VALUES('342','南昌市','95');
INSERT INTO cmseasy_b_area VALUES('343','景德镇市','95');
INSERT INTO cmseasy_b_area VALUES('344','萍乡市','95');
INSERT INTO cmseasy_b_area VALUES('345','九江市','95');
INSERT INTO cmseasy_b_area VALUES('346','新余市','95');
INSERT INTO cmseasy_b_area VALUES('347','鹰潭市','95');
INSERT INTO cmseasy_b_area VALUES('348','赣州市','95');
INSERT INTO cmseasy_b_area VALUES('349','吉安市','95');
INSERT INTO cmseasy_b_area VALUES('350','宜春市','95');
INSERT INTO cmseasy_b_area VALUES('351','抚州市','95');
INSERT INTO cmseasy_b_area VALUES('352','上饶市','95');
INSERT INTO cmseasy_b_area VALUES('353','杭州市','92');
INSERT INTO cmseasy_b_area VALUES('354','宁波市','92');
INSERT INTO cmseasy_b_area VALUES('355','温州市','92');
INSERT INTO cmseasy_b_area VALUES('356','嘉兴市','92');
INSERT INTO cmseasy_b_area VALUES('357','湖州市','92');
INSERT INTO cmseasy_b_area VALUES('358','绍兴市','92');
INSERT INTO cmseasy_b_area VALUES('359','金华市','92');
INSERT INTO cmseasy_b_area VALUES('360','衢州市','92');
INSERT INTO cmseasy_b_area VALUES('361','舟山市','92');
INSERT INTO cmseasy_b_area VALUES('362','台州市','92');
INSERT INTO cmseasy_b_area VALUES('363','丽水市','92');
INSERT INTO cmseasy_b_area VALUES('364','福州市','94');
INSERT INTO cmseasy_b_area VALUES('365','厦门市','94');
INSERT INTO cmseasy_b_area VALUES('366','三明市','94');
INSERT INTO cmseasy_b_area VALUES('367','莆田市','94');
INSERT INTO cmseasy_b_area VALUES('368','泉州市','94');
INSERT INTO cmseasy_b_area VALUES('369','漳州市','94');
INSERT INTO cmseasy_b_area VALUES('370','南平市','94');
INSERT INTO cmseasy_b_area VALUES('371','龙岩市','94');
INSERT INTO cmseasy_b_area VALUES('372','宁德市','94');
INSERT INTO cmseasy_b_area VALUES('373','广州市','100');
INSERT INTO cmseasy_b_area VALUES('374','深圳市','100');
INSERT INTO cmseasy_b_area VALUES('375','珠海市','100');
INSERT INTO cmseasy_b_area VALUES('376','汕头市','100');
INSERT INTO cmseasy_b_area VALUES('377','韶关市','100');
INSERT INTO cmseasy_b_area VALUES('378','惠州市','100');
INSERT INTO cmseasy_b_area VALUES('379','河源市','100');
INSERT INTO cmseasy_b_area VALUES('380','梅州市','100');
INSERT INTO cmseasy_b_area VALUES('381','汕尾市','100');
INSERT INTO cmseasy_b_area VALUES('382','东莞市','100');
INSERT INTO cmseasy_b_area VALUES('383','中山市','100');
INSERT INTO cmseasy_b_area VALUES('384','江门市','100');
INSERT INTO cmseasy_b_area VALUES('385','佛山市','100');
INSERT INTO cmseasy_b_area VALUES('386','阳江市','100');
INSERT INTO cmseasy_b_area VALUES('387','湛江市','100');
INSERT INTO cmseasy_b_area VALUES('388','茂名市','100');
INSERT INTO cmseasy_b_area VALUES('389','肇庆市','100');
INSERT INTO cmseasy_b_area VALUES('390','清远市','100');
INSERT INTO cmseasy_b_area VALUES('391','潮州市','100');
INSERT INTO cmseasy_b_area VALUES('392','揭阳市','100');
INSERT INTO cmseasy_b_area VALUES('393','云浮市','100');
INSERT INTO cmseasy_b_area VALUES('394','海口市','102');
INSERT INTO cmseasy_b_area VALUES('395','三亚市','102');
INSERT INTO cmseasy_b_area VALUES('396','省直辖行政单位','102');
INSERT INTO cmseasy_b_area VALUES('397','贵阳市','105');
INSERT INTO cmseasy_b_area VALUES('398','六盘水市','105');
INSERT INTO cmseasy_b_area VALUES('399','遵义市','105');
INSERT INTO cmseasy_b_area VALUES('400','安顺市','105');
INSERT INTO cmseasy_b_area VALUES('401','铜仁地区','105');
INSERT INTO cmseasy_b_area VALUES('402','毕节地区','105');
INSERT INTO cmseasy_b_area VALUES('403','黔西南布依族苗族自治州','105');
INSERT INTO cmseasy_b_area VALUES('404','黔东南南苗族侗族自治州','105');
INSERT INTO cmseasy_b_area VALUES('405','黔南布依族苗族自治州','105');
INSERT INTO cmseasy_b_area VALUES('406','昆明市','106');
INSERT INTO cmseasy_b_area VALUES('407','曲靖市','106');
INSERT INTO cmseasy_b_area VALUES('408','玉溪市','106');
INSERT INTO cmseasy_b_area VALUES('409','保山市','106');
INSERT INTO cmseasy_b_area VALUES('410','昭通市','106');
INSERT INTO cmseasy_b_area VALUES('411','思茅地区','106');
INSERT INTO cmseasy_b_area VALUES('412','临沧地区','106');
INSERT INTO cmseasy_b_area VALUES('413','丽江地区','106');
INSERT INTO cmseasy_b_area VALUES('414','文山壮族苗族自治州','106');
INSERT INTO cmseasy_b_area VALUES('415','红河哈尼族彝族自治州','106');
INSERT INTO cmseasy_b_area VALUES('416','西双版纳傣族自治州','106');
INSERT INTO cmseasy_b_area VALUES('417','楚雄彝族自治州','106');
INSERT INTO cmseasy_b_area VALUES('418','大理白族自治州','106');
INSERT INTO cmseasy_b_area VALUES('419','德宏傣族景颇族自治州','106');
INSERT INTO cmseasy_b_area VALUES('420','怒江傈僳族自治州','106');
INSERT INTO cmseasy_b_area VALUES('421','迪庆藏族自治州','106');
INSERT INTO cmseasy_b_area VALUES('422','成都市','104');
INSERT INTO cmseasy_b_area VALUES('423','自贡市','104');
INSERT INTO cmseasy_b_area VALUES('424','攀枝花市','104');
INSERT INTO cmseasy_b_area VALUES('425','泸州市','104');
INSERT INTO cmseasy_b_area VALUES('426','德阳市','104');
INSERT INTO cmseasy_b_area VALUES('427','绵阳市','104');
INSERT INTO cmseasy_b_area VALUES('428','广元市','104');
INSERT INTO cmseasy_b_area VALUES('429','遂宁市','104');
INSERT INTO cmseasy_b_area VALUES('430','内江市','104');
INSERT INTO cmseasy_b_area VALUES('431','乐山市','104');
INSERT INTO cmseasy_b_area VALUES('432','南充市','104');
INSERT INTO cmseasy_b_area VALUES('433','宜宾市','104');
INSERT INTO cmseasy_b_area VALUES('434','广安市','104');
INSERT INTO cmseasy_b_area VALUES('435','达州市','104');
INSERT INTO cmseasy_b_area VALUES('436','眉山市','104');
INSERT INTO cmseasy_b_area VALUES('437','雅安市','104');
INSERT INTO cmseasy_b_area VALUES('438','巴中市','104');
INSERT INTO cmseasy_b_area VALUES('439','资阳市','104');
INSERT INTO cmseasy_b_area VALUES('440','阿坝藏族羌族自治州','104');
INSERT INTO cmseasy_b_area VALUES('441','甘孜藏族自治州','104');
INSERT INTO cmseasy_b_area VALUES('442','凉山彝族自治州','104');
INSERT INTO cmseasy_b_area VALUES('443','长沙市','99');
INSERT INTO cmseasy_b_area VALUES('444','株洲市','99');
INSERT INTO cmseasy_b_area VALUES('445','湘潭市','99');
INSERT INTO cmseasy_b_area VALUES('446','衡阳市','99');
INSERT INTO cmseasy_b_area VALUES('447','邵阳市','99');
INSERT INTO cmseasy_b_area VALUES('448','岳阳市','99');
INSERT INTO cmseasy_b_area VALUES('449','常德市','99');
INSERT INTO cmseasy_b_area VALUES('450','张家界市','99');
INSERT INTO cmseasy_b_area VALUES('451','益阳市','99');
INSERT INTO cmseasy_b_area VALUES('452','郴州市','99');
INSERT INTO cmseasy_b_area VALUES('453','永州市','99');
INSERT INTO cmseasy_b_area VALUES('454','怀化市','99');
INSERT INTO cmseasy_b_area VALUES('455','娄底市','99');
INSERT INTO cmseasy_b_area VALUES('456','湘西土家族苗族自治州','99');
INSERT INTO cmseasy_b_area VALUES('457','武汉市','98');
INSERT INTO cmseasy_b_area VALUES('458','黄石市','98');
INSERT INTO cmseasy_b_area VALUES('459','襄樊市','98');
INSERT INTO cmseasy_b_area VALUES('460','十堰市','98');
INSERT INTO cmseasy_b_area VALUES('461','荆州市','98');
INSERT INTO cmseasy_b_area VALUES('462','宜昌市','98');
INSERT INTO cmseasy_b_area VALUES('463','荆门市','98');
INSERT INTO cmseasy_b_area VALUES('464','鄂州市','98');
INSERT INTO cmseasy_b_area VALUES('465','孝感市','98');
INSERT INTO cmseasy_b_area VALUES('466','黄冈市','98');
INSERT INTO cmseasy_b_area VALUES('467','咸宁市','98');
INSERT INTO cmseasy_b_area VALUES('468','随州市','98');
INSERT INTO cmseasy_b_area VALUES('469','恩施土家族苗族自治州','98');
INSERT INTO cmseasy_b_area VALUES('470','省直辖行政单位','98');
INSERT INTO cmseasy_b_area VALUES('471','西安市','108');
INSERT INTO cmseasy_b_area VALUES('472','铜川市','108');
INSERT INTO cmseasy_b_area VALUES('473','宝鸡市','108');
INSERT INTO cmseasy_b_area VALUES('474','咸阳市','108');
INSERT INTO cmseasy_b_area VALUES('475','渭南市','108');
INSERT INTO cmseasy_b_area VALUES('476','延安市','108');
INSERT INTO cmseasy_b_area VALUES('477','汉中市','108');
INSERT INTO cmseasy_b_area VALUES('478','榆林市','108');
INSERT INTO cmseasy_b_area VALUES('479','安康市','108');
INSERT INTO cmseasy_b_area VALUES('480','商洛市','108');
INSERT INTO cmseasy_b_area VALUES('481','兰州市','109');
INSERT INTO cmseasy_b_area VALUES('482','金昌市','109');
INSERT INTO cmseasy_b_area VALUES('483','白银市','109');
INSERT INTO cmseasy_b_area VALUES('484','天水市','109');
INSERT INTO cmseasy_b_area VALUES('485','嘉峪关市','109');
INSERT INTO cmseasy_b_area VALUES('486','武威市','109');
INSERT INTO cmseasy_b_area VALUES('487','张掖市','109');
INSERT INTO cmseasy_b_area VALUES('488','平凉市','109');
INSERT INTO cmseasy_b_area VALUES('489','酒泉市','109');
INSERT INTO cmseasy_b_area VALUES('490','庆阳市','109');
INSERT INTO cmseasy_b_area VALUES('491','定西地区','109');
INSERT INTO cmseasy_b_area VALUES('492','陇南地区','109');
INSERT INTO cmseasy_b_area VALUES('493','甘南藏族自治州','109');
INSERT INTO cmseasy_b_area VALUES('494','临夏回族自治州','109');
INSERT INTO cmseasy_b_area VALUES('495','西宁市','110');
INSERT INTO cmseasy_b_area VALUES('496','海东地区','110');
INSERT INTO cmseasy_b_area VALUES('497','海北藏族自治州','110');
INSERT INTO cmseasy_b_area VALUES('498','黄南藏族自治州','110');
INSERT INTO cmseasy_b_area VALUES('499','海南藏族自治州','110');
INSERT INTO cmseasy_b_area VALUES('500','果洛藏族自治州','110');
INSERT INTO cmseasy_b_area VALUES('501','玉树藏族自治州','110');
INSERT INTO cmseasy_b_area VALUES('502','海西蒙古族藏族自治州','110');
INSERT INTO cmseasy_b_area VALUES('503','呼和浩特市','86');
INSERT INTO cmseasy_b_area VALUES('504','包头市','86');
INSERT INTO cmseasy_b_area VALUES('505','乌海市','86');
INSERT INTO cmseasy_b_area VALUES('506','赤峰市','86');
INSERT INTO cmseasy_b_area VALUES('507','通辽市','86');
INSERT INTO cmseasy_b_area VALUES('508','鄂尔多斯市','86');
INSERT INTO cmseasy_b_area VALUES('509','呼伦贝尔市','86');
INSERT INTO cmseasy_b_area VALUES('510','乌兰察布盟','86');
INSERT INTO cmseasy_b_area VALUES('511','锡林郭勒盟','86');
INSERT INTO cmseasy_b_area VALUES('512','巴彦淖尔盟','86');
INSERT INTO cmseasy_b_area VALUES('513','阿拉善盟','86');
INSERT INTO cmseasy_b_area VALUES('514','兴安盟','86');
INSERT INTO cmseasy_b_area VALUES('515','拉萨市','107');
INSERT INTO cmseasy_b_area VALUES('516','那曲地区','107');
INSERT INTO cmseasy_b_area VALUES('517','昌都地区','107');
INSERT INTO cmseasy_b_area VALUES('518','山南地区','107');
INSERT INTO cmseasy_b_area VALUES('519','日喀则地区','107');
INSERT INTO cmseasy_b_area VALUES('520','阿里地区','107');
INSERT INTO cmseasy_b_area VALUES('521','林芝地区','107');
INSERT INTO cmseasy_b_area VALUES('522','乌鲁木齐市','112');
INSERT INTO cmseasy_b_area VALUES('523','克拉玛依市','112');
INSERT INTO cmseasy_b_area VALUES('524','吐鲁番地区','112');
INSERT INTO cmseasy_b_area VALUES('525','哈密地区','112');
INSERT INTO cmseasy_b_area VALUES('526','和田地区','112');
INSERT INTO cmseasy_b_area VALUES('527','阿克苏地区','112');
INSERT INTO cmseasy_b_area VALUES('528','喀什地区','112');
INSERT INTO cmseasy_b_area VALUES('529','克孜勒苏柯尔克孜自治州','112');
INSERT INTO cmseasy_b_area VALUES('530','巴音郭楞州','112');
INSERT INTO cmseasy_b_area VALUES('531','昌吉州','112');
INSERT INTO cmseasy_b_area VALUES('532','博尔塔拉州','112');
INSERT INTO cmseasy_b_area VALUES('533','伊犁哈萨克自治州','112');
INSERT INTO cmseasy_b_area VALUES('534','塔城地区','112');
INSERT INTO cmseasy_b_area VALUES('535','阿勒泰州','112');
INSERT INTO cmseasy_b_area VALUES('536','省直辖行政单位','112');
INSERT INTO cmseasy_b_area VALUES('537','南宁市','101');
INSERT INTO cmseasy_b_area VALUES('538','柳州市','101');
INSERT INTO cmseasy_b_area VALUES('539','桂林市','101');
INSERT INTO cmseasy_b_area VALUES('540','梧州市','101');
INSERT INTO cmseasy_b_area VALUES('541','北海市','101');
INSERT INTO cmseasy_b_area VALUES('542','防城港市','101');
INSERT INTO cmseasy_b_area VALUES('543','钦州市','101');
INSERT INTO cmseasy_b_area VALUES('544','贵港市','101');
INSERT INTO cmseasy_b_area VALUES('545','玉林市','101');
INSERT INTO cmseasy_b_area VALUES('546','百色市','101');
INSERT INTO cmseasy_b_area VALUES('547','贺州市','101');
INSERT INTO cmseasy_b_area VALUES('548','河池市','101');
INSERT INTO cmseasy_b_area VALUES('549','来宾市','101');
INSERT INTO cmseasy_b_area VALUES('550','崇左市','101');
INSERT INTO cmseasy_b_area VALUES('551','银川市','111');
INSERT INTO cmseasy_b_area VALUES('552','石嘴山市','111');
INSERT INTO cmseasy_b_area VALUES('553','吴忠市','111');
INSERT INTO cmseasy_b_area VALUES('554','固原市','111');
INSERT INTO cmseasy_b_area VALUES('557','台北市','113');
INSERT INTO cmseasy_b_area VALUES('558','高雄市','113');
INSERT INTO cmseasy_b_area VALUES('559','基隆市','113');
INSERT INTO cmseasy_b_area VALUES('560','台中市','113');
INSERT INTO cmseasy_b_area VALUES('561','台南市','113');
INSERT INTO cmseasy_b_area VALUES('562','新竹市','113');
INSERT INTO cmseasy_b_area VALUES('563','嘉义市','113');
INSERT INTO cmseasy_b_area VALUES('564','北县','113');
INSERT INTO cmseasy_b_area VALUES('565','板桥市','113');
INSERT INTO cmseasy_b_area VALUES('566','宜兰县','113');
INSERT INTO cmseasy_b_area VALUES('567','宜兰市','113');
INSERT INTO cmseasy_b_area VALUES('568','桃园县','113');
INSERT INTO cmseasy_b_area VALUES('569','桃园市','113');
INSERT INTO cmseasy_b_area VALUES('570','新竹县','113');
INSERT INTO cmseasy_b_area VALUES('571','竹北市','113');
INSERT INTO cmseasy_b_area VALUES('572','苗栗县','113');
INSERT INTO cmseasy_b_area VALUES('573','苗栗市','113');
INSERT INTO cmseasy_b_area VALUES('574','台中县','113');
INSERT INTO cmseasy_b_area VALUES('575','丰原市','113');
INSERT INTO cmseasy_b_area VALUES('576','彰化县','113');
INSERT INTO cmseasy_b_area VALUES('577','彰化市','113');
INSERT INTO cmseasy_b_area VALUES('578','南投县','113');
INSERT INTO cmseasy_b_area VALUES('579','南投市','113');
INSERT INTO cmseasy_b_area VALUES('580','云林县','113');
INSERT INTO cmseasy_b_area VALUES('581','斗六市','113');
INSERT INTO cmseasy_b_area VALUES('582','嘉义县','113');
INSERT INTO cmseasy_b_area VALUES('583','太保市','113');
INSERT INTO cmseasy_b_area VALUES('584','台南县','113');
INSERT INTO cmseasy_b_area VALUES('585','新营市','113');
INSERT INTO cmseasy_b_area VALUES('586','高雄县','113');
INSERT INTO cmseasy_b_area VALUES('587','凤山市','113');
INSERT INTO cmseasy_b_area VALUES('588','屏东县','113');
INSERT INTO cmseasy_b_area VALUES('589','屏东市','113');
INSERT INTO cmseasy_b_area VALUES('590','澎湖县','113');
INSERT INTO cmseasy_b_area VALUES('591','马东市','113');
INSERT INTO cmseasy_b_area VALUES('592','台东县','113');
INSERT INTO cmseasy_b_area VALUES('593','台东市','113');
INSERT INTO cmseasy_b_area VALUES('594','花莲县','113');
INSERT INTO cmseasy_b_area VALUES('595','花莲市','113');
INSERT INTO cmseasy_b_area VALUES('596','金门县','113');
INSERT INTO cmseasy_b_area VALUES('597','连江县','113');
INSERT INTO cmseasy_b_area VALUES('598','九龙城区','114');
INSERT INTO cmseasy_b_area VALUES('599','观塘区','114');
INSERT INTO cmseasy_b_area VALUES('600','深水埗区','114');
INSERT INTO cmseasy_b_area VALUES('601','黄大仙区','114');
INSERT INTO cmseasy_b_area VALUES('602','湾仔区','114');
INSERT INTO cmseasy_b_area VALUES('603','油尖旺区','114');
INSERT INTO cmseasy_b_area VALUES('604','离岛区','114');
INSERT INTO cmseasy_b_area VALUES('605','葵青区','114');
INSERT INTO cmseasy_b_area VALUES('606','西贡区','114');
INSERT INTO cmseasy_b_area VALUES('607','沙田区','114');
INSERT INTO cmseasy_b_area VALUES('608','屯门区','114');
INSERT INTO cmseasy_b_area VALUES('609','大埔区','114');
INSERT INTO cmseasy_b_area VALUES('610','荃湾区','114');
INSERT INTO cmseasy_b_area VALUES('611','元朗区','114');
INSERT INTO cmseasy_b_area VALUES('612','花王堂區','115');
INSERT INTO cmseasy_b_area VALUES('613','望德堂區','115');
INSERT INTO cmseasy_b_area VALUES('614','風順堂區','115');
INSERT INTO cmseasy_b_area VALUES('615','大堂區','115');
INSERT INTO cmseasy_b_area VALUES('616','花地瑪堂區','115');
INSERT INTO cmseasy_b_area VALUES('617','嘉模堂區(氹仔)','115');
INSERT INTO cmseasy_b_area VALUES('618','聖方濟各堂區(路環)','115');
INSERT INTO cmseasy_b_area VALUES('619','芙蓉区','443');
INSERT INTO cmseasy_b_area VALUES('620','岳麓区','443');
INSERT INTO cmseasy_b_area VALUES('621','雨花区','443');
INSERT INTO cmseasy_b_area VALUES('622','望城县','443');
INSERT INTO cmseasy_b_area VALUES('623','浏阳市','443');
INSERT INTO cmseasy_b_area VALUES('624','天心区','443');
INSERT INTO cmseasy_b_area VALUES('625','开福区','443');
INSERT INTO cmseasy_b_area VALUES('626','长沙县','443');
INSERT INTO cmseasy_b_area VALUES('627','宁乡县','443');
INSERT INTO cmseasy_b_area VALUES('629','荷塘区','444');
INSERT INTO cmseasy_b_area VALUES('630','石峰区','444');
INSERT INTO cmseasy_b_area VALUES('631','株洲县','444');
INSERT INTO cmseasy_b_area VALUES('632','茶陵县','444');
INSERT INTO cmseasy_b_area VALUES('633','醴陵市','444');
INSERT INTO cmseasy_b_area VALUES('634','芦淞区','444');
INSERT INTO cmseasy_b_area VALUES('635','天元区','444');
INSERT INTO cmseasy_b_area VALUES('636','攸县','444');
INSERT INTO cmseasy_b_area VALUES('637','炎陵县','444');
INSERT INTO cmseasy_b_area VALUES('638','雨湖区','445');
INSERT INTO cmseasy_b_area VALUES('639','湘潭县','445');
INSERT INTO cmseasy_b_area VALUES('640','韶山市','445');
INSERT INTO cmseasy_b_area VALUES('641','岳塘区','445');
INSERT INTO cmseasy_b_area VALUES('642','湘乡市','445');
INSERT INTO cmseasy_b_area VALUES('643','珠晖区','446');
INSERT INTO cmseasy_b_area VALUES('644','石鼓区','446');
INSERT INTO cmseasy_b_area VALUES('645','南岳区','446');
INSERT INTO cmseasy_b_area VALUES('646','衡南县','446');
INSERT INTO cmseasy_b_area VALUES('647','衡东县','446');
INSERT INTO cmseasy_b_area VALUES('648','耒阳市','446');
INSERT INTO cmseasy_b_area VALUES('649','常宁市','446');
INSERT INTO cmseasy_b_area VALUES('650','雁峰区','446');
INSERT INTO cmseasy_b_area VALUES('651','蒸湘区','446');
INSERT INTO cmseasy_b_area VALUES('652','衡阳县','446');
INSERT INTO cmseasy_b_area VALUES('653','衡山县','446');
INSERT INTO cmseasy_b_area VALUES('654','祁东县','446');
INSERT INTO cmseasy_b_area VALUES('655','双清区','447');
INSERT INTO cmseasy_b_area VALUES('656','北塔区','447');
INSERT INTO cmseasy_b_area VALUES('657','新邵县','447');
INSERT INTO cmseasy_b_area VALUES('658','隆回县','447');
INSERT INTO cmseasy_b_area VALUES('659','绥宁县','447');
INSERT INTO cmseasy_b_area VALUES('660','城步苗族自治县','447');
INSERT INTO cmseasy_b_area VALUES('661','武冈市','447');
INSERT INTO cmseasy_b_area VALUES('662','大祥区','447');
INSERT INTO cmseasy_b_area VALUES('663','邵东县','447');
INSERT INTO cmseasy_b_area VALUES('664','邵阳县','447');
INSERT INTO cmseasy_b_area VALUES('665','洞口县','447');
INSERT INTO cmseasy_b_area VALUES('666','新宁县','447');
INSERT INTO cmseasy_b_area VALUES('667','临湘市','448');
INSERT INTO cmseasy_b_area VALUES('668','岳阳楼区','448');
INSERT INTO cmseasy_b_area VALUES('669','君山区','448');
INSERT INTO cmseasy_b_area VALUES('670','华容县','448');
INSERT INTO cmseasy_b_area VALUES('671','平江县','448');
INSERT INTO cmseasy_b_area VALUES('672','云溪区','448');
INSERT INTO cmseasy_b_area VALUES('673','岳阳县','448');
INSERT INTO cmseasy_b_area VALUES('674','湘阴县','448');
INSERT INTO cmseasy_b_area VALUES('675','汨罗市','448');
INSERT INTO cmseasy_b_area VALUES('676','武陵区','449');
INSERT INTO cmseasy_b_area VALUES('677','安乡县','449');
INSERT INTO cmseasy_b_area VALUES('678','澧县','449');
INSERT INTO cmseasy_b_area VALUES('679','桃源县','449');
INSERT INTO cmseasy_b_area VALUES('680','津市市','449');
INSERT INTO cmseasy_b_area VALUES('681','鼎城区','449');
INSERT INTO cmseasy_b_area VALUES('682','汉寿县','449');
INSERT INTO cmseasy_b_area VALUES('683','临澧县','449');
INSERT INTO cmseasy_b_area VALUES('684','石门县','449');
INSERT INTO cmseasy_b_area VALUES('685','永定区','450');
INSERT INTO cmseasy_b_area VALUES('686','慈利县','450');
INSERT INTO cmseasy_b_area VALUES('687','桑植县','450');
INSERT INTO cmseasy_b_area VALUES('688','武陵源区','450');
INSERT INTO cmseasy_b_area VALUES('689','资阳区','451');
INSERT INTO cmseasy_b_area VALUES('690','南县','451');
INSERT INTO cmseasy_b_area VALUES('691','安化县','451');
INSERT INTO cmseasy_b_area VALUES('692','沅江市','451');
INSERT INTO cmseasy_b_area VALUES('693','赫山区','451');
INSERT INTO cmseasy_b_area VALUES('694','桃江县','451');
INSERT INTO cmseasy_b_area VALUES('695','北湖区','452');
INSERT INTO cmseasy_b_area VALUES('696','桂阳县','452');
INSERT INTO cmseasy_b_area VALUES('697','永兴县','452');
INSERT INTO cmseasy_b_area VALUES('698','临武县','452');
INSERT INTO cmseasy_b_area VALUES('699','桂东县','452');
INSERT INTO cmseasy_b_area VALUES('700','资兴市','452');
INSERT INTO cmseasy_b_area VALUES('701','苏仙区','452');
INSERT INTO cmseasy_b_area VALUES('702','宜章县','452');
INSERT INTO cmseasy_b_area VALUES('703','嘉禾县','452');
INSERT INTO cmseasy_b_area VALUES('704','汝城县','452');
INSERT INTO cmseasy_b_area VALUES('705','安仁县','452');
INSERT INTO cmseasy_b_area VALUES('706','芝山区','453');
INSERT INTO cmseasy_b_area VALUES('707','祁阳县','453');
INSERT INTO cmseasy_b_area VALUES('708','双牌县','453');
INSERT INTO cmseasy_b_area VALUES('709','江永县','453');
INSERT INTO cmseasy_b_area VALUES('710','蓝山县','453');
INSERT INTO cmseasy_b_area VALUES('711','江华瑶族自治县','453');
INSERT INTO cmseasy_b_area VALUES('712','冷水滩区','453');
INSERT INTO cmseasy_b_area VALUES('713','东安县','453');
INSERT INTO cmseasy_b_area VALUES('714','道县','453');
INSERT INTO cmseasy_b_area VALUES('715','宁远县','453');
INSERT INTO cmseasy_b_area VALUES('716','新田县','453');
INSERT INTO cmseasy_b_area VALUES('717','鹤城区','454');
INSERT INTO cmseasy_b_area VALUES('718','沅陵县','454');
INSERT INTO cmseasy_b_area VALUES('719','溆浦县','454');
INSERT INTO cmseasy_b_area VALUES('720','麻阳苗族自治县','454');
INSERT INTO cmseasy_b_area VALUES('721','芷江侗族自治县','454');
INSERT INTO cmseasy_b_area VALUES('722','通道侗族自治县','454');
INSERT INTO cmseasy_b_area VALUES('723','洪江市','454');
INSERT INTO cmseasy_b_area VALUES('724','中方县','454');
INSERT INTO cmseasy_b_area VALUES('725','辰溪县','454');
INSERT INTO cmseasy_b_area VALUES('726','会同县','454');
INSERT INTO cmseasy_b_area VALUES('727','新晃侗族自治县','454');
INSERT INTO cmseasy_b_area VALUES('728','靖州苗族侗族自治县','454');
INSERT INTO cmseasy_b_area VALUES('729','娄星区','455');
INSERT INTO cmseasy_b_area VALUES('730','新化县','455');
INSERT INTO cmseasy_b_area VALUES('731','涟源市','455');
INSERT INTO cmseasy_b_area VALUES('732','双峰县','455');
INSERT INTO cmseasy_b_area VALUES('733','冷水江市','455');
INSERT INTO cmseasy_b_area VALUES('734','吉首市','456');
INSERT INTO cmseasy_b_area VALUES('735','凤凰县','456');
INSERT INTO cmseasy_b_area VALUES('736','保靖县','456');
INSERT INTO cmseasy_b_area VALUES('737','永顺县','456');
INSERT INTO cmseasy_b_area VALUES('738','龙山县','456');
INSERT INTO cmseasy_b_area VALUES('739','泸溪县','456');
INSERT INTO cmseasy_b_area VALUES('740','花垣县','456');
INSERT INTO cmseasy_b_area VALUES('741','古丈县','456');
INSERT INTO cmseasy_b_area VALUES('742','和平区','221');
INSERT INTO cmseasy_b_area VALUES('743','大东区','221');
INSERT INTO cmseasy_b_area VALUES('744','铁西区','221');
INSERT INTO cmseasy_b_area VALUES('745','东陵区','221');
INSERT INTO cmseasy_b_area VALUES('746','于洪区','221');
INSERT INTO cmseasy_b_area VALUES('747','康平县','221');
INSERT INTO cmseasy_b_area VALUES('748','新民市','221');
INSERT INTO cmseasy_b_area VALUES('749','沈河区','221');
INSERT INTO cmseasy_b_area VALUES('750','皇姑区','221');
INSERT INTO cmseasy_b_area VALUES('751','苏家屯区','221');
INSERT INTO cmseasy_b_area VALUES('752','新城子区','221');
INSERT INTO cmseasy_b_area VALUES('753','辽中县','221');
INSERT INTO cmseasy_b_area VALUES('754','法库县','221');
INSERT INTO cmseasy_b_area VALUES('755','中山区','222');
INSERT INTO cmseasy_b_area VALUES('756','沙河口区','222');
INSERT INTO cmseasy_b_area VALUES('757','旅顺口区','222');
INSERT INTO cmseasy_b_area VALUES('758','长海县','222');
INSERT INTO cmseasy_b_area VALUES('759','普兰店市','222');
INSERT INTO cmseasy_b_area VALUES('760','庄河市','222');
INSERT INTO cmseasy_b_area VALUES('761','西岗区','222');
INSERT INTO cmseasy_b_area VALUES('762','甘井子区','222');
INSERT INTO cmseasy_b_area VALUES('763','金州区','222');
INSERT INTO cmseasy_b_area VALUES('764','瓦房店市','222');
INSERT INTO cmseasy_b_area VALUES('765','铁东区','223');
INSERT INTO cmseasy_b_area VALUES('766','立山区','223');
INSERT INTO cmseasy_b_area VALUES('767','台安县','223');
INSERT INTO cmseasy_b_area VALUES('768','海城市','223');
INSERT INTO cmseasy_b_area VALUES('769','铁西区','223');
INSERT INTO cmseasy_b_area VALUES('770','千山区','223');
INSERT INTO cmseasy_b_area VALUES('771','岫岩满族自治县','223');
INSERT INTO cmseasy_b_area VALUES('772','新抚区','224');
INSERT INTO cmseasy_b_area VALUES('773','望花区','224');
INSERT INTO cmseasy_b_area VALUES('774','抚顺县','224');
INSERT INTO cmseasy_b_area VALUES('775','清原满族自治县','224');
INSERT INTO cmseasy_b_area VALUES('776','东洲区','224');
INSERT INTO cmseasy_b_area VALUES('777','顺城区','224');
INSERT INTO cmseasy_b_area VALUES('778','新宾满族自治县','224');
INSERT INTO cmseasy_b_area VALUES('779','平山区','225');
INSERT INTO cmseasy_b_area VALUES('780','明山区','225');
INSERT INTO cmseasy_b_area VALUES('781','本溪满族自治县','225');
INSERT INTO cmseasy_b_area VALUES('782','桓仁满族自治县','225');
INSERT INTO cmseasy_b_area VALUES('783','溪湖区','225');
INSERT INTO cmseasy_b_area VALUES('784','南芬区','225');
INSERT INTO cmseasy_b_area VALUES('785','元宝区','226');
INSERT INTO cmseasy_b_area VALUES('786','振安区','226');
INSERT INTO cmseasy_b_area VALUES('787','东港市','226');
INSERT INTO cmseasy_b_area VALUES('788','凤城市','226');
INSERT INTO cmseasy_b_area VALUES('789','振兴区','226');
INSERT INTO cmseasy_b_area VALUES('790','宽甸满族自治县','226');
INSERT INTO cmseasy_b_area VALUES('791','古塔区','227');
INSERT INTO cmseasy_b_area VALUES('792','太和区','227');
INSERT INTO cmseasy_b_area VALUES('793','义县','227');
INSERT INTO cmseasy_b_area VALUES('794','北宁市','227');
INSERT INTO cmseasy_b_area VALUES('795','凌河区','227');
INSERT INTO cmseasy_b_area VALUES('796','黑山县','227');
INSERT INTO cmseasy_b_area VALUES('797','凌海市','227');
INSERT INTO cmseasy_b_area VALUES('798','连山区','228');
INSERT INTO cmseasy_b_area VALUES('799','南票区','228');
INSERT INTO cmseasy_b_area VALUES('800','建昌县','228');
INSERT INTO cmseasy_b_area VALUES('801','兴城市','228');
INSERT INTO cmseasy_b_area VALUES('802','龙港区','228');
INSERT INTO cmseasy_b_area VALUES('803','绥中县','228');
INSERT INTO cmseasy_b_area VALUES('804','站前区','229');
INSERT INTO cmseasy_b_area VALUES('805','鲅鱼圈区','229');
INSERT INTO cmseasy_b_area VALUES('806','盖州市','229');
INSERT INTO cmseasy_b_area VALUES('807','大石桥市','229');
INSERT INTO cmseasy_b_area VALUES('808','西市区','229');
INSERT INTO cmseasy_b_area VALUES('809','老边区','229');
INSERT INTO cmseasy_b_area VALUES('810','双台子区','230');
INSERT INTO cmseasy_b_area VALUES('811','大洼县','230');
INSERT INTO cmseasy_b_area VALUES('812','盘山县','230');
INSERT INTO cmseasy_b_area VALUES('813','兴隆台区','230');
INSERT INTO cmseasy_b_area VALUES('814','海州区','231');
INSERT INTO cmseasy_b_area VALUES('815','太平区','231');
INSERT INTO cmseasy_b_area VALUES('816','细河区','231');
INSERT INTO cmseasy_b_area VALUES('817','彰武县','231');
INSERT INTO cmseasy_b_area VALUES('818','新邱区','231');
INSERT INTO cmseasy_b_area VALUES('819','清河门区','231');
INSERT INTO cmseasy_b_area VALUES('820','阜新蒙古族自治县','231');
INSERT INTO cmseasy_b_area VALUES('821','白塔区','232');
INSERT INTO cmseasy_b_area VALUES('822','宏伟区','232');
INSERT INTO cmseasy_b_area VALUES('823','太子河区','232');
INSERT INTO cmseasy_b_area VALUES('824','灯塔市','232');
INSERT INTO cmseasy_b_area VALUES('825','文圣区','232');
INSERT INTO cmseasy_b_area VALUES('826','弓长岭区','232');
INSERT INTO cmseasy_b_area VALUES('827','辽阳县','232');
INSERT INTO cmseasy_b_area VALUES('828','银州区','233');
INSERT INTO cmseasy_b_area VALUES('829','铁岭县','233');
INSERT INTO cmseasy_b_area VALUES('830','昌图县','233');
INSERT INTO cmseasy_b_area VALUES('831','开原市','233');
INSERT INTO cmseasy_b_area VALUES('832','清河区','233');
INSERT INTO cmseasy_b_area VALUES('833','西丰县','233');
INSERT INTO cmseasy_b_area VALUES('834','双塔区','234');
INSERT INTO cmseasy_b_area VALUES('835','朝阳县','234');
INSERT INTO cmseasy_b_area VALUES('836','喀喇沁左翼蒙古族自治县','234');
INSERT INTO cmseasy_b_area VALUES('837','凌源市','234');
INSERT INTO cmseasy_b_area VALUES('838','龙城区','234');
INSERT INTO cmseasy_b_area VALUES('839','建平县','234');
INSERT INTO cmseasy_b_area VALUES('840','北票市','234');
INSERT INTO cmseasy_b_area VALUES('841','南关区','235');
INSERT INTO cmseasy_b_area VALUES('842','朝阳区','235');
INSERT INTO cmseasy_b_area VALUES('843','绿园区','235');
INSERT INTO cmseasy_b_area VALUES('844','农安县','235');
INSERT INTO cmseasy_b_area VALUES('845','榆树市','235');
INSERT INTO cmseasy_b_area VALUES('846','德惠市','235');
INSERT INTO cmseasy_b_area VALUES('847','宽城区','235');
INSERT INTO cmseasy_b_area VALUES('848','二道区','235');
INSERT INTO cmseasy_b_area VALUES('849','双阳区','235');
INSERT INTO cmseasy_b_area VALUES('850','九台市','235');
INSERT INTO cmseasy_b_area VALUES('851','昌邑区','236');
INSERT INTO cmseasy_b_area VALUES('852','船营区','236');
INSERT INTO cmseasy_b_area VALUES('853','永吉县','236');
INSERT INTO cmseasy_b_area VALUES('854','桦甸市','236');
INSERT INTO cmseasy_b_area VALUES('855','磐石市','236');
INSERT INTO cmseasy_b_area VALUES('856','龙潭区','236');
INSERT INTO cmseasy_b_area VALUES('857','丰满区','236');
INSERT INTO cmseasy_b_area VALUES('858','蛟河市','236');
INSERT INTO cmseasy_b_area VALUES('859','舒兰市','236');
INSERT INTO cmseasy_b_area VALUES('860','铁西区','237');
INSERT INTO cmseasy_b_area VALUES('861','梨树县','237');
INSERT INTO cmseasy_b_area VALUES('862','公主岭市','237');
INSERT INTO cmseasy_b_area VALUES('863','双辽市','237');
INSERT INTO cmseasy_b_area VALUES('864','铁东区','237');
INSERT INTO cmseasy_b_area VALUES('865','伊通满族自治县','237');
INSERT INTO cmseasy_b_area VALUES('866','龙山区','238');
INSERT INTO cmseasy_b_area VALUES('867','东丰县','238');
INSERT INTO cmseasy_b_area VALUES('868','东辽县','238');
INSERT INTO cmseasy_b_area VALUES('869','西安区','238');
INSERT INTO cmseasy_b_area VALUES('870','东昌区','239');
INSERT INTO cmseasy_b_area VALUES('871','通化县','239');
INSERT INTO cmseasy_b_area VALUES('872','柳河县','239');
INSERT INTO cmseasy_b_area VALUES('873','集安市','239');
INSERT INTO cmseasy_b_area VALUES('874','二道江区','239');
INSERT INTO cmseasy_b_area VALUES('875','辉南县','239');
INSERT INTO cmseasy_b_area VALUES('876','梅河口市','239');
INSERT INTO cmseasy_b_area VALUES('877','八道江区','240');
INSERT INTO cmseasy_b_area VALUES('878','靖宇县','240');
INSERT INTO cmseasy_b_area VALUES('879','江源县','240');
INSERT INTO cmseasy_b_area VALUES('880','临江市','240');
INSERT INTO cmseasy_b_area VALUES('881','抚松县','240');
INSERT INTO cmseasy_b_area VALUES('882','长白朝鲜族自治县','240');
INSERT INTO cmseasy_b_area VALUES('883','延吉市','241');
INSERT INTO cmseasy_b_area VALUES('884','敦化市','241');
INSERT INTO cmseasy_b_area VALUES('885','龙井市','241');
INSERT INTO cmseasy_b_area VALUES('886','安图县','241');
INSERT INTO cmseasy_b_area VALUES('887','汪清县','241');
INSERT INTO cmseasy_b_area VALUES('888','图们市','241');
INSERT INTO cmseasy_b_area VALUES('889','珲春市','241');
INSERT INTO cmseasy_b_area VALUES('890','和龙市','241');
INSERT INTO cmseasy_b_area VALUES('891','洮北区','242');
INSERT INTO cmseasy_b_area VALUES('892','通榆县','242');
INSERT INTO cmseasy_b_area VALUES('893','大安市','242');
INSERT INTO cmseasy_b_area VALUES('894','镇赉县','242');
INSERT INTO cmseasy_b_area VALUES('895','洮南市','242');
INSERT INTO cmseasy_b_area VALUES('896','宁江区','243');
INSERT INTO cmseasy_b_area VALUES('897','长岭县','243');
INSERT INTO cmseasy_b_area VALUES('898','扶余县','243');
INSERT INTO cmseasy_b_area VALUES('899','前郭尔罗斯蒙古族自治县','243');
INSERT INTO cmseasy_b_area VALUES('900','乾安县','243');
INSERT INTO cmseasy_b_area VALUES('901','道里区','244');
INSERT INTO cmseasy_b_area VALUES('902','道外区','244');
INSERT INTO cmseasy_b_area VALUES('903','动力区','244');
INSERT INTO cmseasy_b_area VALUES('904','松北区','244');
INSERT INTO cmseasy_b_area VALUES('905','依兰县','244');
INSERT INTO cmseasy_b_area VALUES('906','宾县','244');
INSERT INTO cmseasy_b_area VALUES('907','木兰县','244');
INSERT INTO cmseasy_b_area VALUES('908','延寿县','244');
INSERT INTO cmseasy_b_area VALUES('909','双城市','244');
INSERT INTO cmseasy_b_area VALUES('910','五常市','244');
INSERT INTO cmseasy_b_area VALUES('911','南岗区','244');
INSERT INTO cmseasy_b_area VALUES('912','香坊区','244');
INSERT INTO cmseasy_b_area VALUES('913','平房区','244');
INSERT INTO cmseasy_b_area VALUES('914','呼兰区','244');
INSERT INTO cmseasy_b_area VALUES('915','方正县','244');
INSERT INTO cmseasy_b_area VALUES('916','巴彦县','244');
INSERT INTO cmseasy_b_area VALUES('917','通河县','244');
INSERT INTO cmseasy_b_area VALUES('918','阿城市','244');
INSERT INTO cmseasy_b_area VALUES('919','尚志市','244');
INSERT INTO cmseasy_b_area VALUES('920','龙沙区','245');
INSERT INTO cmseasy_b_area VALUES('921','铁锋区','245');
INSERT INTO cmseasy_b_area VALUES('922','富拉尔基区','245');
INSERT INTO cmseasy_b_area VALUES('923','梅里斯达斡尔族区','245');
INSERT INTO cmseasy_b_area VALUES('924','依安县','245');
INSERT INTO cmseasy_b_area VALUES('925','甘南县','245');
INSERT INTO cmseasy_b_area VALUES('926','克山县','245');
INSERT INTO cmseasy_b_area VALUES('927','拜泉县','245');
INSERT INTO cmseasy_b_area VALUES('928','建华区','245');
INSERT INTO cmseasy_b_area VALUES('929','昂昂溪区','245');
INSERT INTO cmseasy_b_area VALUES('930','碾子山区','245');
INSERT INTO cmseasy_b_area VALUES('931','龙江县','245');
INSERT INTO cmseasy_b_area VALUES('932','泰来县','245');
INSERT INTO cmseasy_b_area VALUES('933','富裕县','245');
INSERT INTO cmseasy_b_area VALUES('934','克东县','245');
INSERT INTO cmseasy_b_area VALUES('935','讷河市','245');
INSERT INTO cmseasy_b_area VALUES('936','向阳区','246');
INSERT INTO cmseasy_b_area VALUES('937','南山区','246');
INSERT INTO cmseasy_b_area VALUES('938','东山区','246');
INSERT INTO cmseasy_b_area VALUES('939','萝北县','246');
INSERT INTO cmseasy_b_area VALUES('940','工农区','246');
INSERT INTO cmseasy_b_area VALUES('941','兴安区','246');
INSERT INTO cmseasy_b_area VALUES('942','兴山区','246');
INSERT INTO cmseasy_b_area VALUES('943','绥滨县','246');
INSERT INTO cmseasy_b_area VALUES('944','尖山区','247');
INSERT INTO cmseasy_b_area VALUES('945','四方台区','247');
INSERT INTO cmseasy_b_area VALUES('946','集贤县','247');
INSERT INTO cmseasy_b_area VALUES('947','宝清县','247');
INSERT INTO cmseasy_b_area VALUES('948','岭东区','247');
INSERT INTO cmseasy_b_area VALUES('949','宝山区','247');
INSERT INTO cmseasy_b_area VALUES('950','友谊县','247');
INSERT INTO cmseasy_b_area VALUES('951','饶河县','247');
INSERT INTO cmseasy_b_area VALUES('952','鸡冠区','248');
INSERT INTO cmseasy_b_area VALUES('953','滴道区','248');
INSERT INTO cmseasy_b_area VALUES('954','城子河区','248');
INSERT INTO cmseasy_b_area VALUES('955','鸡东县','248');
INSERT INTO cmseasy_b_area VALUES('956','密山市','248');
INSERT INTO cmseasy_b_area VALUES('957','恒山区','248');
INSERT INTO cmseasy_b_area VALUES('958','梨树区','248');
INSERT INTO cmseasy_b_area VALUES('959','麻山区','248');
INSERT INTO cmseasy_b_area VALUES('960','虎林市','248');
INSERT INTO cmseasy_b_area VALUES('961','萨尔图区','249');
INSERT INTO cmseasy_b_area VALUES('962','让胡路区','249');
INSERT INTO cmseasy_b_area VALUES('963','大同区','249');
INSERT INTO cmseasy_b_area VALUES('964','肇源县','249');
INSERT INTO cmseasy_b_area VALUES('965','杜尔伯特蒙古族自治县','249');
INSERT INTO cmseasy_b_area VALUES('966','龙凤区','249');
INSERT INTO cmseasy_b_area VALUES('967','红岗区','249');
INSERT INTO cmseasy_b_area VALUES('968','肇州县','249');
INSERT INTO cmseasy_b_area VALUES('969','林甸县','249');
INSERT INTO cmseasy_b_area VALUES('970','伊春区','250');
INSERT INTO cmseasy_b_area VALUES('971','友好区','250');
INSERT INTO cmseasy_b_area VALUES('972','翠峦区','250');
INSERT INTO cmseasy_b_area VALUES('973','美溪区','250');
INSERT INTO cmseasy_b_area VALUES('974','五营区','250');
INSERT INTO cmseasy_b_area VALUES('975','汤旺河区','250');
INSERT INTO cmseasy_b_area VALUES('976','乌伊岭区','250');
INSERT INTO cmseasy_b_area VALUES('977','上甘岭区','250');
INSERT INTO cmseasy_b_area VALUES('978','铁力市','250');
INSERT INTO cmseasy_b_area VALUES('979','南岔区','250');
INSERT INTO cmseasy_b_area VALUES('980','西\r\n\r\n林区','250');
INSERT INTO cmseasy_b_area VALUES('981','新青区','250');
INSERT INTO cmseasy_b_area VALUES('982','金山屯区','250');
INSERT INTO cmseasy_b_area VALUES('983','乌马河区','250');
INSERT INTO cmseasy_b_area VALUES('984','带岭区','250');
INSERT INTO cmseasy_b_area VALUES('985','红星区','250');
INSERT INTO cmseasy_b_area VALUES('986','嘉荫县','250');
INSERT INTO cmseasy_b_area VALUES('987','东安区','251');
INSERT INTO cmseasy_b_area VALUES('988','爱民区','251');
INSERT INTO cmseasy_b_area VALUES('989','东宁县','251');
INSERT INTO cmseasy_b_area VALUES('990','绥芬河市','251');
INSERT INTO cmseasy_b_area VALUES('991','宁安市','251');
INSERT INTO cmseasy_b_area VALUES('992','阳明区','251');
INSERT INTO cmseasy_b_area VALUES('993','西安区','251');
INSERT INTO cmseasy_b_area VALUES('994','林口县','251');
INSERT INTO cmseasy_b_area VALUES('995','海林市','251');
INSERT INTO cmseasy_b_area VALUES('996','穆棱市','251');
INSERT INTO cmseasy_b_area VALUES('997','永红区','252');
INSERT INTO cmseasy_b_area VALUES('998','前进区','252');
INSERT INTO cmseasy_b_area VALUES('999','郊区','252');
INSERT INTO cmseasy_b_area VALUES('1000','桦川县','252');
INSERT INTO cmseasy_b_area VALUES('1001','抚远县','252');
INSERT INTO cmseasy_b_area VALUES('1002','富锦市','252');
INSERT INTO cmseasy_b_area VALUES('1003','向阳区','252');
INSERT INTO cmseasy_b_area VALUES('1004','东风区','252');
INSERT INTO cmseasy_b_area VALUES('1005','桦南县','252');
INSERT INTO cmseasy_b_area VALUES('1006','汤原县','252');
INSERT INTO cmseasy_b_area VALUES('1007','同江市','252');
INSERT INTO cmseasy_b_area VALUES('1008','新兴区','253');
INSERT INTO cmseasy_b_area VALUES('1009','桃山区','253');
INSERT INTO cmseasy_b_area VALUES('1010','茄子河区','253');
INSERT INTO cmseasy_b_area VALUES('1011','勃利县','253');
INSERT INTO cmseasy_b_area VALUES('1012','爱辉区','254');
INSERT INTO cmseasy_b_area VALUES('1013','逊克县','254');
INSERT INTO cmseasy_b_area VALUES('1014','北安市','254');
INSERT INTO cmseasy_b_area VALUES('1015','嫩江县','254');
INSERT INTO cmseasy_b_area VALUES('1016','孙吴县','254');
INSERT INTO cmseasy_b_area VALUES('1017','五大连池市','254');
INSERT INTO cmseasy_b_area VALUES('1018','北林区','255');
INSERT INTO cmseasy_b_area VALUES('1019','兰西县','255');
INSERT INTO cmseasy_b_area VALUES('1020','庆安县','255');
INSERT INTO cmseasy_b_area VALUES('1021','绥棱县','255');
INSERT INTO cmseasy_b_area VALUES('1022','肇东市','255');
INSERT INTO cmseasy_b_area VALUES('1023','望奎县','255');
INSERT INTO cmseasy_b_area VALUES('1024','青冈县','255');
INSERT INTO cmseasy_b_area VALUES('1025','明水县','255');
INSERT INTO cmseasy_b_area VALUES('1026','安达市','255');
INSERT INTO cmseasy_b_area VALUES('1027','海伦市','255');
INSERT INTO cmseasy_b_area VALUES('1028','呼玛县','256');
INSERT INTO cmseasy_b_area VALUES('1029','漠河县','256');
INSERT INTO cmseasy_b_area VALUES('1030','塔河县','256');
INSERT INTO cmseasy_b_area VALUES('1031','长安区','257');
INSERT INTO cmseasy_b_area VALUES('1032','桥西区','257');
INSERT INTO cmseasy_b_area VALUES('1033','井陉矿区','257');
INSERT INTO cmseasy_b_area VALUES('1034','井陉县','257');
INSERT INTO cmseasy_b_area VALUES('1035','栾城县','257');
INSERT INTO cmseasy_b_area VALUES('1036','灵寿县','257');
INSERT INTO cmseasy_b_area VALUES('1037','深泽县','257');
INSERT INTO cmseasy_b_area VALUES('1038','无极县','257');
INSERT INTO cmseasy_b_area VALUES('1039','元氏县','257');
INSERT INTO cmseasy_b_area VALUES('1040','辛集市','257');
INSERT INTO cmseasy_b_area VALUES('1041','晋州市','257');
INSERT INTO cmseasy_b_area VALUES('1042','鹿泉市','257');
INSERT INTO cmseasy_b_area VALUES('1043','桥东区','257');
INSERT INTO cmseasy_b_area VALUES('1044','新华区','257');
INSERT INTO cmseasy_b_area VALUES('1045','裕华区','257');
INSERT INTO cmseasy_b_area VALUES('1046','正定县','257');
INSERT INTO cmseasy_b_area VALUES('1047','行唐县','257');
INSERT INTO cmseasy_b_area VALUES('1048','高邑县','257');
INSERT INTO cmseasy_b_area VALUES('1049','赞皇县','257');
INSERT INTO cmseasy_b_area VALUES('1050','平山县','257');
INSERT INTO cmseasy_b_area VALUES('1051','赵县','257');
INSERT INTO cmseasy_b_area VALUES('1052','藁城市','257');
INSERT INTO cmseasy_b_area VALUES('1053','新乐市','257');
INSERT INTO cmseasy_b_area VALUES('1054','路南区','258');
INSERT INTO cmseasy_b_area VALUES('1055','古冶区','258');
INSERT INTO cmseasy_b_area VALUES('1056','丰南区','258');
INSERT INTO cmseasy_b_area VALUES('1057','滦县','258');
INSERT INTO cmseasy_b_area VALUES('1058','乐亭县','258');
INSERT INTO cmseasy_b_area VALUES('1059','玉田县','258');
INSERT INTO cmseasy_b_area VALUES('1060','遵化市','258');
INSERT INTO cmseasy_b_area VALUES('1061','路北区','258');
INSERT INTO cmseasy_b_area VALUES('1062','开平区','258');
INSERT INTO cmseasy_b_area VALUES('1063','丰润区','258');
INSERT INTO cmseasy_b_area VALUES('1064','滦南县','258');
INSERT INTO cmseasy_b_area VALUES('1065','迁西县','258');
INSERT INTO cmseasy_b_area VALUES('1066','唐海县','258');
INSERT INTO cmseasy_b_area VALUES('1067','迁安市','258');
INSERT INTO cmseasy_b_area VALUES('1068','海港区','259');
INSERT INTO cmseasy_b_area VALUES('1069','北戴河区','259');
INSERT INTO cmseasy_b_area VALUES('1070','昌黎县','259');
INSERT INTO cmseasy_b_area VALUES('1071','卢龙县','259');
INSERT INTO cmseasy_b_area VALUES('1072','山海关区','259');
INSERT INTO cmseasy_b_area VALUES('1073','青龙满族自治县','259');
INSERT INTO cmseasy_b_area VALUES('1074','抚宁县','259');
INSERT INTO cmseasy_b_area VALUES('1075','新华区','267');
INSERT INTO cmseasy_b_area VALUES('1076','沧县','267');
INSERT INTO cmseasy_b_area VALUES('1077','东光县','267');
INSERT INTO cmseasy_b_area VALUES('1078','盐山县','267');
INSERT INTO cmseasy_b_area VALUES('1079','南皮县','267');
INSERT INTO cmseasy_b_area VALUES('1080','献县','267');
INSERT INTO cmseasy_b_area VALUES('1081','泊头市','267');
INSERT INTO cmseasy_b_area VALUES('1082','黄骅市','267');
INSERT INTO cmseasy_b_area VALUES('1083','运河区','267');
INSERT INTO cmseasy_b_area VALUES('1084','青县','267');
INSERT INTO cmseasy_b_area VALUES('1085','海兴县','267');
INSERT INTO cmseasy_b_area VALUES('1086','肃宁县','267');
INSERT INTO cmseasy_b_area VALUES('1087','吴桥县','267');
INSERT INTO cmseasy_b_area VALUES('1088','孟村回族自治县','267');
INSERT INTO cmseasy_b_area VALUES('1089','任丘市','267');
INSERT INTO cmseasy_b_area VALUES('1090','河间市','267');
INSERT INTO cmseasy_b_area VALUES('1091','桃城区','266');
INSERT INTO cmseasy_b_area VALUES('1092','武邑县','266');
INSERT INTO cmseasy_b_area VALUES('1093','饶阳县','266');
INSERT INTO cmseasy_b_area VALUES('1094','故城县','266');
INSERT INTO cmseasy_b_area VALUES('1095','阜城县','266');
INSERT INTO cmseasy_b_area VALUES('1096','深州市','266');
INSERT INTO cmseasy_b_area VALUES('1097','枣强县','266');
INSERT INTO cmseasy_b_area VALUES('1098','武强县','266');
INSERT INTO cmseasy_b_area VALUES('1099','安平县','266');
INSERT INTO cmseasy_b_area VALUES('1100','景县','266');
INSERT INTO cmseasy_b_area VALUES('1101','冀州市','266');
INSERT INTO cmseasy_b_area VALUES('1102','邯山区','260');
INSERT INTO cmseasy_b_area VALUES('1103','复兴区','260');
INSERT INTO cmseasy_b_area VALUES('1104','邯郸县','260');
INSERT INTO cmseasy_b_area VALUES('1105','成安县','260');
INSERT INTO cmseasy_b_area VALUES('1106','涉县','260');
INSERT INTO cmseasy_b_area VALUES('1107','肥乡县','260');
INSERT INTO cmseasy_b_area VALUES('1108','邱县','260');
INSERT INTO cmseasy_b_area VALUES('1109','广平县','260');
INSERT INTO cmseasy_b_area VALUES('1110','魏县','260');
INSERT INTO cmseasy_b_area VALUES('1111','武安市','260');
INSERT INTO cmseasy_b_area VALUES('1112','丛台区','260');
INSERT INTO cmseasy_b_area VALUES('1113','峰峰矿区','260');
INSERT INTO cmseasy_b_area VALUES('1114','临漳县','260');
INSERT INTO cmseasy_b_area VALUES('1115','大名县','260');
INSERT INTO cmseasy_b_area VALUES('1116','磁县','260');
INSERT INTO cmseasy_b_area VALUES('1117','永年县','260');
INSERT INTO cmseasy_b_area VALUES('1118','鸡泽县','260');
INSERT INTO cmseasy_b_area VALUES('1119','馆陶县','260');
INSERT INTO cmseasy_b_area VALUES('1120','曲周县','260');
INSERT INTO cmseasy_b_area VALUES('1121','桥东区','261');
INSERT INTO cmseasy_b_area VALUES('1122','邢台县','261');
INSERT INTO cmseasy_b_area VALUES('1123','内丘县','261');
INSERT INTO cmseasy_b_area VALUES('1124','隆尧县','261');
INSERT INTO cmseasy_b_area VALUES('1125','南和县','261');
INSERT INTO cmseasy_b_area VALUES('1126','巨鹿县','261');
INSERT INTO cmseasy_b_area VALUES('1127','广宗县','261');
INSERT INTO cmseasy_b_area VALUES('1128','威县','261');
INSERT INTO cmseasy_b_area VALUES('1129','临西县','261');
INSERT INTO cmseasy_b_area VALUES('1130','沙河市','261');
INSERT INTO cmseasy_b_area VALUES('1131','桥西区','261');
INSERT INTO cmseasy_b_area VALUES('1132','临\r\n城县','261');
INSERT INTO cmseasy_b_area VALUES('1133','柏乡县','261');
INSERT INTO cmseasy_b_area VALUES('1134','任县','261');
INSERT INTO cmseasy_b_area VALUES('1135','宁晋县','261');
INSERT INTO cmseasy_b_area VALUES('1136','新河县','261');
INSERT INTO cmseasy_b_area VALUES('1137','平乡县','261');
INSERT INTO cmseasy_b_area VALUES('1138','清河县','261');
INSERT INTO cmseasy_b_area VALUES('1139','南宫市','261');
INSERT INTO cmseasy_b_area VALUES('1140','新市区','262');
INSERT INTO cmseasy_b_area VALUES('1141','南市区','262');
INSERT INTO cmseasy_b_area VALUES('1142','清苑县','262');
INSERT INTO cmseasy_b_area VALUES('1143','阜平县','262');
INSERT INTO cmseasy_b_area VALUES('1144','定兴县','262');
INSERT INTO cmseasy_b_area VALUES('1145','高阳县','262');
INSERT INTO cmseasy_b_area VALUES('1146','涞源县','262');
INSERT INTO cmseasy_b_area VALUES('1147','安新县','262');
INSERT INTO cmseasy_b_area VALUES('1148','曲阳县','262');
INSERT INTO cmseasy_b_area VALUES('1149','顺平县','262');
INSERT INTO cmseasy_b_area VALUES('1150','雄县','262');
INSERT INTO cmseasy_b_area VALUES('1151','定\r\n州市','262');
INSERT INTO cmseasy_b_area VALUES('1152','高碑店市','262');
INSERT INTO cmseasy_b_area VALUES('1153','北市区','262');
INSERT INTO cmseasy_b_area VALUES('1154','满城县','262');
INSERT INTO cmseasy_b_area VALUES('1155','涞水县','262');
INSERT INTO cmseasy_b_area VALUES('1156','徐水县','262');
INSERT INTO cmseasy_b_area VALUES('1157','唐县','262');
INSERT INTO cmseasy_b_area VALUES('1158','容城县','262');
INSERT INTO cmseasy_b_area VALUES('1159','望都县','262');
INSERT INTO cmseasy_b_area VALUES('1160','易县','262');
INSERT INTO cmseasy_b_area VALUES('1161','蠡县','262');
INSERT INTO cmseasy_b_area VALUES('1162','博野县','262');
INSERT INTO cmseasy_b_area VALUES('1163','涿州市','262');
INSERT INTO cmseasy_b_area VALUES('1164','安国市','262');
INSERT INTO cmseasy_b_area VALUES('1165','桥东区','263');
INSERT INTO cmseasy_b_area VALUES('1166','宣化区','263');
INSERT INTO cmseasy_b_area VALUES('1167','宣化县','263');
INSERT INTO cmseasy_b_area VALUES('1168','康保县','263');
INSERT INTO cmseasy_b_area VALUES('1169','尚义县','263');
INSERT INTO cmseasy_b_area VALUES('1170','阳原县','263');
INSERT INTO cmseasy_b_area VALUES('1171','万全县','263');
INSERT INTO cmseasy_b_area VALUES('1172','涿鹿县','263');
INSERT INTO cmseasy_b_area VALUES('1173','崇礼县','263');
INSERT INTO cmseasy_b_area VALUES('1174','桥西区','263');
INSERT INTO cmseasy_b_area VALUES('1175','下花园区','263');
INSERT INTO cmseasy_b_area VALUES('1176','张北县','263');
INSERT INTO cmseasy_b_area VALUES('1177','沽源县','263');
INSERT INTO cmseasy_b_area VALUES('1178','蔚县','263');
INSERT INTO cmseasy_b_area VALUES('1179','怀安县','263');
INSERT INTO cmseasy_b_area VALUES('1180','怀来县','263');
INSERT INTO cmseasy_b_area VALUES('1181','赤城县','263');
INSERT INTO cmseasy_b_area VALUES('1182','双桥区','264');
INSERT INTO cmseasy_b_area VALUES('1183','鹰手营子矿区','264');
INSERT INTO cmseasy_b_area VALUES('1184','兴隆县','264');
INSERT INTO cmseasy_b_area VALUES('1185','滦平县','264');
INSERT INTO cmseasy_b_area VALUES('1186','丰宁满族自治县','264');
INSERT INTO cmseasy_b_area VALUES('1187','围场满族蒙古族自治县','264');
INSERT INTO cmseasy_b_area VALUES('1188','双滦区','264');
INSERT INTO cmseasy_b_area VALUES('1189','承德县','264');
INSERT INTO cmseasy_b_area VALUES('1190','平泉县','264');
INSERT INTO cmseasy_b_area VALUES('1191','隆化县','264');
INSERT INTO cmseasy_b_area VALUES('1192','宽城满族自治县','264');
INSERT INTO cmseasy_b_area VALUES('1193','安次区','265');
INSERT INTO cmseasy_b_area VALUES('1194','固安县','265');
INSERT INTO cmseasy_b_area VALUES('1195','香河县','265');
INSERT INTO cmseasy_b_area VALUES('1196','文安县','265');
INSERT INTO cmseasy_b_area VALUES('1197','霸州市','265');
INSERT INTO cmseasy_b_area VALUES('1198','广阳区','265');
INSERT INTO cmseasy_b_area VALUES('1199','永清县','265');
INSERT INTO cmseasy_b_area VALUES('1200','大城县','265');
INSERT INTO cmseasy_b_area VALUES('1201','大厂回族自治县','265');
INSERT INTO cmseasy_b_area VALUES('1202','三河市','265');
INSERT INTO cmseasy_b_area VALUES('1203','小店区','268');
INSERT INTO cmseasy_b_area VALUES('1204','杏花岭区','268');
INSERT INTO cmseasy_b_area VALUES('1205','万柏林区','268');
INSERT INTO cmseasy_b_area VALUES('1206','清徐县','268');
INSERT INTO cmseasy_b_area VALUES('1207','娄烦县','268');
INSERT INTO cmseasy_b_area VALUES('1208','古交市','268');
INSERT INTO cmseasy_b_area VALUES('1209','迎泽区','268');
INSERT INTO cmseasy_b_area VALUES('1210','尖草坪区','268');
INSERT INTO cmseasy_b_area VALUES('1211','晋源区','268');
INSERT INTO cmseasy_b_area VALUES('1212','阳曲县','268');
INSERT INTO cmseasy_b_area VALUES('1213','城区','269');
INSERT INTO cmseasy_b_area VALUES('1214','南郊区','269');
INSERT INTO cmseasy_b_area VALUES('1215','阳高县','269');
INSERT INTO cmseasy_b_area VALUES('1216','广灵县','269');
INSERT INTO cmseasy_b_area VALUES('1217','浑源县','269');
INSERT INTO cmseasy_b_area VALUES('1218','大同县','269');
INSERT INTO cmseasy_b_area VALUES('1219','矿区','269');
INSERT INTO cmseasy_b_area VALUES('1220','新荣区','269');
INSERT INTO cmseasy_b_area VALUES('1221','天镇县','269');
INSERT INTO cmseasy_b_area VALUES('1222','灵丘县','269');
INSERT INTO cmseasy_b_area VALUES('1223','左云县','269');
INSERT INTO cmseasy_b_area VALUES('1224','城区','270');
INSERT INTO cmseasy_b_area VALUES('1225','郊区','270');
INSERT INTO cmseasy_b_area VALUES('1226','盂县','270');
INSERT INTO cmseasy_b_area VALUES('1227','矿区','270');
INSERT INTO cmseasy_b_area VALUES('1228','平定县','270');
INSERT INTO cmseasy_b_area VALUES('1229','城区','271');
INSERT INTO cmseasy_b_area VALUES('1230','长治县','271');
INSERT INTO cmseasy_b_area VALUES('1231','屯留县','271');
INSERT INTO cmseasy_b_area VALUES('1232','黎城县','271');
INSERT INTO cmseasy_b_area VALUES('1233','长子县','271');
INSERT INTO cmseasy_b_area VALUES('1234','沁县','271');
INSERT INTO cmseasy_b_area VALUES('1235','潞城市','271');
INSERT INTO cmseasy_b_area VALUES('1236','郊区','271');
INSERT INTO cmseasy_b_area VALUES('1237','襄垣县','271');
INSERT INTO cmseasy_b_area VALUES('1238','平顺县','271');
INSERT INTO cmseasy_b_area VALUES('1239','壶关县','271');
INSERT INTO cmseasy_b_area VALUES('1240','武乡县','271');
INSERT INTO cmseasy_b_area VALUES('1241','沁源县','271');
INSERT INTO cmseasy_b_area VALUES('1242','城区','272');
INSERT INTO cmseasy_b_area VALUES('1243','阳城县','272');
INSERT INTO cmseasy_b_area VALUES('1244','泽州县','272');
INSERT INTO cmseasy_b_area VALUES('1245','高平市','272');
INSERT INTO cmseasy_b_area VALUES('1246','沁水县','272');
INSERT INTO cmseasy_b_area VALUES('1247','陵川县','272');
INSERT INTO cmseasy_b_area VALUES('1248','朔城区','273');
INSERT INTO cmseasy_b_area VALUES('1249','怀仁县','273');
INSERT INTO cmseasy_b_area VALUES('1250','平鲁区','273');
INSERT INTO cmseasy_b_area VALUES('1251','山阴县','273');
INSERT INTO cmseasy_b_area VALUES('1252','右玉县','273');
INSERT INTO cmseasy_b_area VALUES('1253','应县','273');
INSERT INTO cmseasy_b_area VALUES('1254','榆次区','274');
INSERT INTO cmseasy_b_area VALUES('1255','左权县','274');
INSERT INTO cmseasy_b_area VALUES('1256','昔阳县','274');
INSERT INTO cmseasy_b_area VALUES('1257','太谷县','274');
INSERT INTO cmseasy_b_area VALUES('1258','平遥县','274');
INSERT INTO cmseasy_b_area VALUES('1259','介休市','274');
INSERT INTO cmseasy_b_area VALUES('1260','榆社县','274');
INSERT INTO cmseasy_b_area VALUES('1261','和顺县','274');
INSERT INTO cmseasy_b_area VALUES('1262','寿阳县','274');
INSERT INTO cmseasy_b_area VALUES('1263','祁县','274');
INSERT INTO cmseasy_b_area VALUES('1264','灵石县','274');
INSERT INTO cmseasy_b_area VALUES('1265','盐湖区','275');
INSERT INTO cmseasy_b_area VALUES('1266','万荣县','275');
INSERT INTO cmseasy_b_area VALUES('1267','稷山县','275');
INSERT INTO cmseasy_b_area VALUES('1268','绛县','275');
INSERT INTO cmseasy_b_area VALUES('1269','夏县','275');
INSERT INTO cmseasy_b_area VALUES('1270','芮城县','275');
INSERT INTO cmseasy_b_area VALUES('1271','河津市','275');
INSERT INTO cmseasy_b_area VALUES('1272','临猗县','275');
INSERT INTO cmseasy_b_area VALUES('1273','闻喜县','275');
INSERT INTO cmseasy_b_area VALUES('1274','新绛县','275');
INSERT INTO cmseasy_b_area VALUES('1275','垣曲县','275');
INSERT INTO cmseasy_b_area VALUES('1276','平陆\r\n县','275');
INSERT INTO cmseasy_b_area VALUES('1277','永济市','275');
INSERT INTO cmseasy_b_area VALUES('1278','忻府区','276');
INSERT INTO cmseasy_b_area VALUES('1279','五台县','276');
INSERT INTO cmseasy_b_area VALUES('1280','繁峙县','276');
INSERT INTO cmseasy_b_area VALUES('1281','静乐县','276');
INSERT INTO cmseasy_b_area VALUES('1282','五寨县','276');
INSERT INTO cmseasy_b_area VALUES('1283','河曲县','276');
INSERT INTO cmseasy_b_area VALUES('1284','偏关县','276');
INSERT INTO cmseasy_b_area VALUES('1285','原平市','276');
INSERT INTO cmseasy_b_area VALUES('1286','定襄县','276');
INSERT INTO cmseasy_b_area VALUES('1287','代县','276');
INSERT INTO cmseasy_b_area VALUES('1288','宁武县','276');
INSERT INTO cmseasy_b_area VALUES('1289','神池县','276');
INSERT INTO cmseasy_b_area VALUES('1290','岢岚县','276');
INSERT INTO cmseasy_b_area VALUES('1291','保德县','276');
INSERT INTO cmseasy_b_area VALUES('1292','尧都区','277');
INSERT INTO cmseasy_b_area VALUES('1293','翼城县','277');
INSERT INTO cmseasy_b_area VALUES('1294','洪洞县','277');
INSERT INTO cmseasy_b_area VALUES('1295','安泽县','277');
INSERT INTO cmseasy_b_area VALUES('1296','吉县','277');
INSERT INTO cmseasy_b_area VALUES('1297','大宁县','277');
INSERT INTO cmseasy_b_area VALUES('1298','永和县','277');
INSERT INTO cmseasy_b_area VALUES('1299','汾西县','277');
INSERT INTO cmseasy_b_area VALUES('1300','霍州市','277');
INSERT INTO cmseasy_b_area VALUES('1301','曲沃县','277');
INSERT INTO cmseasy_b_area VALUES('1302','襄汾县','277');
INSERT INTO cmseasy_b_area VALUES('1303','古县','277');
INSERT INTO cmseasy_b_area VALUES('1304','浮山县乡宁县','277');
INSERT INTO cmseasy_b_area VALUES('1305','隰县','277');
INSERT INTO cmseasy_b_area VALUES('1306','蒲县','277');
INSERT INTO cmseasy_b_area VALUES('1307','侯马市','277');
INSERT INTO cmseasy_b_area VALUES('1308','离石区','278');
INSERT INTO cmseasy_b_area VALUES('1309','交城县','278');
INSERT INTO cmseasy_b_area VALUES('1310','临县','278');
INSERT INTO cmseasy_b_area VALUES('1311','石楼县','278');
INSERT INTO cmseasy_b_area VALUES('1312','方山县','278');
INSERT INTO cmseasy_b_area VALUES('1313','交口县','278');
INSERT INTO cmseasy_b_area VALUES('1314','汾阳市','278');
INSERT INTO cmseasy_b_area VALUES('1315','文水县','278');
INSERT INTO cmseasy_b_area VALUES('1316','兴县','278');
INSERT INTO cmseasy_b_area VALUES('1317','柳林县','278');
INSERT INTO cmseasy_b_area VALUES('1318','岚县','278');
INSERT INTO cmseasy_b_area VALUES('1319','中阳县','278');
INSERT INTO cmseasy_b_area VALUES('1320','孝义市','278');
INSERT INTO cmseasy_b_area VALUES('1321','驿城区','294');
INSERT INTO cmseasy_b_area VALUES('1322','上蔡县','294');
INSERT INTO cmseasy_b_area VALUES('1323','正阳县','294');
INSERT INTO cmseasy_b_area VALUES('1324','泌阳县','294');
INSERT INTO cmseasy_b_area VALUES('1325','遂平县','294');
INSERT INTO cmseasy_b_area VALUES('1326','新蔡县','294');
INSERT INTO cmseasy_b_area VALUES('1327','西平县','294');
INSERT INTO cmseasy_b_area VALUES('1328','平舆县','294');
INSERT INTO cmseasy_b_area VALUES('1329','确山县','294');
INSERT INTO cmseasy_b_area VALUES('1330','汝南县','294');
INSERT INTO cmseasy_b_area VALUES('1331','川汇区','293');
INSERT INTO cmseasy_b_area VALUES('1332','西华县','293');
INSERT INTO cmseasy_b_area VALUES('1333','沈丘县','293');
INSERT INTO cmseasy_b_area VALUES('1334','淮阳县','293');
INSERT INTO cmseasy_b_area VALUES('1335','鹿邑县','293');
INSERT INTO cmseasy_b_area VALUES('1336','项城市','293');
INSERT INTO cmseasy_b_area VALUES('1337','扶沟县','293');
INSERT INTO cmseasy_b_area VALUES('1338','商水县','293');
INSERT INTO cmseasy_b_area VALUES('1339','郸城县','293');
INSERT INTO cmseasy_b_area VALUES('1340','太康县','293');
INSERT INTO cmseasy_b_area VALUES('1341','师河区','292');
INSERT INTO cmseasy_b_area VALUES('1342','罗山县','292');
INSERT INTO cmseasy_b_area VALUES('1343','新县','292');
INSERT INTO cmseasy_b_area VALUES('1344','固始县','292');
INSERT INTO cmseasy_b_area VALUES('1345','淮滨县','292');
INSERT INTO cmseasy_b_area VALUES('1346','息县','292');
INSERT INTO cmseasy_b_area VALUES('1347','平桥区','292');
INSERT INTO cmseasy_b_area VALUES('1348','光山县','292');
INSERT INTO cmseasy_b_area VALUES('1349','商城县','292');
INSERT INTO cmseasy_b_area VALUES('1350','潢川县','292');
INSERT INTO cmseasy_b_area VALUES('1351','梁园区','291');
INSERT INTO cmseasy_b_area VALUES('1352','民权县','291');
INSERT INTO cmseasy_b_area VALUES('1353','宁陵县','291');
INSERT INTO cmseasy_b_area VALUES('1354','虞城县','291');
INSERT INTO cmseasy_b_area VALUES('1355','永城市','291');
INSERT INTO cmseasy_b_area VALUES('1356','睢阳区','291');
INSERT INTO cmseasy_b_area VALUES('1357','睢县','291');
INSERT INTO cmseasy_b_area VALUES('1358','柘城县','291');
INSERT INTO cmseasy_b_area VALUES('1359','夏邑县','291');
INSERT INTO cmseasy_b_area VALUES('1360','宛城区','290');
INSERT INTO cmseasy_b_area VALUES('1361','南召县','290');
INSERT INTO cmseasy_b_area VALUES('1362','西峡县','290');
INSERT INTO cmseasy_b_area VALUES('1363','内乡县','290');
INSERT INTO cmseasy_b_area VALUES('1364','社旗县','290');
INSERT INTO cmseasy_b_area VALUES('1365','新野县','290');
INSERT INTO cmseasy_b_area VALUES('1366','邓州市','290');
INSERT INTO cmseasy_b_area VALUES('1367','卧龙区','290');
INSERT INTO cmseasy_b_area VALUES('1368','方城县','290');
INSERT INTO cmseasy_b_area VALUES('1369','镇平县','290');
INSERT INTO cmseasy_b_area VALUES('1370','淅川县','290');
INSERT INTO cmseasy_b_area VALUES('1371','唐河县','290');
INSERT INTO cmseasy_b_area VALUES('1372','桐柏县','290');
INSERT INTO cmseasy_b_area VALUES('1373','湖滨区','289');
INSERT INTO cmseasy_b_area VALUES('1374','陕县','289');
INSERT INTO cmseasy_b_area VALUES('1375','义马市','289');
INSERT INTO cmseasy_b_area VALUES('1376','灵宝市','289');
INSERT INTO cmseasy_b_area VALUES('1377','渑池县','289');
INSERT INTO cmseasy_b_area VALUES('1378','卢氏县','289');
INSERT INTO cmseasy_b_area VALUES('1379','源汇区','288');
INSERT INTO cmseasy_b_area VALUES('1380','召陵区','288');
INSERT INTO cmseasy_b_area VALUES('1381','临颍县','288');
INSERT INTO cmseasy_b_area VALUES('1382','郾城区','288');
INSERT INTO cmseasy_b_area VALUES('1383','舞阳县','288');
INSERT INTO cmseasy_b_area VALUES('1384','魏都区','287');
INSERT INTO cmseasy_b_area VALUES('1385','鄢陵县','287');
INSERT INTO cmseasy_b_area VALUES('1386','禹州市','287');
INSERT INTO cmseasy_b_area VALUES('1387','长葛市','287');
INSERT INTO cmseasy_b_area VALUES('1388','许昌县','287');
INSERT INTO cmseasy_b_area VALUES('1389','襄城县','287');
INSERT INTO cmseasy_b_area VALUES('1390','清丰县','286');
INSERT INTO cmseasy_b_area VALUES('1391','范县','286');
INSERT INTO cmseasy_b_area VALUES('1392','濮阳县','286');
INSERT INTO cmseasy_b_area VALUES('1393','南乐县','286');
INSERT INTO cmseasy_b_area VALUES('1394','台前县','286');
INSERT INTO cmseasy_b_area VALUES('1395','文峰区','285');
INSERT INTO cmseasy_b_area VALUES('1396','殷都区','285');
INSERT INTO cmseasy_b_area VALUES('1397','安阳县','285');
INSERT INTO cmseasy_b_area VALUES('1398','滑县','285');
INSERT INTO cmseasy_b_area VALUES('1399','北关区','285');
INSERT INTO cmseasy_b_area VALUES('1400','龙安区','285');
INSERT INTO cmseasy_b_area VALUES('1401','汤阴县','285');
INSERT INTO cmseasy_b_area VALUES('1402','内黄县','285');
INSERT INTO cmseasy_b_area VALUES('1403','红旗区','284');
INSERT INTO cmseasy_b_area VALUES('1404','获嘉县','284');
INSERT INTO cmseasy_b_area VALUES('1405','延津县','284');
INSERT INTO cmseasy_b_area VALUES('1406','长垣县','284');
INSERT INTO cmseasy_b_area VALUES('1407','红旗区','284');
INSERT INTO cmseasy_b_area VALUES('1408','获嘉县','284');
INSERT INTO cmseasy_b_area VALUES('1409','延津县','284');
INSERT INTO cmseasy_b_area VALUES('1410','长垣县','284');
INSERT INTO cmseasy_b_area VALUES('1411','鹤山区','283');
INSERT INTO cmseasy_b_area VALUES('1412','淇滨区','283');
INSERT INTO cmseasy_b_area VALUES('1413','淇县','283');
INSERT INTO cmseasy_b_area VALUES('1414','山城区','283');
INSERT INTO cmseasy_b_area VALUES('1415','浚县','283');
INSERT INTO cmseasy_b_area VALUES('1416','解放区','282');
INSERT INTO cmseasy_b_area VALUES('1417','马村区','282');
INSERT INTO cmseasy_b_area VALUES('1418','修武县','282');
INSERT INTO cmseasy_b_area VALUES('1419','武陟县','282');
INSERT INTO cmseasy_b_area VALUES('1420','济源市','282');
INSERT INTO cmseasy_b_area VALUES('1421','孟州市','282');
INSERT INTO cmseasy_b_area VALUES('1422','中站区','282');
INSERT INTO cmseasy_b_area VALUES('1423','山阳区','282');
INSERT INTO cmseasy_b_area VALUES('1424','博爱县','282');
INSERT INTO cmseasy_b_area VALUES('1425','温县','282');
INSERT INTO cmseasy_b_area VALUES('1426','沁阳市','282');
INSERT INTO cmseasy_b_area VALUES('1427','新华区','281');
INSERT INTO cmseasy_b_area VALUES('1428','石龙区','281');
INSERT INTO cmseasy_b_area VALUES('1429','宝丰县','281');
INSERT INTO cmseasy_b_area VALUES('1430','鲁山县','281');
INSERT INTO cmseasy_b_area VALUES('1431','舞钢市','281');
INSERT INTO cmseasy_b_area VALUES('1432','汝州市','281');
INSERT INTO cmseasy_b_area VALUES('1433','卫东区','281');
INSERT INTO cmseasy_b_area VALUES('1434','湛河区','281');
INSERT INTO cmseasy_b_area VALUES('1435','叶县','281');
INSERT INTO cmseasy_b_area VALUES('1436','郏县','281');
INSERT INTO cmseasy_b_area VALUES('1437','林州市','281');
INSERT INTO cmseasy_b_area VALUES('1438','洛阳市','97');
INSERT INTO cmseasy_b_area VALUES('1439','老城区','1438');
INSERT INTO cmseasy_b_area VALUES('1440','廛河回族区','1438');
INSERT INTO cmseasy_b_area VALUES('1441','吉利区','1438');
INSERT INTO cmseasy_b_area VALUES('1442','孟津县','1438');
INSERT INTO cmseasy_b_area VALUES('1443','栾川县','1438');
INSERT INTO cmseasy_b_area VALUES('1444','汝阳县','1438');
INSERT INTO cmseasy_b_area VALUES('1445','洛宁县','1438');
INSERT INTO cmseasy_b_area VALUES('1446','偃师市','1438');
INSERT INTO cmseasy_b_area VALUES('1447','西工区','1438');
INSERT INTO cmseasy_b_area VALUES('1448','涧西区','1438');
INSERT INTO cmseasy_b_area VALUES('1449','洛龙\r\n区','1438');
INSERT INTO cmseasy_b_area VALUES('1450','新安县','1438');
INSERT INTO cmseasy_b_area VALUES('1451','嵩县','1438');
INSERT INTO cmseasy_b_area VALUES('1452','宜阳县','1438');
INSERT INTO cmseasy_b_area VALUES('1453','伊川县','1438');
INSERT INTO cmseasy_b_area VALUES('1454','龙亭区','280');
INSERT INTO cmseasy_b_area VALUES('1455','鼓楼区','280');
INSERT INTO cmseasy_b_area VALUES('1456','郊区','280');
INSERT INTO cmseasy_b_area VALUES('1457','通许县','280');
INSERT INTO cmseasy_b_area VALUES('1458','开封县','280');
INSERT INTO cmseasy_b_area VALUES('1459','兰考县','280');
INSERT INTO cmseasy_b_area VALUES('1460','顺河回族区','280');
INSERT INTO cmseasy_b_area VALUES('1461','南关区','280');
INSERT INTO cmseasy_b_area VALUES('1462','杞县','280');
INSERT INTO cmseasy_b_area VALUES('1463','尉氏县','280');
INSERT INTO cmseasy_b_area VALUES('1464','中原区','279');
INSERT INTO cmseasy_b_area VALUES('1465','管城回族区','279');
INSERT INTO cmseasy_b_area VALUES('1466','上街区','279');
INSERT INTO cmseasy_b_area VALUES('1467','中牟县','279');
INSERT INTO cmseasy_b_area VALUES('1468','荥阳市','279');
INSERT INTO cmseasy_b_area VALUES('1469','新郑市','279');
INSERT INTO cmseasy_b_area VALUES('1470','登封市','279');
INSERT INTO cmseasy_b_area VALUES('1471','二七区','279');
INSERT INTO cmseasy_b_area VALUES('1472','金水区','279');
INSERT INTO cmseasy_b_area VALUES('1473','邙山区','279');
INSERT INTO cmseasy_b_area VALUES('1474','巩义\r\n市','279');
INSERT INTO cmseasy_b_area VALUES('1475','新密市','279');
INSERT INTO cmseasy_b_area VALUES('1476','历下区','295');
INSERT INTO cmseasy_b_area VALUES('1477','槐荫区','295');
INSERT INTO cmseasy_b_area VALUES('1478','历城区','295');
INSERT INTO cmseasy_b_area VALUES('1479','平阴县','295');
INSERT INTO cmseasy_b_area VALUES('1480','商河县','295');
INSERT INTO cmseasy_b_area VALUES('1481','章丘市','295');
INSERT INTO cmseasy_b_area VALUES('1482','市中区','295');
INSERT INTO cmseasy_b_area VALUES('1483','天桥区','295');
INSERT INTO cmseasy_b_area VALUES('1484','长清区','295');
INSERT INTO cmseasy_b_area VALUES('1485','济阳县','295');
INSERT INTO cmseasy_b_area VALUES('1486','市南区','296');
INSERT INTO cmseasy_b_area VALUES('1487','四方区','296');
INSERT INTO cmseasy_b_area VALUES('1488','崂山区','296');
INSERT INTO cmseasy_b_area VALUES('1489','城阳区','296');
INSERT INTO cmseasy_b_area VALUES('1490','即墨市','296');
INSERT INTO cmseasy_b_area VALUES('1491','胶南市','296');
INSERT INTO cmseasy_b_area VALUES('1492','莱西市','296');
INSERT INTO cmseasy_b_area VALUES('1493','市北区','296');
INSERT INTO cmseasy_b_area VALUES('1494','黄岛区','296');
INSERT INTO cmseasy_b_area VALUES('1495','李沧区','296');
INSERT INTO cmseasy_b_area VALUES('1496','胶州市','296');
INSERT INTO cmseasy_b_area VALUES('1497','平度市','296');
INSERT INTO cmseasy_b_area VALUES('1498','淄川区','297');
INSERT INTO cmseasy_b_area VALUES('1499','博山区','297');
INSERT INTO cmseasy_b_area VALUES('1500','周村区','297');
INSERT INTO cmseasy_b_area VALUES('1501','高青县','297');
INSERT INTO cmseasy_b_area VALUES('1502','沂源县','297');
INSERT INTO cmseasy_b_area VALUES('1503','张店区','297');
INSERT INTO cmseasy_b_area VALUES('1504','临淄区','297');
INSERT INTO cmseasy_b_area VALUES('1505','桓台县','297');
INSERT INTO cmseasy_b_area VALUES('1506','市中区','298');
INSERT INTO cmseasy_b_area VALUES('1507','峄城区','298');
INSERT INTO cmseasy_b_area VALUES('1508','山亭区','298');
INSERT INTO cmseasy_b_area VALUES('1509','滕州市','298');
INSERT INTO cmseasy_b_area VALUES('1510','薛城区','298');
INSERT INTO cmseasy_b_area VALUES('1511','台儿庄区','298');
INSERT INTO cmseasy_b_area VALUES('1512','东营区','299');
INSERT INTO cmseasy_b_area VALUES('1513','垦利县','299');
INSERT INTO cmseasy_b_area VALUES('1514','广饶县','299');
INSERT INTO cmseasy_b_area VALUES('1515','河口区','299');
INSERT INTO cmseasy_b_area VALUES('1516','利津县','299');
INSERT INTO cmseasy_b_area VALUES('1517','潍城区','300');
INSERT INTO cmseasy_b_area VALUES('1518','坊子区','300');
INSERT INTO cmseasy_b_area VALUES('1519','临朐县','300');
INSERT INTO cmseasy_b_area VALUES('1520','青州市','300');
INSERT INTO cmseasy_b_area VALUES('1521','寿光市','300');
INSERT INTO cmseasy_b_area VALUES('1522','高密市','300');
INSERT INTO cmseasy_b_area VALUES('1523','昌邑市','300');
INSERT INTO cmseasy_b_area VALUES('1524','寒亭区','300');
INSERT INTO cmseasy_b_area VALUES('1525','奎文区','300');
INSERT INTO cmseasy_b_area VALUES('1526','昌乐县','300');
INSERT INTO cmseasy_b_area VALUES('1527','诸城市','300');
INSERT INTO cmseasy_b_area VALUES('1528','安丘市','300');
INSERT INTO cmseasy_b_area VALUES('1529','芝罘区','301');
INSERT INTO cmseasy_b_area VALUES('1530','牟平区','301');
INSERT INTO cmseasy_b_area VALUES('1531','长岛县','301');
INSERT INTO cmseasy_b_area VALUES('1532','莱阳市','301');
INSERT INTO cmseasy_b_area VALUES('1533','蓬莱市','301');
INSERT INTO cmseasy_b_area VALUES('1534','栖霞市','301');
INSERT INTO cmseasy_b_area VALUES('1535','海阳市','301');
INSERT INTO cmseasy_b_area VALUES('1536','福山区','301');
INSERT INTO cmseasy_b_area VALUES('1537','莱山区','301');
INSERT INTO cmseasy_b_area VALUES('1538','龙口市','301');
INSERT INTO cmseasy_b_area VALUES('1539','莱州市','301');
INSERT INTO cmseasy_b_area VALUES('1540','招远市','301');
INSERT INTO cmseasy_b_area VALUES('1541','环翠区','302');
INSERT INTO cmseasy_b_area VALUES('1542','荣成市','302');
INSERT INTO cmseasy_b_area VALUES('1543','乳山市','302');
INSERT INTO cmseasy_b_area VALUES('1544','文登市','302');
INSERT INTO cmseasy_b_area VALUES('1545','市中区','303');
INSERT INTO cmseasy_b_area VALUES('1546','微山县','303');
INSERT INTO cmseasy_b_area VALUES('1547','金乡县','303');
INSERT INTO cmseasy_b_area VALUES('1548','汶上县','303');
INSERT INTO cmseasy_b_area VALUES('1549','梁山县','303');
INSERT INTO cmseasy_b_area VALUES('1550','兖州市','303');
INSERT INTO cmseasy_b_area VALUES('1551','邹城市','303');
INSERT INTO cmseasy_b_area VALUES('1552','任城区','303');
INSERT INTO cmseasy_b_area VALUES('1553','鱼台县','303');
INSERT INTO cmseasy_b_area VALUES('1554','嘉祥县','303');
INSERT INTO cmseasy_b_area VALUES('1555','泗水县','303');
INSERT INTO cmseasy_b_area VALUES('1556','曲阜市','303');
INSERT INTO cmseasy_b_area VALUES('1557','泰山区','304');
INSERT INTO cmseasy_b_area VALUES('1558','宁阳县','304');
INSERT INTO cmseasy_b_area VALUES('1559','新泰市','304');
INSERT INTO cmseasy_b_area VALUES('1560','肥城市','304');
INSERT INTO cmseasy_b_area VALUES('1561','岱岳区','304');
INSERT INTO cmseasy_b_area VALUES('1562','东平县','304');
INSERT INTO cmseasy_b_area VALUES('1563','东港区','305');
INSERT INTO cmseasy_b_area VALUES('1564','五莲县','305');
INSERT INTO cmseasy_b_area VALUES('1565','莒县','305');
INSERT INTO cmseasy_b_area VALUES('1566','岚山区','305');
INSERT INTO cmseasy_b_area VALUES('1567','莱城区','306');
INSERT INTO cmseasy_b_area VALUES('1568','钢城区','306');
INSERT INTO cmseasy_b_area VALUES('1569','兰山区','307');
INSERT INTO cmseasy_b_area VALUES('1570','河东区','307');
INSERT INTO cmseasy_b_area VALUES('1571','郯城县','307');
INSERT INTO cmseasy_b_area VALUES('1572','苍山县','307');
INSERT INTO cmseasy_b_area VALUES('1573','平邑县','307');
INSERT INTO cmseasy_b_area VALUES('1574','蒙阴县','307');
INSERT INTO cmseasy_b_area VALUES('1575','临沭县','307');
INSERT INTO cmseasy_b_area VALUES('1576','罗庄区','307');
INSERT INTO cmseasy_b_area VALUES('1577','沂南县','307');
INSERT INTO cmseasy_b_area VALUES('1578','沂水县','307');
INSERT INTO cmseasy_b_area VALUES('1579','费县','307');
INSERT INTO cmseasy_b_area VALUES('1580','莒南县','307');
INSERT INTO cmseasy_b_area VALUES('1581','德城区','308');
INSERT INTO cmseasy_b_area VALUES('1582','宁津县','308');
INSERT INTO cmseasy_b_area VALUES('1583','临邑县','308');
INSERT INTO cmseasy_b_area VALUES('1584','平原县','308');
INSERT INTO cmseasy_b_area VALUES('1585','武城县','308');
INSERT INTO cmseasy_b_area VALUES('1586','禹城市','308');
INSERT INTO cmseasy_b_area VALUES('1587','陵县','308');
INSERT INTO cmseasy_b_area VALUES('1588','庆云县','308');
INSERT INTO cmseasy_b_area VALUES('1589','齐河县','308');
INSERT INTO cmseasy_b_area VALUES('1590','夏津县','308');
INSERT INTO cmseasy_b_area VALUES('1591','乐陵市','308');
INSERT INTO cmseasy_b_area VALUES('1592','东昌府区','309');
INSERT INTO cmseasy_b_area VALUES('1593','莘县','309');
INSERT INTO cmseasy_b_area VALUES('1594','东阿县','309');
INSERT INTO cmseasy_b_area VALUES('1595','高唐县','309');
INSERT INTO cmseasy_b_area VALUES('1596','临清市','309');
INSERT INTO cmseasy_b_area VALUES('1597','阳谷县','309');
INSERT INTO cmseasy_b_area VALUES('1598','茌平县','309');
INSERT INTO cmseasy_b_area VALUES('1599','冠县','309');
INSERT INTO cmseasy_b_area VALUES('1600','滨城区','310');
INSERT INTO cmseasy_b_area VALUES('1601','阳信县','310');
INSERT INTO cmseasy_b_area VALUES('1602','沾化县','310');
INSERT INTO cmseasy_b_area VALUES('1603','邹平县','310');
INSERT INTO cmseasy_b_area VALUES('1604','惠民县','310');
INSERT INTO cmseasy_b_area VALUES('1605','无棣县','310');
INSERT INTO cmseasy_b_area VALUES('1606','博兴县','310');
INSERT INTO cmseasy_b_area VALUES('1607','牡丹区','311');
INSERT INTO cmseasy_b_area VALUES('1608','单县','311');
INSERT INTO cmseasy_b_area VALUES('1609','巨野县','311');
INSERT INTO cmseasy_b_area VALUES('1610','东明县','311');
INSERT INTO cmseasy_b_area VALUES('1611','曹县','311');
INSERT INTO cmseasy_b_area VALUES('1612','成武县','311');
INSERT INTO cmseasy_b_area VALUES('1613','郓城县','311');
INSERT INTO cmseasy_b_area VALUES('1614','鄄城县','311');
INSERT INTO cmseasy_b_area VALUES('1615','定陶县','311');
INSERT INTO cmseasy_b_area VALUES('1616','玄武区','312');
INSERT INTO cmseasy_b_area VALUES('1617','秦淮区','312');
INSERT INTO cmseasy_b_area VALUES('1618','鼓楼区','312');
INSERT INTO cmseasy_b_area VALUES('1619','浦口区','312');
INSERT INTO cmseasy_b_area VALUES('1620','雨花台区','312');
INSERT INTO cmseasy_b_area VALUES('1621','六合区','312');
INSERT INTO cmseasy_b_area VALUES('1622','高淳县','312');
INSERT INTO cmseasy_b_area VALUES('1623','白下区','312');
INSERT INTO cmseasy_b_area VALUES('1624','建邺区','312');
INSERT INTO cmseasy_b_area VALUES('1625','下关区','312');
INSERT INTO cmseasy_b_area VALUES('1626','栖霞区','312');
INSERT INTO cmseasy_b_area VALUES('1627','江宁区','312');
INSERT INTO cmseasy_b_area VALUES('1628','溧水县','312');
INSERT INTO cmseasy_b_area VALUES('1629','鼓楼区','313');
INSERT INTO cmseasy_b_area VALUES('1630','九里区','313');
INSERT INTO cmseasy_b_area VALUES('1631','泉山区','313');
INSERT INTO cmseasy_b_area VALUES('1632','沛县','313');
INSERT INTO cmseasy_b_area VALUES('1633','睢宁县','313');
INSERT INTO cmseasy_b_area VALUES('1634','邳州市','313');
INSERT INTO cmseasy_b_area VALUES('1635','云龙区','313');
INSERT INTO cmseasy_b_area VALUES('1636','贾汪区','313');
INSERT INTO cmseasy_b_area VALUES('1637','丰县','313');
INSERT INTO cmseasy_b_area VALUES('1638','铜山县','313');
INSERT INTO cmseasy_b_area VALUES('1639','新沂市','313');
INSERT INTO cmseasy_b_area VALUES('1640','连云区','314');
INSERT INTO cmseasy_b_area VALUES('1641','海州区','314');
INSERT INTO cmseasy_b_area VALUES('1642','东海县','314');
INSERT INTO cmseasy_b_area VALUES('1643','灌南县','314');
INSERT INTO cmseasy_b_area VALUES('1644','新浦区','314');
INSERT INTO cmseasy_b_area VALUES('1645','赣榆县','314');
INSERT INTO cmseasy_b_area VALUES('1646','灌云县','314');
INSERT INTO cmseasy_b_area VALUES('1647','清河区','315');
INSERT INTO cmseasy_b_area VALUES('1648','淮阴区','315');
INSERT INTO cmseasy_b_area VALUES('1649','涟水县','315');
INSERT INTO cmseasy_b_area VALUES('1650','盱眙县','315');
INSERT INTO cmseasy_b_area VALUES('1651','金湖县','315');
INSERT INTO cmseasy_b_area VALUES('1652','楚州区','315');
INSERT INTO cmseasy_b_area VALUES('1653','清浦区','315');
INSERT INTO cmseasy_b_area VALUES('1654','洪泽县','315');
INSERT INTO cmseasy_b_area VALUES('1655','宿城区','316');
INSERT INTO cmseasy_b_area VALUES('1656','沭阳县','316');
INSERT INTO cmseasy_b_area VALUES('1657','泗洪县','316');
INSERT INTO cmseasy_b_area VALUES('1658','宿豫区','316');
INSERT INTO cmseasy_b_area VALUES('1659','泗阳县','316');
INSERT INTO cmseasy_b_area VALUES('1660','盐都区','317');
INSERT INTO cmseasy_b_area VALUES('1661','滨海县','317');
INSERT INTO cmseasy_b_area VALUES('1662','射阳县','317');
INSERT INTO cmseasy_b_area VALUES('1663','东台市','317');
INSERT INTO cmseasy_b_area VALUES('1664','大丰市','317');
INSERT INTO cmseasy_b_area VALUES('1665','响水县','317');
INSERT INTO cmseasy_b_area VALUES('1666','阜宁县','317');
INSERT INTO cmseasy_b_area VALUES('1667','建湖县','317');
INSERT INTO cmseasy_b_area VALUES('1668','广陵区','318');
INSERT INTO cmseasy_b_area VALUES('1669','宝应县','318');
INSERT INTO cmseasy_b_area VALUES('1670','高邮市','318');
INSERT INTO cmseasy_b_area VALUES('1671','江都市','318');
INSERT INTO cmseasy_b_area VALUES('1672','邗江区','318');
INSERT INTO cmseasy_b_area VALUES('1673','仪征市','318');
INSERT INTO cmseasy_b_area VALUES('1674','海陵区','319');
INSERT INTO cmseasy_b_area VALUES('1675','姜堰市','319');
INSERT INTO cmseasy_b_area VALUES('1676','高港区','319');
INSERT INTO cmseasy_b_area VALUES('1677','兴化市','319');
INSERT INTO cmseasy_b_area VALUES('1678','泰兴市','319');
INSERT INTO cmseasy_b_area VALUES('1679','靖江市','319');
INSERT INTO cmseasy_b_area VALUES('1680','海门市','320');
INSERT INTO cmseasy_b_area VALUES('1681','崇川区','320');
INSERT INTO cmseasy_b_area VALUES('1682','海安县','320');
INSERT INTO cmseasy_b_area VALUES('1683','启东市','320');
INSERT INTO cmseasy_b_area VALUES('1684','通州市','320');
INSERT INTO cmseasy_b_area VALUES('1685','港闸区','320');
INSERT INTO cmseasy_b_area VALUES('1686','如东县','320');
INSERT INTO cmseasy_b_area VALUES('1687','如皋市','320');
INSERT INTO cmseasy_b_area VALUES('1688','京口区','321');
INSERT INTO cmseasy_b_area VALUES('1689','丹徒区','321');
INSERT INTO cmseasy_b_area VALUES('1690','扬中市','321');
INSERT INTO cmseasy_b_area VALUES('1691','句容市','321');
INSERT INTO cmseasy_b_area VALUES('1692','润州区','321');
INSERT INTO cmseasy_b_area VALUES('1693','丹阳市','321');
INSERT INTO cmseasy_b_area VALUES('1694','天宁区','322');
INSERT INTO cmseasy_b_area VALUES('1695','戚墅堰区','322');
INSERT INTO cmseasy_b_area VALUES('1696','溧阳市','322');
INSERT INTO cmseasy_b_area VALUES('1697','金坛市','322');
INSERT INTO cmseasy_b_area VALUES('1698','钟楼区','322');
INSERT INTO cmseasy_b_area VALUES('1699','武进区','322');
INSERT INTO cmseasy_b_area VALUES('1700','崇安区','323');
INSERT INTO cmseasy_b_area VALUES('1701','北塘区','323');
INSERT INTO cmseasy_b_area VALUES('1702','惠山区','323');
INSERT INTO cmseasy_b_area VALUES('1703','宜兴市','323');
INSERT INTO cmseasy_b_area VALUES('1704','南长区','323');
INSERT INTO cmseasy_b_area VALUES('1705','锡山区','323');
INSERT INTO cmseasy_b_area VALUES('1706','江阴市','323');
INSERT INTO cmseasy_b_area VALUES('1707','沧浪区','324');
INSERT INTO cmseasy_b_area VALUES('1708','金阊区','324');
INSERT INTO cmseasy_b_area VALUES('1709','吴中区','324');
INSERT INTO cmseasy_b_area VALUES('1710','常熟市','324');
INSERT INTO cmseasy_b_area VALUES('1711','昆山市','324');
INSERT INTO cmseasy_b_area VALUES('1712','太仓市','324');
INSERT INTO cmseasy_b_area VALUES('1713','平江区','324');
INSERT INTO cmseasy_b_area VALUES('1714','虎丘区','324');
INSERT INTO cmseasy_b_area VALUES('1715','相城区','324');
INSERT INTO cmseasy_b_area VALUES('1716','张家港市','324');
INSERT INTO cmseasy_b_area VALUES('1717','吴江市','324');
INSERT INTO cmseasy_b_area VALUES('1718','瑶海区','325');
INSERT INTO cmseasy_b_area VALUES('1719','庐阳区','325');
INSERT INTO cmseasy_b_area VALUES('1720','蜀山区','325');
INSERT INTO cmseasy_b_area VALUES('1721','包河区','325');
INSERT INTO cmseasy_b_area VALUES('1722','长丰县','325');
INSERT INTO cmseasy_b_area VALUES('1723','肥东县','325');
INSERT INTO cmseasy_b_area VALUES('1724','肥西县','325');
INSERT INTO cmseasy_b_area VALUES('1725','镜湖区','326');
INSERT INTO cmseasy_b_area VALUES('1726','新芜区','326');
INSERT INTO cmseasy_b_area VALUES('1727','芜湖县','326');
INSERT INTO cmseasy_b_area VALUES('1728','南陵县','326');
INSERT INTO cmseasy_b_area VALUES('1729','马塘区','326');
INSERT INTO cmseasy_b_area VALUES('1730','鸠江区','326');
INSERT INTO cmseasy_b_area VALUES('1731','繁昌县','326');
INSERT INTO cmseasy_b_area VALUES('1732','龙子湖区','327');
INSERT INTO cmseasy_b_area VALUES('1733','禹会区','327');
INSERT INTO cmseasy_b_area VALUES('1734','怀远县','327');
INSERT INTO cmseasy_b_area VALUES('1735','固镇县','327');
INSERT INTO cmseasy_b_area VALUES('1736','蚌山区','327');
INSERT INTO cmseasy_b_area VALUES('1737','淮上区','327');
INSERT INTO cmseasy_b_area VALUES('1738','五河县','327');
INSERT INTO cmseasy_b_area VALUES('1739','大通区','328');
INSERT INTO cmseasy_b_area VALUES('1740','谢家集区','328');
INSERT INTO cmseasy_b_area VALUES('1741','潘集区','328');
INSERT INTO cmseasy_b_area VALUES('1742','凤台县','328');
INSERT INTO cmseasy_b_area VALUES('1743','田家庵区','328');
INSERT INTO cmseasy_b_area VALUES('1744','八公山区','328');
INSERT INTO cmseasy_b_area VALUES('1745','金家庄区','329');
INSERT INTO cmseasy_b_area VALUES('1746','雨山区','329');
INSERT INTO cmseasy_b_area VALUES('1747','当涂县','329');
INSERT INTO cmseasy_b_area VALUES('1748','花山区','329');
INSERT INTO cmseasy_b_area VALUES('1749','杜集区','330');
INSERT INTO cmseasy_b_area VALUES('1750','烈山区','330');
INSERT INTO cmseasy_b_area VALUES('1751','濉溪县','330');
INSERT INTO cmseasy_b_area VALUES('1752','相山区','330');
INSERT INTO cmseasy_b_area VALUES('1753','铜官山区','331');
INSERT INTO cmseasy_b_area VALUES('1754','郊区','331');
INSERT INTO cmseasy_b_area VALUES('1755','铜陵县','331');
INSERT INTO cmseasy_b_area VALUES('1756','狮子山区','331');
INSERT INTO cmseasy_b_area VALUES('1757','迎江区','332');
INSERT INTO cmseasy_b_area VALUES('1758','郊区','332');
INSERT INTO cmseasy_b_area VALUES('1759','枞阳县','332');
INSERT INTO cmseasy_b_area VALUES('1760','太湖县','332');
INSERT INTO cmseasy_b_area VALUES('1761','望江县','332');
INSERT INTO cmseasy_b_area VALUES('1762','桐城市','332');
INSERT INTO cmseasy_b_area VALUES('1763','大观区','332');
INSERT INTO cmseasy_b_area VALUES('1764','怀宁县','332');
INSERT INTO cmseasy_b_area VALUES('1765','潜山县','332');
INSERT INTO cmseasy_b_area VALUES('1766','宿松县','332');
INSERT INTO cmseasy_b_area VALUES('1767','岳西县','332');
INSERT INTO cmseasy_b_area VALUES('1768','屯溪区','333');
INSERT INTO cmseasy_b_area VALUES('1769','徽州区','333');
INSERT INTO cmseasy_b_area VALUES('1770','休宁县','333');
INSERT INTO cmseasy_b_area VALUES('1771','祁门县','333');
INSERT INTO cmseasy_b_area VALUES('1772','黄山区','333');
INSERT INTO cmseasy_b_area VALUES('1773','歙县','333');
INSERT INTO cmseasy_b_area VALUES('1774','黟县','333');
INSERT INTO cmseasy_b_area VALUES('1775','琅琊区','334');
INSERT INTO cmseasy_b_area VALUES('1776','来安县','334');
INSERT INTO cmseasy_b_area VALUES('1777','定远县','334');
INSERT INTO cmseasy_b_area VALUES('1778','天长市','334');
INSERT INTO cmseasy_b_area VALUES('1779','明光市','334');
INSERT INTO cmseasy_b_area VALUES('1780','南谯区','334');
INSERT INTO cmseasy_b_area VALUES('1781','全椒县','334');
INSERT INTO cmseasy_b_area VALUES('1782','凤阳县','334');
INSERT INTO cmseasy_b_area VALUES('1783','颍州区','335');
INSERT INTO cmseasy_b_area VALUES('1784','颍泉区','335');
INSERT INTO cmseasy_b_area VALUES('1785','太和县','335');
INSERT INTO cmseasy_b_area VALUES('1786','颍上县','335');
INSERT INTO cmseasy_b_area VALUES('1787','界首市','335');
INSERT INTO cmseasy_b_area VALUES('1788','颍东区','335');
INSERT INTO cmseasy_b_area VALUES('1789','临泉县','335');
INSERT INTO cmseasy_b_area VALUES('1790','阜南县','335');
INSERT INTO cmseasy_b_area VALUES('1791','墉桥区','336');
INSERT INTO cmseasy_b_area VALUES('1792','萧县','336');
INSERT INTO cmseasy_b_area VALUES('1793','泗县','336');
INSERT INTO cmseasy_b_area VALUES('1794','砀山县','336');
INSERT INTO cmseasy_b_area VALUES('1795','灵璧县','336');
INSERT INTO cmseasy_b_area VALUES('1796','居巢区','337');
INSERT INTO cmseasy_b_area VALUES('1797','无为县','337');
INSERT INTO cmseasy_b_area VALUES('1798','和县','337');
INSERT INTO cmseasy_b_area VALUES('1799','庐江县','337');
INSERT INTO cmseasy_b_area VALUES('1800','含山县','337');
INSERT INTO cmseasy_b_area VALUES('1801','金安区','338');
INSERT INTO cmseasy_b_area VALUES('1802','寿县','338');
INSERT INTO cmseasy_b_area VALUES('1803','舒城县','338');
INSERT INTO cmseasy_b_area VALUES('1804','裕安区','338');
INSERT INTO cmseasy_b_area VALUES('1805','霍邱县','338');
INSERT INTO cmseasy_b_area VALUES('1806','金寨县','338');
INSERT INTO cmseasy_b_area VALUES('1807','谯城区','339');
INSERT INTO cmseasy_b_area VALUES('1808','蒙城县','339');
INSERT INTO cmseasy_b_area VALUES('1809','利辛县','339');
INSERT INTO cmseasy_b_area VALUES('1810','涡阳县','339');
INSERT INTO cmseasy_b_area VALUES('1811','贵池区','340');
INSERT INTO cmseasy_b_area VALUES('1812','石台县','340');
INSERT INTO cmseasy_b_area VALUES('1813','青阳县','340');
INSERT INTO cmseasy_b_area VALUES('1814','东至县','340');
INSERT INTO cmseasy_b_area VALUES('1815','宣州区','341');
INSERT INTO cmseasy_b_area VALUES('1816','广德县','341');
INSERT INTO cmseasy_b_area VALUES('1817','绩溪县','341');
INSERT INTO cmseasy_b_area VALUES('1818','宁国市','341');
INSERT INTO cmseasy_b_area VALUES('1819','郎溪县','341');
INSERT INTO cmseasy_b_area VALUES('1820','泾县','341');
INSERT INTO cmseasy_b_area VALUES('1821','旌德县','341');
INSERT INTO cmseasy_b_area VALUES('1822','东湖区','342');
INSERT INTO cmseasy_b_area VALUES('1823','青云谱区','342');
INSERT INTO cmseasy_b_area VALUES('1824','南昌县','342');
INSERT INTO cmseasy_b_area VALUES('1825','安义县','342');
INSERT INTO cmseasy_b_area VALUES('1826','进贤县','342');
INSERT INTO cmseasy_b_area VALUES('1827','西湖区','342');
INSERT INTO cmseasy_b_area VALUES('1828','湾里区','342');
INSERT INTO cmseasy_b_area VALUES('1829','新建县','342');
INSERT INTO cmseasy_b_area VALUES('1830','昌江区','343');
INSERT INTO cmseasy_b_area VALUES('1831','浮梁县','343');
INSERT INTO cmseasy_b_area VALUES('1832','乐平市','343');
INSERT INTO cmseasy_b_area VALUES('1833','珠山区','343');
INSERT INTO cmseasy_b_area VALUES('1834','安源区','344');
INSERT INTO cmseasy_b_area VALUES('1835','莲花县','344');
INSERT INTO cmseasy_b_area VALUES('1836','芦溪县','344');
INSERT INTO cmseasy_b_area VALUES('1837','湘东区','344');
INSERT INTO cmseasy_b_area VALUES('1838','上栗县','344');
INSERT INTO cmseasy_b_area VALUES('1839','庐山区','345');
INSERT INTO cmseasy_b_area VALUES('1840','九江县','345');
INSERT INTO cmseasy_b_area VALUES('1841','修水县','345');
INSERT INTO cmseasy_b_area VALUES('1842','德安县','345');
INSERT INTO cmseasy_b_area VALUES('1843','都昌县','345');
INSERT INTO cmseasy_b_area VALUES('1844','彭泽县','345');
INSERT INTO cmseasy_b_area VALUES('1845','瑞昌市','345');
INSERT INTO cmseasy_b_area VALUES('1846','浔阳区','345');
INSERT INTO cmseasy_b_area VALUES('1847','武宁县','345');
INSERT INTO cmseasy_b_area VALUES('1848','永修县','345');
INSERT INTO cmseasy_b_area VALUES('1849','星子县','345');
INSERT INTO cmseasy_b_area VALUES('1850','湖口县','345');
INSERT INTO cmseasy_b_area VALUES('1851','渝水区','346');
INSERT INTO cmseasy_b_area VALUES('1852','分宜县','346');
INSERT INTO cmseasy_b_area VALUES('1853','月湖区','347');
INSERT INTO cmseasy_b_area VALUES('1854','贵溪市','347');
INSERT INTO cmseasy_b_area VALUES('1855','余江县','347');
INSERT INTO cmseasy_b_area VALUES('1856','章贡区','348');
INSERT INTO cmseasy_b_area VALUES('1857','信丰县','348');
INSERT INTO cmseasy_b_area VALUES('1858','上犹县','348');
INSERT INTO cmseasy_b_area VALUES('1859','安远县','348');
INSERT INTO cmseasy_b_area VALUES('1860','定南县','348');
INSERT INTO cmseasy_b_area VALUES('1861','宁都县','348');
INSERT INTO cmseasy_b_area VALUES('1862','兴国县','348');
INSERT INTO cmseasy_b_area VALUES('1863','寻乌县','348');
INSERT INTO cmseasy_b_area VALUES('1864','瑞金市','348');
INSERT INTO cmseasy_b_area VALUES('1865','南康市','348');
INSERT INTO cmseasy_b_area VALUES('1866','赣县','348');
INSERT INTO cmseasy_b_area VALUES('1867','大余县','348');
INSERT INTO cmseasy_b_area VALUES('1868','崇义县','348');
INSERT INTO cmseasy_b_area VALUES('1869','龙南县','348');
INSERT INTO cmseasy_b_area VALUES('1870','全南县','348');
INSERT INTO cmseasy_b_area VALUES('1871','于都县','348');
INSERT INTO cmseasy_b_area VALUES('1872','会昌县','348');
INSERT INTO cmseasy_b_area VALUES('1873','石城县','348');
INSERT INTO cmseasy_b_area VALUES('1874','吉州区','349');
INSERT INTO cmseasy_b_area VALUES('1875','吉安县','349');
INSERT INTO cmseasy_b_area VALUES('1876','峡江县','349');
INSERT INTO cmseasy_b_area VALUES('1877','永丰县','349');
INSERT INTO cmseasy_b_area VALUES('1878','遂川县','349');
INSERT INTO cmseasy_b_area VALUES('1879','安福县','349');
INSERT INTO cmseasy_b_area VALUES('1880','井冈山市','349');
INSERT INTO cmseasy_b_area VALUES('1881','青原区','349');
INSERT INTO cmseasy_b_area VALUES('1882','吉水县','349');
INSERT INTO cmseasy_b_area VALUES('1883','新干县','349');
INSERT INTO cmseasy_b_area VALUES('1884','泰和县','349');
INSERT INTO cmseasy_b_area VALUES('1885','万安县','349');
INSERT INTO cmseasy_b_area VALUES('1886','永新县','349');
INSERT INTO cmseasy_b_area VALUES('1887','袁州区','350');
INSERT INTO cmseasy_b_area VALUES('1888','万载县','350');
INSERT INTO cmseasy_b_area VALUES('1889','宜丰县','350');
INSERT INTO cmseasy_b_area VALUES('1890','铜鼓县','350');
INSERT INTO cmseasy_b_area VALUES('1891','樟树市','350');
INSERT INTO cmseasy_b_area VALUES('1892','高安市','350');
INSERT INTO cmseasy_b_area VALUES('1893','奉新县','350');
INSERT INTO cmseasy_b_area VALUES('1894','上高县','350');
INSERT INTO cmseasy_b_area VALUES('1895','靖安县','350');
INSERT INTO cmseasy_b_area VALUES('1896','丰城市','350');
INSERT INTO cmseasy_b_area VALUES('1897','临川区','351');
INSERT INTO cmseasy_b_area VALUES('1898','黎川县','351');
INSERT INTO cmseasy_b_area VALUES('1899','崇仁县','351');
INSERT INTO cmseasy_b_area VALUES('1900','宜黄县','351');
INSERT INTO cmseasy_b_area VALUES('1901','资溪县','351');
INSERT INTO cmseasy_b_area VALUES('1902','广昌县','351');
INSERT INTO cmseasy_b_area VALUES('1903','南城县','351');
INSERT INTO cmseasy_b_area VALUES('1904','南丰县','351');
INSERT INTO cmseasy_b_area VALUES('1905','乐安县','351');
INSERT INTO cmseasy_b_area VALUES('1906','金溪县','351');
INSERT INTO cmseasy_b_area VALUES('1907','东乡县','351');
INSERT INTO cmseasy_b_area VALUES('1908','信州区','352');
INSERT INTO cmseasy_b_area VALUES('1909','广丰县','352');
INSERT INTO cmseasy_b_area VALUES('1910','铅山县','352');
INSERT INTO cmseasy_b_area VALUES('1911','弋阳县','352');
INSERT INTO cmseasy_b_area VALUES('1912','鄱阳县','352');
INSERT INTO cmseasy_b_area VALUES('1913','婺源县','352');
INSERT INTO cmseasy_b_area VALUES('1914','德兴市','352');
INSERT INTO cmseasy_b_area VALUES('1915','上饶县','352');
INSERT INTO cmseasy_b_area VALUES('1916','玉山县','352');
INSERT INTO cmseasy_b_area VALUES('1917','横峰县','352');
INSERT INTO cmseasy_b_area VALUES('1918','余干县','352');
INSERT INTO cmseasy_b_area VALUES('1919','万年县','352');
INSERT INTO cmseasy_b_area VALUES('1920','上城区','353');
INSERT INTO cmseasy_b_area VALUES('1921','江干区','353');
INSERT INTO cmseasy_b_area VALUES('1922','西湖区','353');
INSERT INTO cmseasy_b_area VALUES('1923','萧山区','353');
INSERT INTO cmseasy_b_area VALUES('1924','桐庐县','353');
INSERT INTO cmseasy_b_area VALUES('1925','建德市','353');
INSERT INTO cmseasy_b_area VALUES('1926','临安市','353');
INSERT INTO cmseasy_b_area VALUES('1927','下城区','353');
INSERT INTO cmseasy_b_area VALUES('1928','拱墅区','353');
INSERT INTO cmseasy_b_area VALUES('1929','滨江区','353');
INSERT INTO cmseasy_b_area VALUES('1930','余杭区','353');
INSERT INTO cmseasy_b_area VALUES('1931','淳安县','353');
INSERT INTO cmseasy_b_area VALUES('1932','富阳市','353');
INSERT INTO cmseasy_b_area VALUES('1933','海曙区','354');
INSERT INTO cmseasy_b_area VALUES('1934','江北区','354');
INSERT INTO cmseasy_b_area VALUES('1935','镇海区','354');
INSERT INTO cmseasy_b_area VALUES('1936','象山县','354');
INSERT INTO cmseasy_b_area VALUES('1937','余姚市','354');
INSERT INTO cmseasy_b_area VALUES('1938','奉化市','354');
INSERT INTO cmseasy_b_area VALUES('1939','江东区','354');
INSERT INTO cmseasy_b_area VALUES('1940','北仑区','354');
INSERT INTO cmseasy_b_area VALUES('1941','鄞州区','354');
INSERT INTO cmseasy_b_area VALUES('1942','宁海县','354');
INSERT INTO cmseasy_b_area VALUES('1943','慈溪市','354');
INSERT INTO cmseasy_b_area VALUES('1944','鹿城区','355');
INSERT INTO cmseasy_b_area VALUES('1945','瓯海区','355');
INSERT INTO cmseasy_b_area VALUES('1946','永嘉县','355');
INSERT INTO cmseasy_b_area VALUES('1947','苍南县','355');
INSERT INTO cmseasy_b_area VALUES('1948','泰顺县','355');
INSERT INTO cmseasy_b_area VALUES('1949','乐清市','355');
INSERT INTO cmseasy_b_area VALUES('1950','龙湾区','355');
INSERT INTO cmseasy_b_area VALUES('1951','洞头县','355');
INSERT INTO cmseasy_b_area VALUES('1952','平阳县','355');
INSERT INTO cmseasy_b_area VALUES('1953','文成县','355');
INSERT INTO cmseasy_b_area VALUES('1954','瑞安市','355');
INSERT INTO cmseasy_b_area VALUES('1955','秀城区','356');
INSERT INTO cmseasy_b_area VALUES('1956','海盐县','356');
INSERT INTO cmseasy_b_area VALUES('1957','桐乡市','356');
INSERT INTO cmseasy_b_area VALUES('1958','平湖市','356');
INSERT INTO cmseasy_b_area VALUES('1959','嘉善县','356');
INSERT INTO cmseasy_b_area VALUES('1960','海宁市','356');
INSERT INTO cmseasy_b_area VALUES('1961','吴兴区','357');
INSERT INTO cmseasy_b_area VALUES('1962','德清县','357');
INSERT INTO cmseasy_b_area VALUES('1963','安吉县','357');
INSERT INTO cmseasy_b_area VALUES('1964','南浔区','357');
INSERT INTO cmseasy_b_area VALUES('1965','长兴县','357');
INSERT INTO cmseasy_b_area VALUES('1966','越城区','358');
INSERT INTO cmseasy_b_area VALUES('1967','嵊州市','358');
INSERT INTO cmseasy_b_area VALUES('1968','绍兴县','358');
INSERT INTO cmseasy_b_area VALUES('1969','新昌县','358');
INSERT INTO cmseasy_b_area VALUES('1970','上虞市','358');
INSERT INTO cmseasy_b_area VALUES('1971','诸暨市','358');
INSERT INTO cmseasy_b_area VALUES('1972','婺城区','359');
INSERT INTO cmseasy_b_area VALUES('1973','武义县','359');
INSERT INTO cmseasy_b_area VALUES('1974','磐安县','359');
INSERT INTO cmseasy_b_area VALUES('1975','义乌市','359');
INSERT INTO cmseasy_b_area VALUES('1976','永康市','359');
INSERT INTO cmseasy_b_area VALUES('1977','金东区','359');
INSERT INTO cmseasy_b_area VALUES('1978','浦江县','359');
INSERT INTO cmseasy_b_area VALUES('1979','兰溪市','359');
INSERT INTO cmseasy_b_area VALUES('1980','东阳市','359');
INSERT INTO cmseasy_b_area VALUES('1981','柯城区','360');
INSERT INTO cmseasy_b_area VALUES('1982','常山县','360');
INSERT INTO cmseasy_b_area VALUES('1983','龙游县','360');
INSERT INTO cmseasy_b_area VALUES('1984','江山市','360');
INSERT INTO cmseasy_b_area VALUES('1985','衢江区','360');
INSERT INTO cmseasy_b_area VALUES('1986','开化县','360');
INSERT INTO cmseasy_b_area VALUES('1987','定海区','361');
INSERT INTO cmseasy_b_area VALUES('1988','岱山县','361');
INSERT INTO cmseasy_b_area VALUES('1989','嵊泗县','361');
INSERT INTO cmseasy_b_area VALUES('1990','普陀区','361');
INSERT INTO cmseasy_b_area VALUES('1991','椒江区','362');
INSERT INTO cmseasy_b_area VALUES('1992','路桥区','362');
INSERT INTO cmseasy_b_area VALUES('1993','三门县','362');
INSERT INTO cmseasy_b_area VALUES('1994','仙居县','362');
INSERT INTO cmseasy_b_area VALUES('1995','临海市','362');
INSERT INTO cmseasy_b_area VALUES('1996','黄岩区','362');
INSERT INTO cmseasy_b_area VALUES('1997','玉环县','362');
INSERT INTO cmseasy_b_area VALUES('1998','天台县','362');
INSERT INTO cmseasy_b_area VALUES('1999','温岭市','362');
INSERT INTO cmseasy_b_area VALUES('2000','莲都区','363');
INSERT INTO cmseasy_b_area VALUES('2001','缙云县','363');
INSERT INTO cmseasy_b_area VALUES('2002','松阳县','363');
INSERT INTO cmseasy_b_area VALUES('2003','庆元县','363');
INSERT INTO cmseasy_b_area VALUES('2004','龙泉市','363');
INSERT INTO cmseasy_b_area VALUES('2005','青田县','363');
INSERT INTO cmseasy_b_area VALUES('2006','遂昌县','363');
INSERT INTO cmseasy_b_area VALUES('2007','云和县','363');
INSERT INTO cmseasy_b_area VALUES('2008','景宁畲族自治县','363');
INSERT INTO cmseasy_b_area VALUES('2009','鼓楼区','364');
INSERT INTO cmseasy_b_area VALUES('2010','仓山区','364');
INSERT INTO cmseasy_b_area VALUES('2011','晋安区','364');
INSERT INTO cmseasy_b_area VALUES('2012','连江县','364');
INSERT INTO cmseasy_b_area VALUES('2013','闽清县','364');
INSERT INTO cmseasy_b_area VALUES('2014','平潭县','364');
INSERT INTO cmseasy_b_area VALUES('2015','长乐市','364');
INSERT INTO cmseasy_b_area VALUES('2016','台江区','364');
INSERT INTO cmseasy_b_area VALUES('2017','马尾区','364');
INSERT INTO cmseasy_b_area VALUES('2018','闽侯县','364');
INSERT INTO cmseasy_b_area VALUES('2019','罗源县','364');
INSERT INTO cmseasy_b_area VALUES('2020','永泰县','364');
INSERT INTO cmseasy_b_area VALUES('2021','福清市','364');
INSERT INTO cmseasy_b_area VALUES('2022','思明区','365');
INSERT INTO cmseasy_b_area VALUES('2023','湖里区','365');
INSERT INTO cmseasy_b_area VALUES('2024','同安区','365');
INSERT INTO cmseasy_b_area VALUES('2025','翔安区','365');
INSERT INTO cmseasy_b_area VALUES('2026','海沧区','365');
INSERT INTO cmseasy_b_area VALUES('2027','集美区','365');
INSERT INTO cmseasy_b_area VALUES('2028','梅列区','366');
INSERT INTO cmseasy_b_area VALUES('2029','明溪县','366');
INSERT INTO cmseasy_b_area VALUES('2030','宁化县','366');
INSERT INTO cmseasy_b_area VALUES('2031','尤溪县','366');
INSERT INTO cmseasy_b_area VALUES('2032','将乐县','366');
INSERT INTO cmseasy_b_area VALUES('2033','建宁县','366');
INSERT INTO cmseasy_b_area VALUES('2034','永安市','366');
INSERT INTO cmseasy_b_area VALUES('2035','三元区','366');
INSERT INTO cmseasy_b_area VALUES('2036','清流县','366');
INSERT INTO cmseasy_b_area VALUES('2037','大田县','366');
INSERT INTO cmseasy_b_area VALUES('2038','沙县','366');
INSERT INTO cmseasy_b_area VALUES('2039','泰宁县','366');
INSERT INTO cmseasy_b_area VALUES('2040','城厢区','367');
INSERT INTO cmseasy_b_area VALUES('2041','荔城区','367');
INSERT INTO cmseasy_b_area VALUES('2042','仙游县','367');
INSERT INTO cmseasy_b_area VALUES('2043','涵江区','367');
INSERT INTO cmseasy_b_area VALUES('2044','秀屿区','367');
INSERT INTO cmseasy_b_area VALUES('2045','鲤城区','368');
INSERT INTO cmseasy_b_area VALUES('2046','洛江区','368');
INSERT INTO cmseasy_b_area VALUES('2047','惠安县','368');
INSERT INTO cmseasy_b_area VALUES('2048','永春县','368');
INSERT INTO cmseasy_b_area VALUES('2049','金门县','368');
INSERT INTO cmseasy_b_area VALUES('2050','晋江市','368');
INSERT INTO cmseasy_b_area VALUES('2051','南安市','368');
INSERT INTO cmseasy_b_area VALUES('2052','丰泽区','368');
INSERT INTO cmseasy_b_area VALUES('2053','泉港区','368');
INSERT INTO cmseasy_b_area VALUES('2054','安溪县','368');
INSERT INTO cmseasy_b_area VALUES('2055','德化县','368');
INSERT INTO cmseasy_b_area VALUES('2056','石狮市','368');
INSERT INTO cmseasy_b_area VALUES('2057','芗城区','369');
INSERT INTO cmseasy_b_area VALUES('2058','云霄县','369');
INSERT INTO cmseasy_b_area VALUES('2059','诏安县','369');
INSERT INTO cmseasy_b_area VALUES('2060','东山县','369');
INSERT INTO cmseasy_b_area VALUES('2061','平和县','369');
INSERT INTO cmseasy_b_area VALUES('2062','龙海市','369');
INSERT INTO cmseasy_b_area VALUES('2063','龙文区','369');
INSERT INTO cmseasy_b_area VALUES('2064','漳浦县','369');
INSERT INTO cmseasy_b_area VALUES('2065','长泰县','369');
INSERT INTO cmseasy_b_area VALUES('2066','南靖县','369');
INSERT INTO cmseasy_b_area VALUES('2067','华安县','369');
INSERT INTO cmseasy_b_area VALUES('2068','延平区','370');
INSERT INTO cmseasy_b_area VALUES('2069','浦城县','370');
INSERT INTO cmseasy_b_area VALUES('2070','松溪县','370');
INSERT INTO cmseasy_b_area VALUES('2071','邵武市','370');
INSERT INTO cmseasy_b_area VALUES('2072','建瓯市','370');
INSERT INTO cmseasy_b_area VALUES('2073','建阳市','370');
INSERT INTO cmseasy_b_area VALUES('2074','顺昌县','370');
INSERT INTO cmseasy_b_area VALUES('2075','光泽县','370');
INSERT INTO cmseasy_b_area VALUES('2076','政和县','370');
INSERT INTO cmseasy_b_area VALUES('2077','武夷山市','370');
INSERT INTO cmseasy_b_area VALUES('2078','新罗区','371');
INSERT INTO cmseasy_b_area VALUES('2079','永定县','371');
INSERT INTO cmseasy_b_area VALUES('2080','武平县','371');
INSERT INTO cmseasy_b_area VALUES('2081','漳平市','371');
INSERT INTO cmseasy_b_area VALUES('2082','长汀县','371');
INSERT INTO cmseasy_b_area VALUES('2083','上杭县','371');
INSERT INTO cmseasy_b_area VALUES('2084','连城县','371');
INSERT INTO cmseasy_b_area VALUES('2085','蕉城区','372');
INSERT INTO cmseasy_b_area VALUES('2086','古田县','372');
INSERT INTO cmseasy_b_area VALUES('2087','寿宁县','372');
INSERT INTO cmseasy_b_area VALUES('2088','柘荣县','372');
INSERT INTO cmseasy_b_area VALUES('2089','福鼎市','372');
INSERT INTO cmseasy_b_area VALUES('2090','霞浦县','372');
INSERT INTO cmseasy_b_area VALUES('2091','屏南县','372');
INSERT INTO cmseasy_b_area VALUES('2092','周宁县','372');
INSERT INTO cmseasy_b_area VALUES('2093','福安市','372');
INSERT INTO cmseasy_b_area VALUES('2094','东山区','373');
INSERT INTO cmseasy_b_area VALUES('2095','越秀区','373');
INSERT INTO cmseasy_b_area VALUES('2096','天河区','373');
INSERT INTO cmseasy_b_area VALUES('2097','白云区','373');
INSERT INTO cmseasy_b_area VALUES('2098','番禺区','373');
INSERT INTO cmseasy_b_area VALUES('2099','增城市','373');
INSERT INTO cmseasy_b_area VALUES('2100','从化市','373');
INSERT INTO cmseasy_b_area VALUES('2101','荔湾区','373');
INSERT INTO cmseasy_b_area VALUES('2102','海珠区','373');
INSERT INTO cmseasy_b_area VALUES('2103','芳村区','373');
INSERT INTO cmseasy_b_area VALUES('2104','黄埔区','373');
INSERT INTO cmseasy_b_area VALUES('2105','花都区','373');
INSERT INTO cmseasy_b_area VALUES('2106','罗湖区','374');
INSERT INTO cmseasy_b_area VALUES('2107','福田区','374');
INSERT INTO cmseasy_b_area VALUES('2108','南山区','374');
INSERT INTO cmseasy_b_area VALUES('2109','宝安区','374');
INSERT INTO cmseasy_b_area VALUES('2110','龙岗区','374');
INSERT INTO cmseasy_b_area VALUES('2111','盐田区','374');
INSERT INTO cmseasy_b_area VALUES('2112','香洲区','375');
INSERT INTO cmseasy_b_area VALUES('2113','拱北区','375');
INSERT INTO cmseasy_b_area VALUES('2114','前山区','375');
INSERT INTO cmseasy_b_area VALUES('2115','金湾区','375');
INSERT INTO cmseasy_b_area VALUES('2116','斗门区','375');
INSERT INTO cmseasy_b_area VALUES('2117','龙湖区','376');
INSERT INTO cmseasy_b_area VALUES('2118','濠江区','376');
INSERT INTO cmseasy_b_area VALUES('2119','潮南区','376');
INSERT INTO cmseasy_b_area VALUES('2120','澄海区','376');
INSERT INTO cmseasy_b_area VALUES('2121','金平区','376');
INSERT INTO cmseasy_b_area VALUES('2122','潮阳区','376');
INSERT INTO cmseasy_b_area VALUES('2123','南澳县','376');
INSERT INTO cmseasy_b_area VALUES('2124','武江区','377');
INSERT INTO cmseasy_b_area VALUES('2125','曲江区','377');
INSERT INTO cmseasy_b_area VALUES('2126','仁化县','377');
INSERT INTO cmseasy_b_area VALUES('2127','乳源瑶族自治县','377');
INSERT INTO cmseasy_b_area VALUES('2128','乐昌市','377');
INSERT INTO cmseasy_b_area VALUES('2129','南雄市','377');
INSERT INTO cmseasy_b_area VALUES('2130','浈江区','377');
INSERT INTO cmseasy_b_area VALUES('2131','始兴县','377');
INSERT INTO cmseasy_b_area VALUES('2132','翁源县','377');
INSERT INTO cmseasy_b_area VALUES('2133','新丰县','377');
INSERT INTO cmseasy_b_area VALUES('2134','惠城区','378');
INSERT INTO cmseasy_b_area VALUES('2135','博罗县','378');
INSERT INTO cmseasy_b_area VALUES('2136','龙门县','378');
INSERT INTO cmseasy_b_area VALUES('2137','惠阳区','378');
INSERT INTO cmseasy_b_area VALUES('2138','惠东县','378');
INSERT INTO cmseasy_b_area VALUES('2139','东源县','379');
INSERT INTO cmseasy_b_area VALUES('2140','源城区','379');
INSERT INTO cmseasy_b_area VALUES('2141','龙川县','379');
INSERT INTO cmseasy_b_area VALUES('2142','和平县','379');
INSERT INTO cmseasy_b_area VALUES('2143','紫金县','379');
INSERT INTO cmseasy_b_area VALUES('2144','连平县','379');
INSERT INTO cmseasy_b_area VALUES('2145','梅江区','380');
INSERT INTO cmseasy_b_area VALUES('2146','大埔县','380');
INSERT INTO cmseasy_b_area VALUES('2147','五华县','380');
INSERT INTO cmseasy_b_area VALUES('2148','蕉岭县','380');
INSERT INTO cmseasy_b_area VALUES('2149','兴宁市','380');
INSERT INTO cmseasy_b_area VALUES('2150','梅县','380');
INSERT INTO cmseasy_b_area VALUES('2151','丰顺县','380');
INSERT INTO cmseasy_b_area VALUES('2152','平远县','380');
INSERT INTO cmseasy_b_area VALUES('2153','城区','381');
INSERT INTO cmseasy_b_area VALUES('2154','陆河县','381');
INSERT INTO cmseasy_b_area VALUES('2155','陆丰市','381');
INSERT INTO cmseasy_b_area VALUES('2156','海丰县','381');
INSERT INTO cmseasy_b_area VALUES('2157','蓬江区','384');
INSERT INTO cmseasy_b_area VALUES('2158','恩平市','384');
INSERT INTO cmseasy_b_area VALUES('2159','江海区','384');
INSERT INTO cmseasy_b_area VALUES('2160','新会区','384');
INSERT INTO cmseasy_b_area VALUES('2161','开平市','384');
INSERT INTO cmseasy_b_area VALUES('2162','台山市','384');
INSERT INTO cmseasy_b_area VALUES('2163','鹤山市','384');
INSERT INTO cmseasy_b_area VALUES('2164','禅城区','385');
INSERT INTO cmseasy_b_area VALUES('2165','顺德区','385');
INSERT INTO cmseasy_b_area VALUES('2166','高明区','385');
INSERT INTO cmseasy_b_area VALUES('2167','南海区','385');
INSERT INTO cmseasy_b_area VALUES('2168','三水区','385');
INSERT INTO cmseasy_b_area VALUES('2169','江城区','386');
INSERT INTO cmseasy_b_area VALUES('2170','阳东县','386');
INSERT INTO cmseasy_b_area VALUES('2171','阳春市','386');
INSERT INTO cmseasy_b_area VALUES('2172','阳西县','386');
INSERT INTO cmseasy_b_area VALUES('2173','赤坎区','387');
INSERT INTO cmseasy_b_area VALUES('2174','坡头区','387');
INSERT INTO cmseasy_b_area VALUES('2175','遂溪县','387');
INSERT INTO cmseasy_b_area VALUES('2176','廉江市','387');
INSERT INTO cmseasy_b_area VALUES('2177','吴川市','387');
INSERT INTO cmseasy_b_area VALUES('2178','霞山区','387');
INSERT INTO cmseasy_b_area VALUES('2179','麻章区','387');
INSERT INTO cmseasy_b_area VALUES('2180','徐闻县','387');
INSERT INTO cmseasy_b_area VALUES('2181','雷州市','387');
INSERT INTO cmseasy_b_area VALUES('2182','茂南区','388');
INSERT INTO cmseasy_b_area VALUES('2183','电白县','388');
INSERT INTO cmseasy_b_area VALUES('2184','化州市','388');
INSERT INTO cmseasy_b_area VALUES('2185','信宜市','388');
INSERT INTO cmseasy_b_area VALUES('2186','茂港区','388');
INSERT INTO cmseasy_b_area VALUES('2187','高州市','388');
INSERT INTO cmseasy_b_area VALUES('2188','端州区','389');
INSERT INTO cmseasy_b_area VALUES('2189','广宁县','389');
INSERT INTO cmseasy_b_area VALUES('2190','封开县','389');
INSERT INTO cmseasy_b_area VALUES('2191','高要市','389');
INSERT INTO cmseasy_b_area VALUES('2192','四会市','389');
INSERT INTO cmseasy_b_area VALUES('2193','鼎湖区','389');
INSERT INTO cmseasy_b_area VALUES('2194','怀集县','389');
INSERT INTO cmseasy_b_area VALUES('2195','德庆县','389');
INSERT INTO cmseasy_b_area VALUES('2196','清城区','390');
INSERT INTO cmseasy_b_area VALUES('2197','阳山县','390');
INSERT INTO cmseasy_b_area VALUES('2198','连南瑶族自治县','390');
INSERT INTO cmseasy_b_area VALUES('2199','英德市','390');
INSERT INTO cmseasy_b_area VALUES('2200','连州市','390');
INSERT INTO cmseasy_b_area VALUES('2201','佛冈县','390');
INSERT INTO cmseasy_b_area VALUES('2202','连山壮族瑶族自治县','390');
INSERT INTO cmseasy_b_area VALUES('2203','清新县','390');
INSERT INTO cmseasy_b_area VALUES('2204','湘桥区','391');
INSERT INTO cmseasy_b_area VALUES('2205','饶平县','391');
INSERT INTO cmseasy_b_area VALUES('2206','潮安县','391');
INSERT INTO cmseasy_b_area VALUES('2207','榕城区','392');
INSERT INTO cmseasy_b_area VALUES('2208','揭西县','392');
INSERT INTO cmseasy_b_area VALUES('2209','普宁市','392');
INSERT INTO cmseasy_b_area VALUES('2210','揭东县','392');
INSERT INTO cmseasy_b_area VALUES('2211','惠来县','392');
INSERT INTO cmseasy_b_area VALUES('2212','云城区','393');
INSERT INTO cmseasy_b_area VALUES('2213','郁南县','393');
INSERT INTO cmseasy_b_area VALUES('2214','罗定市','393');
INSERT INTO cmseasy_b_area VALUES('2215','新兴县','393');
INSERT INTO cmseasy_b_area VALUES('2216','云安县','393');
INSERT INTO cmseasy_b_area VALUES('2217','秀英区','394');
INSERT INTO cmseasy_b_area VALUES('2218','琼山区','394');
INSERT INTO cmseasy_b_area VALUES('2219','美兰区','394');
INSERT INTO cmseasy_b_area VALUES('2220','龙华区','394');
INSERT INTO cmseasy_b_area VALUES('2221','五指山市','396');
INSERT INTO cmseasy_b_area VALUES('2222','儋州市','396');
INSERT INTO cmseasy_b_area VALUES('2223','万宁市','396');
INSERT INTO cmseasy_b_area VALUES('2224','定安县','396');
INSERT INTO cmseasy_b_area VALUES('2225','澄迈县','396');
INSERT INTO cmseasy_b_area VALUES('2226','白沙黎族自治县','396');
INSERT INTO cmseasy_b_area VALUES('2227','乐东黎族自治县','396');
INSERT INTO cmseasy_b_area VALUES('2228','保亭黎族苗族自\r\n治县','396');
INSERT INTO cmseasy_b_area VALUES('2229','西沙群岛','396');
INSERT INTO cmseasy_b_area VALUES('2230','中沙群岛的岛礁及其海域','396');
INSERT INTO cmseasy_b_area VALUES('2231','琼海市','396');
INSERT INTO cmseasy_b_area VALUES('2232','文昌市','396');
INSERT INTO cmseasy_b_area VALUES('2233','东方市','396');
INSERT INTO cmseasy_b_area VALUES('2234','屯昌县','396');
INSERT INTO cmseasy_b_area VALUES('2235','临高县','396');
INSERT INTO cmseasy_b_area VALUES('2236','昌江黎族自治县','396');
INSERT INTO cmseasy_b_area VALUES('2237','陵水黎族自治县','396');
INSERT INTO cmseasy_b_area VALUES('2238','琼中黎族苗族自治县','396');
INSERT INTO cmseasy_b_area VALUES('2239','南沙群岛','396');
INSERT INTO cmseasy_b_area VALUES('2240','南明区','397');
INSERT INTO cmseasy_b_area VALUES('2241','花溪区','397');
INSERT INTO cmseasy_b_area VALUES('2242','白云区','397');
INSERT INTO cmseasy_b_area VALUES('2243','开阳县','397');
INSERT INTO cmseasy_b_area VALUES('2244','修文县','397');
INSERT INTO cmseasy_b_area VALUES('2245','清镇市','397');
INSERT INTO cmseasy_b_area VALUES('2246','云岩区','397');
INSERT INTO cmseasy_b_area VALUES('2247','乌当区','397');
INSERT INTO cmseasy_b_area VALUES('2248','小河区','397');
INSERT INTO cmseasy_b_area VALUES('2249','息烽县','397');
INSERT INTO cmseasy_b_area VALUES('2250','钟山区','398');
INSERT INTO cmseasy_b_area VALUES('2251','水城县','398');
INSERT INTO cmseasy_b_area VALUES('2252','盘县','398');
INSERT INTO cmseasy_b_area VALUES('2253','六枝特区','398');
INSERT INTO cmseasy_b_area VALUES('2254','红花岗区','399');
INSERT INTO cmseasy_b_area VALUES('2255','遵义县','399');
INSERT INTO cmseasy_b_area VALUES('2256','绥阳县','399');
INSERT INTO cmseasy_b_area VALUES('2257','道真仡佬族苗族自治县','399');
INSERT INTO cmseasy_b_area VALUES('2258','凤冈县','399');
INSERT INTO cmseasy_b_area VALUES('2259','余庆县','399');
INSERT INTO cmseasy_b_area VALUES('2260','赤水市','399');
INSERT INTO cmseasy_b_area VALUES('2261','仁怀市','399');
INSERT INTO cmseasy_b_area VALUES('2262','汇川区','399');
INSERT INTO cmseasy_b_area VALUES('2263','桐梓县','399');
INSERT INTO cmseasy_b_area VALUES('2264','正安县','399');
INSERT INTO cmseasy_b_area VALUES('2265','务川仡佬族苗族自治县','399');
INSERT INTO cmseasy_b_area VALUES('2266','湄潭县','399');
INSERT INTO cmseasy_b_area VALUES('2267','习水县','399');
INSERT INTO cmseasy_b_area VALUES('2268','西秀区','400');
INSERT INTO cmseasy_b_area VALUES('2269','普定县','400');
INSERT INTO cmseasy_b_area VALUES('2270','关岭布依族苗族自治县','400');
INSERT INTO cmseasy_b_area VALUES('2271','紫云苗族布依族自治县','400');
INSERT INTO cmseasy_b_area VALUES('2272','平坝县','400');
INSERT INTO cmseasy_b_area VALUES('2273','镇宁布依族苗族自治县','400');
INSERT INTO cmseasy_b_area VALUES('2274','铜仁市','401');
INSERT INTO cmseasy_b_area VALUES('2275','玉屏侗族自治县','401');
INSERT INTO cmseasy_b_area VALUES('2276','思南县','401');
INSERT INTO cmseasy_b_area VALUES('2277','德江县','401');
INSERT INTO cmseasy_b_area VALUES('2278','松桃苗族自治县','401');
INSERT INTO cmseasy_b_area VALUES('2279','万山特区','401');
INSERT INTO cmseasy_b_area VALUES('2280','江口县','401');
INSERT INTO cmseasy_b_area VALUES('2281','石阡县','401');
INSERT INTO cmseasy_b_area VALUES('2282','印江土家族苗族自治县','401');
INSERT INTO cmseasy_b_area VALUES('2283','沿河土家族自治县','401');
INSERT INTO cmseasy_b_area VALUES('2284','毕节市','402');
INSERT INTO cmseasy_b_area VALUES('2285','黔西县','402');
INSERT INTO cmseasy_b_area VALUES('2286','织金县','402');
INSERT INTO cmseasy_b_area VALUES('2287','威宁彝族回族苗族自治县','402');
INSERT INTO cmseasy_b_area VALUES('2288','赫章县','402');
INSERT INTO cmseasy_b_area VALUES('2289','大方县','402');
INSERT INTO cmseasy_b_area VALUES('2290','金沙县','402');
INSERT INTO cmseasy_b_area VALUES('2291','纳雍县','402');
INSERT INTO cmseasy_b_area VALUES('2292','安龙县','403');
INSERT INTO cmseasy_b_area VALUES('2293','兴义市','403');
INSERT INTO cmseasy_b_area VALUES('2294','普安县','403');
INSERT INTO cmseasy_b_area VALUES('2295','贞丰县','403');
INSERT INTO cmseasy_b_area VALUES('2296','册亨县','403');
INSERT INTO cmseasy_b_area VALUES('2297','兴仁县','403');
INSERT INTO cmseasy_b_area VALUES('2298','晴隆县','403');
INSERT INTO cmseasy_b_area VALUES('2299','望谟县','403');
INSERT INTO cmseasy_b_area VALUES('2300','凯里市','404');
INSERT INTO cmseasy_b_area VALUES('2301','施秉县','404');
INSERT INTO cmseasy_b_area VALUES('2302','镇远县','404');
INSERT INTO cmseasy_b_area VALUES('2303','天柱县','404');
INSERT INTO cmseasy_b_area VALUES('2304','剑河县','404');
INSERT INTO cmseasy_b_area VALUES('2305','黎平县','404');
INSERT INTO cmseasy_b_area VALUES('2306','从江县','404');
INSERT INTO cmseasy_b_area VALUES('2307','麻江县','404');
INSERT INTO cmseasy_b_area VALUES('2308','丹寨县','404');
INSERT INTO cmseasy_b_area VALUES('2309','黄平县','404');
INSERT INTO cmseasy_b_area VALUES('2310','三穗县','404');
INSERT INTO cmseasy_b_area VALUES('2311','岑巩县','404');
INSERT INTO cmseasy_b_area VALUES('2312','锦屏县','404');
INSERT INTO cmseasy_b_area VALUES('2313','台江县','404');
INSERT INTO cmseasy_b_area VALUES('2314','榕江县','404');
INSERT INTO cmseasy_b_area VALUES('2315','雷山县','404');
INSERT INTO cmseasy_b_area VALUES('2316','都匀市','405');
INSERT INTO cmseasy_b_area VALUES('2317','荔波县','405');
INSERT INTO cmseasy_b_area VALUES('2318','瓮安县','405');
INSERT INTO cmseasy_b_area VALUES('2319','平塘县','405');
INSERT INTO cmseasy_b_area VALUES('2320','长顺县','405');
INSERT INTO cmseasy_b_area VALUES('2321','惠水县','405');
INSERT INTO cmseasy_b_area VALUES('2322','三都水族自治县','405');
INSERT INTO cmseasy_b_area VALUES('2323','福泉市','405');
INSERT INTO cmseasy_b_area VALUES('2324','贵定县','405');
INSERT INTO cmseasy_b_area VALUES('2325','独山县','405');
INSERT INTO cmseasy_b_area VALUES('2326','罗甸县','405');
INSERT INTO cmseasy_b_area VALUES('2327','龙里县','405');
INSERT INTO cmseasy_b_area VALUES('2328','五华区','406');
INSERT INTO cmseasy_b_area VALUES('2329','官渡区','406');
INSERT INTO cmseasy_b_area VALUES('2330','东川区','406');
INSERT INTO cmseasy_b_area VALUES('2331','晋宁县','406');
INSERT INTO cmseasy_b_area VALUES('2332','宜良县','406');
INSERT INTO cmseasy_b_area VALUES('2333','嵩明县','406');
INSERT INTO cmseasy_b_area VALUES('2334','寻甸回族彝族自治县','406');
INSERT INTO cmseasy_b_area VALUES('2335','盘龙区','406');
INSERT INTO cmseasy_b_area VALUES('2336','西山区','406');
INSERT INTO cmseasy_b_area VALUES('2337','呈贡县','406');
INSERT INTO cmseasy_b_area VALUES('2338','富民县','406');
INSERT INTO cmseasy_b_area VALUES('2339','石林彝族自治县','406');
INSERT INTO cmseasy_b_area VALUES('2340','禄劝彝族苗族自治县','406');
INSERT INTO cmseasy_b_area VALUES('2341','安宁市','406');
INSERT INTO cmseasy_b_area VALUES('2342','麒麟区','407');
INSERT INTO cmseasy_b_area VALUES('2343','陆良县','407');
INSERT INTO cmseasy_b_area VALUES('2344','罗平县','407');
INSERT INTO cmseasy_b_area VALUES('2345','会泽县','407');
INSERT INTO cmseasy_b_area VALUES('2346','马龙县','407');
INSERT INTO cmseasy_b_area VALUES('2347','师宗县','407');
INSERT INTO cmseasy_b_area VALUES('2348','富源县','407');
INSERT INTO cmseasy_b_area VALUES('2349','沾益县','407');
INSERT INTO cmseasy_b_area VALUES('2350','宣威市','407');
INSERT INTO cmseasy_b_area VALUES('2351','红塔区','408');
INSERT INTO cmseasy_b_area VALUES('2352','澄江县','408');
INSERT INTO cmseasy_b_area VALUES('2353','华宁县','408');
INSERT INTO cmseasy_b_area VALUES('2354','峨山彝族自治县','408');
INSERT INTO cmseasy_b_area VALUES('2355','元江哈尼族彝族傣族自治县','408');
INSERT INTO cmseasy_b_area VALUES('2356','江川县','408');
INSERT INTO cmseasy_b_area VALUES('2357','通海县','408');
INSERT INTO cmseasy_b_area VALUES('2358','易门县','408');
INSERT INTO cmseasy_b_area VALUES('2359','新平彝族傣族自治县','408');
INSERT INTO cmseasy_b_area VALUES('2360','隆阳区','409');
INSERT INTO cmseasy_b_area VALUES('2361','腾冲县','409');
INSERT INTO cmseasy_b_area VALUES('2362','昌宁县','409');
INSERT INTO cmseasy_b_area VALUES('2363','施甸县','409');
INSERT INTO cmseasy_b_area VALUES('2364','龙陵县','409');
INSERT INTO cmseasy_b_area VALUES('2365','昭阳区','410');
INSERT INTO cmseasy_b_area VALUES('2366','巧家县','410');
INSERT INTO cmseasy_b_area VALUES('2367','大关县','410');
INSERT INTO cmseasy_b_area VALUES('2368','绥江县','410');
INSERT INTO cmseasy_b_area VALUES('2369','彝良县','410');
INSERT INTO cmseasy_b_area VALUES('2370','水富县','410');
INSERT INTO cmseasy_b_area VALUES('2371','鲁甸县','410');
INSERT INTO cmseasy_b_area VALUES('2372','盐津县','410');
INSERT INTO cmseasy_b_area VALUES('2373','永善县','410');
INSERT INTO cmseasy_b_area VALUES('2374','镇雄县','410');
INSERT INTO cmseasy_b_area VALUES('2375','威信县','410');
INSERT INTO cmseasy_b_area VALUES('2376','翠云区','411');
INSERT INTO cmseasy_b_area VALUES('2377','墨江哈尼族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2378','景谷傣族彝族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2379','江城哈尼族彝族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2380','澜沧拉祜族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2381','西盟佤族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2382','普洱哈尼族彝族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2383','景东彝族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2384','镇沅彝族哈尼族拉祜族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2385','孟连傣族拉祜族佤族自治县','411');
INSERT INTO cmseasy_b_area VALUES('2386','临翔区','412');
INSERT INTO cmseasy_b_area VALUES('2387','云县','412');
INSERT INTO cmseasy_b_area VALUES('2388','镇康县','412');
INSERT INTO cmseasy_b_area VALUES('2389','耿马傣族佤族自治县','412');
INSERT INTO cmseasy_b_area VALUES('2390','沧源佤族自治县','412');
INSERT INTO cmseasy_b_area VALUES('2391','凤庆县','412');
INSERT INTO cmseasy_b_area VALUES('2392','永德县','412');
INSERT INTO cmseasy_b_area VALUES('2393','双江拉祜族佤族布朗族傣族自治县','412');
INSERT INTO cmseasy_b_area VALUES('2394','宁蒗彝族自治县','413');
INSERT INTO cmseasy_b_area VALUES('2395','古城区','413');
INSERT INTO cmseasy_b_area VALUES('2396','永胜县','413');
INSERT INTO cmseasy_b_area VALUES('2397','玉龙纳西族自治县','413');
INSERT INTO cmseasy_b_area VALUES('2398','华坪县','413');
INSERT INTO cmseasy_b_area VALUES('2399','富宁县','414');
INSERT INTO cmseasy_b_area VALUES('2400','文山县','414');
INSERT INTO cmseasy_b_area VALUES('2401','西畴县','414');
INSERT INTO cmseasy_b_area VALUES('2402','马关县','414');
INSERT INTO cmseasy_b_area VALUES('2403','广南县','414');
INSERT INTO cmseasy_b_area VALUES('2404','砚山县','414');
INSERT INTO cmseasy_b_area VALUES('2405','麻栗坡县','414');
INSERT INTO cmseasy_b_area VALUES('2406','丘北县','414');
INSERT INTO cmseasy_b_area VALUES('2407','个旧市','415');
INSERT INTO cmseasy_b_area VALUES('2408','蒙自县','415');
INSERT INTO cmseasy_b_area VALUES('2409','建水县','415');
INSERT INTO cmseasy_b_area VALUES('2410','弥勒县','415');
INSERT INTO cmseasy_b_area VALUES('2411','元阳县','415');
INSERT INTO cmseasy_b_area VALUES('2412','金平苗族瑶族傣族自治县','415');
INSERT INTO cmseasy_b_area VALUES('2413','河口瑶族自治县','415');
INSERT INTO cmseasy_b_area VALUES('2414','开远市','415');
INSERT INTO cmseasy_b_area VALUES('2415','屏边苗族自治县','415');
INSERT INTO cmseasy_b_area VALUES('2416','石屏县','415');
INSERT INTO cmseasy_b_area VALUES('2417','泸西县','415');
INSERT INTO cmseasy_b_area VALUES('2418','红河县','415');
INSERT INTO cmseasy_b_area VALUES('2419','绿春县','415');
INSERT INTO cmseasy_b_area VALUES('2420','景洪市','416');
INSERT INTO cmseasy_b_area VALUES('2421','勐腊县','416');
INSERT INTO cmseasy_b_area VALUES('2422','勐海县','416');
INSERT INTO cmseasy_b_area VALUES('2423','楚雄市','417');
INSERT INTO cmseasy_b_area VALUES('2424','牟定县','417');
INSERT INTO cmseasy_b_area VALUES('2425','姚安县','417');
INSERT INTO cmseasy_b_area VALUES('2426','永仁县','417');
INSERT INTO cmseasy_b_area VALUES('2427','武定县','417');
INSERT INTO cmseasy_b_area VALUES('2428','禄丰县','417');
INSERT INTO cmseasy_b_area VALUES('2429','双柏县','417');
INSERT INTO cmseasy_b_area VALUES('2430','南华县','417');
INSERT INTO cmseasy_b_area VALUES('2431','大姚县','417');
INSERT INTO cmseasy_b_area VALUES('2432','元谋县','417');
INSERT INTO cmseasy_b_area VALUES('2433','大理市','418');
INSERT INTO cmseasy_b_area VALUES('2434','祥云县','418');
INSERT INTO cmseasy_b_area VALUES('2435','弥渡县','418');
INSERT INTO cmseasy_b_area VALUES('2436','巍山彝族回族自治县','418');
INSERT INTO cmseasy_b_area VALUES('2437','云龙县','418');
INSERT INTO cmseasy_b_area VALUES('2438','剑川县','418');
INSERT INTO cmseasy_b_area VALUES('2439','鹤庆县','418');
INSERT INTO cmseasy_b_area VALUES('2440','漾濞彝族自治县','418');
INSERT INTO cmseasy_b_area VALUES('2441','宾川县','418');
INSERT INTO cmseasy_b_area VALUES('2442','南涧彝族自治县','418');
INSERT INTO cmseasy_b_area VALUES('2443','永平县','418');
INSERT INTO cmseasy_b_area VALUES('2444','洱源县','418');
INSERT INTO cmseasy_b_area VALUES('2445','瑞丽市','419');
INSERT INTO cmseasy_b_area VALUES('2446','梁河县','419');
INSERT INTO cmseasy_b_area VALUES('2447','陇川县','419');
INSERT INTO cmseasy_b_area VALUES('2448','潞西市','419');
INSERT INTO cmseasy_b_area VALUES('2449','盈江县','419');
INSERT INTO cmseasy_b_area VALUES('2450','泸水县','420');
INSERT INTO cmseasy_b_area VALUES('2451','贡山独龙族怒族自治县','420');
INSERT INTO cmseasy_b_area VALUES('2452','维西傈僳族自治县','420');
INSERT INTO cmseasy_b_area VALUES('2453','福贡县','420');
INSERT INTO cmseasy_b_area VALUES('2454','兰坪白族普米族自治县','420');
INSERT INTO cmseasy_b_area VALUES('2455','香格里拉县','421');
INSERT INTO cmseasy_b_area VALUES('2456','德钦县','421');
INSERT INTO cmseasy_b_area VALUES('2457','锦江区','422');
INSERT INTO cmseasy_b_area VALUES('2458','金牛区','422');
INSERT INTO cmseasy_b_area VALUES('2459','成华区','422');
INSERT INTO cmseasy_b_area VALUES('2460','青白江区','422');
INSERT INTO cmseasy_b_area VALUES('2461','金堂县','422');
INSERT INTO cmseasy_b_area VALUES('2462','温江县','422');
INSERT INTO cmseasy_b_area VALUES('2463','大邑县','422');
INSERT INTO cmseasy_b_area VALUES('2464','新津县','422');
INSERT INTO cmseasy_b_area VALUES('2465','彭州市','422');
INSERT INTO cmseasy_b_area VALUES('2466','崇州市','422');
INSERT INTO cmseasy_b_area VALUES('2467','青羊区','422');
INSERT INTO cmseasy_b_area VALUES('2468','武侯区','422');
INSERT INTO cmseasy_b_area VALUES('2469','龙泉驿区','422');
INSERT INTO cmseasy_b_area VALUES('2470','新都区','422');
INSERT INTO cmseasy_b_area VALUES('2471','双流县','422');
INSERT INTO cmseasy_b_area VALUES('2472','郫县','422');
INSERT INTO cmseasy_b_area VALUES('2473','蒲江县','422');
INSERT INTO cmseasy_b_area VALUES('2474','都江堰市','422');
INSERT INTO cmseasy_b_area VALUES('2475','邛崃市','422');
INSERT INTO cmseasy_b_area VALUES('2476','自流井区','423');
INSERT INTO cmseasy_b_area VALUES('2477','大安区','423');
INSERT INTO cmseasy_b_area VALUES('2478','荣县','423');
INSERT INTO cmseasy_b_area VALUES('2479','富顺县','423');
INSERT INTO cmseasy_b_area VALUES('2480','贡井区','423');
INSERT INTO cmseasy_b_area VALUES('2481','沿滩区','423');
INSERT INTO cmseasy_b_area VALUES('2482','东区','424');
INSERT INTO cmseasy_b_area VALUES('2483','仁和区','424');
INSERT INTO cmseasy_b_area VALUES('2484','盐边县','424');
INSERT INTO cmseasy_b_area VALUES('2485','西区','424');
INSERT INTO cmseasy_b_area VALUES('2486','米易县','424');
INSERT INTO cmseasy_b_area VALUES('2487','江阳区','425');
INSERT INTO cmseasy_b_area VALUES('2488','龙马潭区','425');
INSERT INTO cmseasy_b_area VALUES('2489','合江县','425');
INSERT INTO cmseasy_b_area VALUES('2490','古蔺县','425');
INSERT INTO cmseasy_b_area VALUES('2491','纳溪区','425');
INSERT INTO cmseasy_b_area VALUES('2492','泸县','425');
INSERT INTO cmseasy_b_area VALUES('2493','叙永县','425');
INSERT INTO cmseasy_b_area VALUES('2494','旌阳区','426');
INSERT INTO cmseasy_b_area VALUES('2495','罗江县','426');
INSERT INTO cmseasy_b_area VALUES('2496','什邡市','426');
INSERT INTO cmseasy_b_area VALUES('2497','绵竹市','426');
INSERT INTO cmseasy_b_area VALUES('2498','中江县','426');
INSERT INTO cmseasy_b_area VALUES('2499','广汉市','426');
INSERT INTO cmseasy_b_area VALUES('2500','涪城区','427');
INSERT INTO cmseasy_b_area VALUES('2501','三台县','427');
INSERT INTO cmseasy_b_area VALUES('2502','江油市','427');
INSERT INTO cmseasy_b_area VALUES('2503','游仙区','427');
INSERT INTO cmseasy_b_area VALUES('2504','盐亭县','427');
INSERT INTO cmseasy_b_area VALUES('2505','安县','427');
INSERT INTO cmseasy_b_area VALUES('2506','平武县','427');
INSERT INTO cmseasy_b_area VALUES('2507','梓潼县','427');
INSERT INTO cmseasy_b_area VALUES('2508','市中区','428');
INSERT INTO cmseasy_b_area VALUES('2509','朝天区','428');
INSERT INTO cmseasy_b_area VALUES('2510','青川县','428');
INSERT INTO cmseasy_b_area VALUES('2511','苍溪县','428');
INSERT INTO cmseasy_b_area VALUES('2512','元坝区','428');
INSERT INTO cmseasy_b_area VALUES('2513','旺苍县','428');
INSERT INTO cmseasy_b_area VALUES('2514','剑阁县','428');
INSERT INTO cmseasy_b_area VALUES('2515','船山区','429');
INSERT INTO cmseasy_b_area VALUES('2516','蓬溪县','429');
INSERT INTO cmseasy_b_area VALUES('2517','大英县','429');
INSERT INTO cmseasy_b_area VALUES('2518','安居区','429');
INSERT INTO cmseasy_b_area VALUES('2519','射洪县','429');
INSERT INTO cmseasy_b_area VALUES('2520','市中区','430');
INSERT INTO cmseasy_b_area VALUES('2521','威远县','430');
INSERT INTO cmseasy_b_area VALUES('2522','隆昌县','430');
INSERT INTO cmseasy_b_area VALUES('2523','东兴区','430');
INSERT INTO cmseasy_b_area VALUES('2524','资中县','430');
INSERT INTO cmseasy_b_area VALUES('2525','市中区','431');
INSERT INTO cmseasy_b_area VALUES('2526','五通桥区','431');
INSERT INTO cmseasy_b_area VALUES('2527','犍为县','431');
INSERT INTO cmseasy_b_area VALUES('2528','夹江县','431');
INSERT INTO cmseasy_b_area VALUES('2529','峨边彝族自治县','431');
INSERT INTO cmseasy_b_area VALUES('2530','峨眉山市','431');
INSERT INTO cmseasy_b_area VALUES('2531','沙湾区','431');
INSERT INTO cmseasy_b_area VALUES('2532','金口河区','431');
INSERT INTO cmseasy_b_area VALUES('2533','井研县','431');
INSERT INTO cmseasy_b_area VALUES('2534','沐川县','431');
INSERT INTO cmseasy_b_area VALUES('2535','马边彝族自治县','431');
INSERT INTO cmseasy_b_area VALUES('2536','顺庆区','432');
INSERT INTO cmseasy_b_area VALUES('2537','嘉陵区','432');
INSERT INTO cmseasy_b_area VALUES('2538','营山县','432');
INSERT INTO cmseasy_b_area VALUES('2539','仪陇县','432');
INSERT INTO cmseasy_b_area VALUES('2540','阆中市','432');
INSERT INTO cmseasy_b_area VALUES('2541','高坪区','432');
INSERT INTO cmseasy_b_area VALUES('2542','南部县','432');
INSERT INTO cmseasy_b_area VALUES('2543','蓬安县','432');
INSERT INTO cmseasy_b_area VALUES('2544','西充县','432');
INSERT INTO cmseasy_b_area VALUES('2545','屏山县','433');
INSERT INTO cmseasy_b_area VALUES('2546','翠屏区','433');
INSERT INTO cmseasy_b_area VALUES('2547','南溪县','433');
INSERT INTO cmseasy_b_area VALUES('2548','长宁县','433');
INSERT INTO cmseasy_b_area VALUES('2549','珙县','433');
INSERT INTO cmseasy_b_area VALUES('2550','兴文县','433');
INSERT INTO cmseasy_b_area VALUES('2551','宜宾县','433');
INSERT INTO cmseasy_b_area VALUES('2552','江安县','433');
INSERT INTO cmseasy_b_area VALUES('2553','高县','433');
INSERT INTO cmseasy_b_area VALUES('2554','筠连县','433');
INSERT INTO cmseasy_b_area VALUES('2555','广安区','434');
INSERT INTO cmseasy_b_area VALUES('2556','武胜县','434');
INSERT INTO cmseasy_b_area VALUES('2557','华莹市','434');
INSERT INTO cmseasy_b_area VALUES('2558','岳池县','434');
INSERT INTO cmseasy_b_area VALUES('2559','邻水县','434');
INSERT INTO cmseasy_b_area VALUES('2560','通川区','435');
INSERT INTO cmseasy_b_area VALUES('2561','宣汉县','435');
INSERT INTO cmseasy_b_area VALUES('2562','大竹县','435');
INSERT INTO cmseasy_b_area VALUES('2563','万源市','435');
INSERT INTO cmseasy_b_area VALUES('2564','达县','435');
INSERT INTO cmseasy_b_area VALUES('2565','开江县','435');
INSERT INTO cmseasy_b_area VALUES('2566','渠县','435');
INSERT INTO cmseasy_b_area VALUES('2567','东坡区','436');
INSERT INTO cmseasy_b_area VALUES('2568','彭山县','436');
INSERT INTO cmseasy_b_area VALUES('2569','丹棱县','436');
INSERT INTO cmseasy_b_area VALUES('2570','青神县','436');
INSERT INTO cmseasy_b_area VALUES('2571','仁寿县','436');
INSERT INTO cmseasy_b_area VALUES('2572','洪雅县','436');
INSERT INTO cmseasy_b_area VALUES('2573','雨城区','437');
INSERT INTO cmseasy_b_area VALUES('2574','荥经县','437');
INSERT INTO cmseasy_b_area VALUES('2575','石棉县','437');
INSERT INTO cmseasy_b_area VALUES('2576','芦山县','437');
INSERT INTO cmseasy_b_area VALUES('2577','宝兴县','437');
INSERT INTO cmseasy_b_area VALUES('2578','名山县','437');
INSERT INTO cmseasy_b_area VALUES('2579','汉源县','437');
INSERT INTO cmseasy_b_area VALUES('2580','天全县','437');
INSERT INTO cmseasy_b_area VALUES('2581','巴州区','438');
INSERT INTO cmseasy_b_area VALUES('2582','南江县','438');
INSERT INTO cmseasy_b_area VALUES('2583','平昌县','438');
INSERT INTO cmseasy_b_area VALUES('2584','通江县','438');
INSERT INTO cmseasy_b_area VALUES('2585','雁江区','439');
INSERT INTO cmseasy_b_area VALUES('2586','乐至县','439');
INSERT INTO cmseasy_b_area VALUES('2587','简阳市','439');
INSERT INTO cmseasy_b_area VALUES('2588','安岳县','439');
INSERT INTO cmseasy_b_area VALUES('2589','汶川县','440');
INSERT INTO cmseasy_b_area VALUES('2590','茂县','440');
INSERT INTO cmseasy_b_area VALUES('2591','九寨沟县','440');
INSERT INTO cmseasy_b_area VALUES('2592','小金县','440');
INSERT INTO cmseasy_b_area VALUES('2593','马尔康县','440');
INSERT INTO cmseasy_b_area VALUES('2594','阿坝县','440');
INSERT INTO cmseasy_b_area VALUES('2595','红原县','440');
INSERT INTO cmseasy_b_area VALUES('2596','理县','440');
INSERT INTO cmseasy_b_area VALUES('2597','松潘县','440');
INSERT INTO cmseasy_b_area VALUES('2598','金川县','440');
INSERT INTO cmseasy_b_area VALUES('2599','黑水县','440');
INSERT INTO cmseasy_b_area VALUES('2600','壤塘县','440');
INSERT INTO cmseasy_b_area VALUES('2601','若尔盖县','440');
INSERT INTO cmseasy_b_area VALUES('2602','康定县','441');
INSERT INTO cmseasy_b_area VALUES('2603','丹巴县','441');
INSERT INTO cmseasy_b_area VALUES('2604','雅江县','441');
INSERT INTO cmseasy_b_area VALUES('2605','炉霍县','441');
INSERT INTO cmseasy_b_area VALUES('2606','新龙县','441');
INSERT INTO cmseasy_b_area VALUES('2607','白玉县','441');
INSERT INTO cmseasy_b_area VALUES('2608','色达县','441');
INSERT INTO cmseasy_b_area VALUES('2609','巴塘县','441');
INSERT INTO cmseasy_b_area VALUES('2610','得荣县','441');
INSERT INTO cmseasy_b_area VALUES('2611','稻城县','441');
INSERT INTO cmseasy_b_area VALUES('2612','泸定县','441');
INSERT INTO cmseasy_b_area VALUES('2613','九龙县','441');
INSERT INTO cmseasy_b_area VALUES('2614','道孚县','441');
INSERT INTO cmseasy_b_area VALUES('2615','甘孜县','441');
INSERT INTO cmseasy_b_area VALUES('2616','德格县','441');
INSERT INTO cmseasy_b_area VALUES('2617','石渠县','441');
INSERT INTO cmseasy_b_area VALUES('2618','理塘县','441');
INSERT INTO cmseasy_b_area VALUES('2619','乡城县','441');
INSERT INTO cmseasy_b_area VALUES('2620','西昌市','442');
INSERT INTO cmseasy_b_area VALUES('2621','盐源县','442');
INSERT INTO cmseasy_b_area VALUES('2622','会理县','442');
INSERT INTO cmseasy_b_area VALUES('2623','宁南县','442');
INSERT INTO cmseasy_b_area VALUES('2624','布拖县','442');
INSERT INTO cmseasy_b_area VALUES('2625','昭觉县','442');
INSERT INTO cmseasy_b_area VALUES('2626','冕宁县','442');
INSERT INTO cmseasy_b_area VALUES('2627','甘洛县','442');
INSERT INTO cmseasy_b_area VALUES('2628','雷波县','442');
INSERT INTO cmseasy_b_area VALUES('2629','木里藏族自治县','442');
INSERT INTO cmseasy_b_area VALUES('2630','德昌县','442');
INSERT INTO cmseasy_b_area VALUES('2631','会东县','442');
INSERT INTO cmseasy_b_area VALUES('2632','普格县','442');
INSERT INTO cmseasy_b_area VALUES('2633','金阳县','442');
INSERT INTO cmseasy_b_area VALUES('2634','喜德县','442');
INSERT INTO cmseasy_b_area VALUES('2635','越西县','442');
INSERT INTO cmseasy_b_area VALUES('2636','美姑县','442');
INSERT INTO cmseasy_b_area VALUES('2637','江岸区','457');
INSERT INTO cmseasy_b_area VALUES('2638','乔口区','457');
INSERT INTO cmseasy_b_area VALUES('2639','武昌区','457');
INSERT INTO cmseasy_b_area VALUES('2640','洪山区','457');
INSERT INTO cmseasy_b_area VALUES('2641','汉南区','457');
INSERT INTO cmseasy_b_area VALUES('2642','江夏区','457');
INSERT INTO cmseasy_b_area VALUES('2643','新洲区','457');
INSERT INTO cmseasy_b_area VALUES('2644','江汉区','457');
INSERT INTO cmseasy_b_area VALUES('2645','汉阳区','457');
INSERT INTO cmseasy_b_area VALUES('2646','青山区','457');
INSERT INTO cmseasy_b_area VALUES('2647','东西湖区','457');
INSERT INTO cmseasy_b_area VALUES('2648','蔡甸区','457');
INSERT INTO cmseasy_b_area VALUES('2649','黄陂区','457');
INSERT INTO cmseasy_b_area VALUES('2650','黄石港区','458');
INSERT INTO cmseasy_b_area VALUES('2651','铁山区','458');
INSERT INTO cmseasy_b_area VALUES('2652','大冶市','458');
INSERT INTO cmseasy_b_area VALUES('2653','下陆区','458');
INSERT INTO cmseasy_b_area VALUES('2654','阳新县','458');
INSERT INTO cmseasy_b_area VALUES('2655','襄城区','459');
INSERT INTO cmseasy_b_area VALUES('2656','襄阳区','459');
INSERT INTO cmseasy_b_area VALUES('2657','谷城县','459');
INSERT INTO cmseasy_b_area VALUES('2658','老河口市','459');
INSERT INTO cmseasy_b_area VALUES('2659','宜城市','459');
INSERT INTO cmseasy_b_area VALUES('2660','樊城区','459');
INSERT INTO cmseasy_b_area VALUES('2661','南漳县','459');
INSERT INTO cmseasy_b_area VALUES('2662','保康县','459');
INSERT INTO cmseasy_b_area VALUES('2663','枣阳市','459');
INSERT INTO cmseasy_b_area VALUES('2664','茅箭区','460');
INSERT INTO cmseasy_b_area VALUES('2665','郧县','460');
INSERT INTO cmseasy_b_area VALUES('2666','竹山县','460');
INSERT INTO cmseasy_b_area VALUES('2667','房县','460');
INSERT INTO cmseasy_b_area VALUES('2668','丹江口市','460');
INSERT INTO cmseasy_b_area VALUES('2669','张湾区','460');
INSERT INTO cmseasy_b_area VALUES('2670','郧西县','460');
INSERT INTO cmseasy_b_area VALUES('2671','竹溪县','460');
INSERT INTO cmseasy_b_area VALUES('2672','沙市区','461');
INSERT INTO cmseasy_b_area VALUES('2673','公安县','461');
INSERT INTO cmseasy_b_area VALUES('2674','江陵县','461');
INSERT INTO cmseasy_b_area VALUES('2675','洪湖市','461');
INSERT INTO cmseasy_b_area VALUES('2676','松滋市','461');
INSERT INTO cmseasy_b_area VALUES('2677','荆州区','461');
INSERT INTO cmseasy_b_area VALUES('2678','监利县','461');
INSERT INTO cmseasy_b_area VALUES('2679','石首市','461');
INSERT INTO cmseasy_b_area VALUES('2680','西陵区','462');
INSERT INTO cmseasy_b_area VALUES('2681','点军区','462');
INSERT INTO cmseasy_b_area VALUES('2682','夷陵区','462');
INSERT INTO cmseasy_b_area VALUES('2683','兴山县','462');
INSERT INTO cmseasy_b_area VALUES('2684','长阳土家族自治县','462');
INSERT INTO cmseasy_b_area VALUES('2685','宜都市','462');
INSERT INTO cmseasy_b_area VALUES('2686','枝江市','462');
INSERT INTO cmseasy_b_area VALUES('2687','伍家岗区','462');
INSERT INTO cmseasy_b_area VALUES('2688','虎亭区','462');
INSERT INTO cmseasy_b_area VALUES('2689','远安县','462');
INSERT INTO cmseasy_b_area VALUES('2690','秭归县','462');
INSERT INTO cmseasy_b_area VALUES('2691','五峰土家族自治县','462');
INSERT INTO cmseasy_b_area VALUES('2692','当阳市','462');
INSERT INTO cmseasy_b_area VALUES('2693','东宝区','463');
INSERT INTO cmseasy_b_area VALUES('2694','京山县','463');
INSERT INTO cmseasy_b_area VALUES('2695','钟祥市','463');
INSERT INTO cmseasy_b_area VALUES('2696','掇刀区','463');
INSERT INTO cmseasy_b_area VALUES('2697','沙洋县','463');
INSERT INTO cmseasy_b_area VALUES('2698','梁子湖区','464');
INSERT INTO cmseasy_b_area VALUES('2699','鄂城区','464');
INSERT INTO cmseasy_b_area VALUES('2700','华容区','464');
INSERT INTO cmseasy_b_area VALUES('2701','孝南区','465');
INSERT INTO cmseasy_b_area VALUES('2702','大悟县','465');
INSERT INTO cmseasy_b_area VALUES('2703','应城市','465');
INSERT INTO cmseasy_b_area VALUES('2704','汉川市','465');
INSERT INTO cmseasy_b_area VALUES('2705','孝昌县','465');
INSERT INTO cmseasy_b_area VALUES('2706','云梦县','465');
INSERT INTO cmseasy_b_area VALUES('2707','安陆市','465');
INSERT INTO cmseasy_b_area VALUES('2708','黄州区','466');
INSERT INTO cmseasy_b_area VALUES('2709','红安县','466');
INSERT INTO cmseasy_b_area VALUES('2710','英山县','466');
INSERT INTO cmseasy_b_area VALUES('2711','蕲春县','466');
INSERT INTO cmseasy_b_area VALUES('2712','麻城市','466');
INSERT INTO cmseasy_b_area VALUES('2713','武穴市','466');
INSERT INTO cmseasy_b_area VALUES('2714','团风县','466');
INSERT INTO cmseasy_b_area VALUES('2715','罗田县','466');
INSERT INTO cmseasy_b_area VALUES('2716','浠水县','466');
INSERT INTO cmseasy_b_area VALUES('2717','黄梅县','466');
INSERT INTO cmseasy_b_area VALUES('2718','咸安区','467');
INSERT INTO cmseasy_b_area VALUES('2719','通城县','467');
INSERT INTO cmseasy_b_area VALUES('2720','通山县','467');
INSERT INTO cmseasy_b_area VALUES('2721','赤壁市','467');
INSERT INTO cmseasy_b_area VALUES('2722','嘉鱼县','467');
INSERT INTO cmseasy_b_area VALUES('2723','崇阳县','467');
INSERT INTO cmseasy_b_area VALUES('2724','曾都区','468');
INSERT INTO cmseasy_b_area VALUES('2725','广水市','468');
INSERT INTO cmseasy_b_area VALUES('2726','恩施市','469');
INSERT INTO cmseasy_b_area VALUES('2727','建始县','469');
INSERT INTO cmseasy_b_area VALUES('2728','鹤峰县','469');
INSERT INTO cmseasy_b_area VALUES('2729','利川市','469');
INSERT INTO cmseasy_b_area VALUES('2730','巴东县','469');
INSERT INTO cmseasy_b_area VALUES('2731','宣恩县','469');
INSERT INTO cmseasy_b_area VALUES('2732','来凤县','469');
INSERT INTO cmseasy_b_area VALUES('2733','咸丰县','469');
INSERT INTO cmseasy_b_area VALUES('2734','仙桃市','470');
INSERT INTO cmseasy_b_area VALUES('2735','天门市','470');
INSERT INTO cmseasy_b_area VALUES('2736','潜江市','470');
INSERT INTO cmseasy_b_area VALUES('2737','神农架林区','470');
INSERT INTO cmseasy_b_area VALUES('2738','新城区','471');
INSERT INTO cmseasy_b_area VALUES('2739','莲湖区','471');
INSERT INTO cmseasy_b_area VALUES('2740','未央区','471');
INSERT INTO cmseasy_b_area VALUES('2741','阎良区','471');
INSERT INTO cmseasy_b_area VALUES('2742','长安区','471');
INSERT INTO cmseasy_b_area VALUES('2743','周至县','471');
INSERT INTO cmseasy_b_area VALUES('2744','高陵县','471');
INSERT INTO cmseasy_b_area VALUES('2745','碑林区','471');
INSERT INTO cmseasy_b_area VALUES('2746','灞桥区','471');
INSERT INTO cmseasy_b_area VALUES('2747','雁塔区','471');
INSERT INTO cmseasy_b_area VALUES('2748','临潼区','471');
INSERT INTO cmseasy_b_area VALUES('2749','蓝田县','471');
INSERT INTO cmseasy_b_area VALUES('2750','户县','471');
INSERT INTO cmseasy_b_area VALUES('2751','耀州区','472');
INSERT INTO cmseasy_b_area VALUES('2752','宜君县','472');
INSERT INTO cmseasy_b_area VALUES('2753','渭滨区','473');
INSERT INTO cmseasy_b_area VALUES('2754','陈仓区','473');
INSERT INTO cmseasy_b_area VALUES('2755','岐山县','473');
INSERT INTO cmseasy_b_area VALUES('2756','眉县','473');
INSERT INTO cmseasy_b_area VALUES('2757','千阳县','473');
INSERT INTO cmseasy_b_area VALUES('2758','凤县','473');
INSERT INTO cmseasy_b_area VALUES('2759','太白县','473');
INSERT INTO cmseasy_b_area VALUES('2760','金台区','473');
INSERT INTO cmseasy_b_area VALUES('2761','凤翔县','473');
INSERT INTO cmseasy_b_area VALUES('2762','扶风县','473');
INSERT INTO cmseasy_b_area VALUES('2763','陇县','473');
INSERT INTO cmseasy_b_area VALUES('2764','麟游县','473');
INSERT INTO cmseasy_b_area VALUES('2765','秦都区','474');
INSERT INTO cmseasy_b_area VALUES('2766','渭城区','474');
INSERT INTO cmseasy_b_area VALUES('2767','泾阳县','474');
INSERT INTO cmseasy_b_area VALUES('2768','礼泉县','474');
INSERT INTO cmseasy_b_area VALUES('2769','彬县','474');
INSERT INTO cmseasy_b_area VALUES('2770','旬邑县','474');
INSERT INTO cmseasy_b_area VALUES('2771','武功县','474');
INSERT INTO cmseasy_b_area VALUES('2772','兴平市','474');
INSERT INTO cmseasy_b_area VALUES('2773','杨陵区','474');
INSERT INTO cmseasy_b_area VALUES('2774','三原县','474');
INSERT INTO cmseasy_b_area VALUES('2775','乾县','474');
INSERT INTO cmseasy_b_area VALUES('2776','永寿\r\n\r\n县','474');
INSERT INTO cmseasy_b_area VALUES('2777','长武县','474');
INSERT INTO cmseasy_b_area VALUES('2778','淳化县','474');
INSERT INTO cmseasy_b_area VALUES('2779','临渭区','475');
INSERT INTO cmseasy_b_area VALUES('2780','潼关县','475');
INSERT INTO cmseasy_b_area VALUES('2781','合阳县','475');
INSERT INTO cmseasy_b_area VALUES('2782','华阴市','475');
INSERT INTO cmseasy_b_area VALUES('2783','华县','475');
INSERT INTO cmseasy_b_area VALUES('2784','大荔县','475');
INSERT INTO cmseasy_b_area VALUES('2785','澄城县','475');
INSERT INTO cmseasy_b_area VALUES('2786','蒲城县','475');
INSERT INTO cmseasy_b_area VALUES('2787','富平县','475');
INSERT INTO cmseasy_b_area VALUES('2788','白水县','475');
INSERT INTO cmseasy_b_area VALUES('2789','韩城市','475');
INSERT INTO cmseasy_b_area VALUES('2790','宝塔区','476');
INSERT INTO cmseasy_b_area VALUES('2791','延川县','476');
INSERT INTO cmseasy_b_area VALUES('2792','安塞县','476');
INSERT INTO cmseasy_b_area VALUES('2793','吴旗县','476');
INSERT INTO cmseasy_b_area VALUES('2794','富县','476');
INSERT INTO cmseasy_b_area VALUES('2795','宜川县','476');
INSERT INTO cmseasy_b_area VALUES('2796','黄陵县','476');
INSERT INTO cmseasy_b_area VALUES('2797','延长县','476');
INSERT INTO cmseasy_b_area VALUES('2798','子长县','476');
INSERT INTO cmseasy_b_area VALUES('2799','志丹县','476');
INSERT INTO cmseasy_b_area VALUES('2800','甘泉县','476');
INSERT INTO cmseasy_b_area VALUES('2801','洛川县','476');
INSERT INTO cmseasy_b_area VALUES('2802','黄龙县','476');
INSERT INTO cmseasy_b_area VALUES('2803','汉台区','477');
INSERT INTO cmseasy_b_area VALUES('2804','城固县','477');
INSERT INTO cmseasy_b_area VALUES('2805','西乡县','477');
INSERT INTO cmseasy_b_area VALUES('2806','宁强县','477');
INSERT INTO cmseasy_b_area VALUES('2807','镇巴县','477');
INSERT INTO cmseasy_b_area VALUES('2808','佛坪县','477');
INSERT INTO cmseasy_b_area VALUES('2809','南郑县','477');
INSERT INTO cmseasy_b_area VALUES('2810','洋县','477');
INSERT INTO cmseasy_b_area VALUES('2811','勉县','477');
INSERT INTO cmseasy_b_area VALUES('2812','略阳县','477');
INSERT INTO cmseasy_b_area VALUES('2813','留坝县','477');
INSERT INTO cmseasy_b_area VALUES('2814','榆阳区','478');
INSERT INTO cmseasy_b_area VALUES('2815','横山县','478');
INSERT INTO cmseasy_b_area VALUES('2816','定边县','478');
INSERT INTO cmseasy_b_area VALUES('2817','米脂县','478');
INSERT INTO cmseasy_b_area VALUES('2818','吴堡县子洲县','478');
INSERT INTO cmseasy_b_area VALUES('2819','府谷县','478');
INSERT INTO cmseasy_b_area VALUES('2820','靖边县','478');
INSERT INTO cmseasy_b_area VALUES('2821','绥德县','478');
INSERT INTO cmseasy_b_area VALUES('2822','佳县','478');
INSERT INTO cmseasy_b_area VALUES('2823','清涧县','478');
INSERT INTO cmseasy_b_area VALUES('2824','汉滨区','479');
INSERT INTO cmseasy_b_area VALUES('2825','石泉县','479');
INSERT INTO cmseasy_b_area VALUES('2826','紫阳县','479');
INSERT INTO cmseasy_b_area VALUES('2827','平利县','479');
INSERT INTO cmseasy_b_area VALUES('2828','旬阳县','479');
INSERT INTO cmseasy_b_area VALUES('2829','白河县','479');
INSERT INTO cmseasy_b_area VALUES('2830','汉阴县','479');
INSERT INTO cmseasy_b_area VALUES('2831','宁陕县','479');
INSERT INTO cmseasy_b_area VALUES('2832','岚皋县','479');
INSERT INTO cmseasy_b_area VALUES('2833','镇坪县','479');
INSERT INTO cmseasy_b_area VALUES('2834','商州区','480');
INSERT INTO cmseasy_b_area VALUES('2835','丹凤县','480');
INSERT INTO cmseasy_b_area VALUES('2836','山阳县','480');
INSERT INTO cmseasy_b_area VALUES('2837','柞水县','480');
INSERT INTO cmseasy_b_area VALUES('2838','神木县','480');
INSERT INTO cmseasy_b_area VALUES('2839','洛南县','480');
INSERT INTO cmseasy_b_area VALUES('2840','商南县','480');
INSERT INTO cmseasy_b_area VALUES('2841','镇安县','480');
INSERT INTO cmseasy_b_area VALUES('2842','城关区','481');
INSERT INTO cmseasy_b_area VALUES('2843','西固区','481');
INSERT INTO cmseasy_b_area VALUES('2844','红古区','481');
INSERT INTO cmseasy_b_area VALUES('2845','皋兰县','481');
INSERT INTO cmseasy_b_area VALUES('2846','榆中县','481');
INSERT INTO cmseasy_b_area VALUES('2847','七里河区','481');
INSERT INTO cmseasy_b_area VALUES('2848','安宁区','481');
INSERT INTO cmseasy_b_area VALUES('2849','永登县','481');
INSERT INTO cmseasy_b_area VALUES('2850','金川区','482');
INSERT INTO cmseasy_b_area VALUES('2851','永昌县','482');
INSERT INTO cmseasy_b_area VALUES('2852','白银区','483');
INSERT INTO cmseasy_b_area VALUES('2853','靖远县','483');
INSERT INTO cmseasy_b_area VALUES('2854','景泰县','483');
INSERT INTO cmseasy_b_area VALUES('2855','平川区','483');
INSERT INTO cmseasy_b_area VALUES('2856','会宁县','483');
INSERT INTO cmseasy_b_area VALUES('2857','秦州区','484');
INSERT INTO cmseasy_b_area VALUES('2858','清水县','484');
INSERT INTO cmseasy_b_area VALUES('2859','甘谷县','484');
INSERT INTO cmseasy_b_area VALUES('2860','麦积区','484');
INSERT INTO cmseasy_b_area VALUES('2861','秦安县','484');
INSERT INTO cmseasy_b_area VALUES('2862','武山县','484');
INSERT INTO cmseasy_b_area VALUES('2863','凉州区','486');
INSERT INTO cmseasy_b_area VALUES('2864','古浪县','486');
INSERT INTO cmseasy_b_area VALUES('2865','天祝藏族自治县','486');
INSERT INTO cmseasy_b_area VALUES('2866','民勤县','486');
INSERT INTO cmseasy_b_area VALUES('2867','甘州区','487');
INSERT INTO cmseasy_b_area VALUES('2868','民乐县','487');
INSERT INTO cmseasy_b_area VALUES('2869','高台县','487');
INSERT INTO cmseasy_b_area VALUES('2870','山丹县','487');
INSERT INTO cmseasy_b_area VALUES('2871','肃南裕固族自治县','487');
INSERT INTO cmseasy_b_area VALUES('2872','临泽县','487');
INSERT INTO cmseasy_b_area VALUES('2873','崆峒区','488');
INSERT INTO cmseasy_b_area VALUES('2874','灵台县','488');
INSERT INTO cmseasy_b_area VALUES('2875','华亭县','488');
INSERT INTO cmseasy_b_area VALUES('2876','静宁县','488');
INSERT INTO cmseasy_b_area VALUES('2877','泾川县','488');
INSERT INTO cmseasy_b_area VALUES('2878','崇信县','488');
INSERT INTO cmseasy_b_area VALUES('2879','庄浪县','488');
INSERT INTO cmseasy_b_area VALUES('2880','肃州区','489');
INSERT INTO cmseasy_b_area VALUES('2881','安西县','489');
INSERT INTO cmseasy_b_area VALUES('2882','阿克塞哈萨克族自治县','489');
INSERT INTO cmseasy_b_area VALUES('2883','敦煌市','489');
INSERT INTO cmseasy_b_area VALUES('2884','金塔县','489');
INSERT INTO cmseasy_b_area VALUES('2885','肃北蒙古族自治县','489');
INSERT INTO cmseasy_b_area VALUES('2886','玉门市','489');
INSERT INTO cmseasy_b_area VALUES('2887','西峰区','490');
INSERT INTO cmseasy_b_area VALUES('2888','环县','490');
INSERT INTO cmseasy_b_area VALUES('2889','合水县','490');
INSERT INTO cmseasy_b_area VALUES('2890','宁县','490');
INSERT INTO cmseasy_b_area VALUES('2891','镇原县','490');
INSERT INTO cmseasy_b_area VALUES('2892','庆阳县','490');
INSERT INTO cmseasy_b_area VALUES('2893','华池县','490');
INSERT INTO cmseasy_b_area VALUES('2894','正宁县','490');
INSERT INTO cmseasy_b_area VALUES('2895','安定区','491');
INSERT INTO cmseasy_b_area VALUES('2896','陇西县','491');
INSERT INTO cmseasy_b_area VALUES('2897','临洮县','491');
INSERT INTO cmseasy_b_area VALUES('2898','岷县','491');
INSERT INTO cmseasy_b_area VALUES('2899','通渭县','491');
INSERT INTO cmseasy_b_area VALUES('2900','渭源县','491');
INSERT INTO cmseasy_b_area VALUES('2901','漳县','491');
INSERT INTO cmseasy_b_area VALUES('2902','武都区','492');
INSERT INTO cmseasy_b_area VALUES('2903','文县','492');
INSERT INTO cmseasy_b_area VALUES('2904','康县','492');
INSERT INTO cmseasy_b_area VALUES('2905','礼县','492');
INSERT INTO cmseasy_b_area VALUES('2906','两当县','492');
INSERT INTO cmseasy_b_area VALUES('2907','成县','492');
INSERT INTO cmseasy_b_area VALUES('2908','宕昌县','492');
INSERT INTO cmseasy_b_area VALUES('2909','西和县','492');
INSERT INTO cmseasy_b_area VALUES('2910','徽县','492');
INSERT INTO cmseasy_b_area VALUES('2911','合作市','493');
INSERT INTO cmseasy_b_area VALUES('2912','卓尼县','493');
INSERT INTO cmseasy_b_area VALUES('2913','迭部县','493');
INSERT INTO cmseasy_b_area VALUES('2914','夏河县','493');
INSERT INTO cmseasy_b_area VALUES('2915','碌曲县','493');
INSERT INTO cmseasy_b_area VALUES('2916','临潭县','493');
INSERT INTO cmseasy_b_area VALUES('2917','舟曲县','493');
INSERT INTO cmseasy_b_area VALUES('2918','玛曲县','493');
INSERT INTO cmseasy_b_area VALUES('2919','临夏市','494');
INSERT INTO cmseasy_b_area VALUES('2920','康乐县','494');
INSERT INTO cmseasy_b_area VALUES('2921','广河县','494');
INSERT INTO cmseasy_b_area VALUES('2922','东乡族自治县','494');
INSERT INTO cmseasy_b_area VALUES('2923','积石山保安族东','494');
INSERT INTO cmseasy_b_area VALUES('2924','乡族撒拉族自治县','494');
INSERT INTO cmseasy_b_area VALUES('2925','临夏县','494');
INSERT INTO cmseasy_b_area VALUES('2926','永靖县','494');
INSERT INTO cmseasy_b_area VALUES('2927','和政县','494');
INSERT INTO cmseasy_b_area VALUES('2928','城东区','495');
INSERT INTO cmseasy_b_area VALUES('2929','城西区','495');
INSERT INTO cmseasy_b_area VALUES('2930','大通回族土族自治县','495');
INSERT INTO cmseasy_b_area VALUES('2931','湟源县','495');
INSERT INTO cmseasy_b_area VALUES('2932','城中区','495');
INSERT INTO cmseasy_b_area VALUES('2933','城北区','495');
INSERT INTO cmseasy_b_area VALUES('2934','湟中县','495');
INSERT INTO cmseasy_b_area VALUES('2935','平安县','496');
INSERT INTO cmseasy_b_area VALUES('2936','乐都县','496');
INSERT INTO cmseasy_b_area VALUES('2937','化隆回族自治县','496');
INSERT INTO cmseasy_b_area VALUES('2938','循化撒拉族自治县','496');
INSERT INTO cmseasy_b_area VALUES('2939','民和回族土族自治县','496');
INSERT INTO cmseasy_b_area VALUES('2940','互助土族自治县','496');
INSERT INTO cmseasy_b_area VALUES('2941','门源回族自治县','497');
INSERT INTO cmseasy_b_area VALUES('2942','海晏县','497');
INSERT INTO cmseasy_b_area VALUES('2943','刚察县','497');
INSERT INTO cmseasy_b_area VALUES('2944','祁连县','497');
INSERT INTO cmseasy_b_area VALUES('2945','同仁县','498');
INSERT INTO cmseasy_b_area VALUES('2946','泽库县','498');
INSERT INTO cmseasy_b_area VALUES('2947','河南蒙古族自治县','498');
INSERT INTO cmseasy_b_area VALUES('2948','尖扎县','498');
INSERT INTO cmseasy_b_area VALUES('2949','共和县','499');
INSERT INTO cmseasy_b_area VALUES('2950','贵德县','499');
INSERT INTO cmseasy_b_area VALUES('2951','贵南县','499');
INSERT INTO cmseasy_b_area VALUES('2952','同德县','499');
INSERT INTO cmseasy_b_area VALUES('2953','兴海县','499');
INSERT INTO cmseasy_b_area VALUES('2954','玛沁县','500');
INSERT INTO cmseasy_b_area VALUES('2955','甘德县','500');
INSERT INTO cmseasy_b_area VALUES('2956','久治县','500');
INSERT INTO cmseasy_b_area VALUES('2957','班玛县','500');
INSERT INTO cmseasy_b_area VALUES('2958','达日县','500');
INSERT INTO cmseasy_b_area VALUES('2959','玛多县','500');
INSERT INTO cmseasy_b_area VALUES('2960','玉树县','501');
INSERT INTO cmseasy_b_area VALUES('2961','称多县','501');
INSERT INTO cmseasy_b_area VALUES('2962','囊谦县','501');
INSERT INTO cmseasy_b_area VALUES('2963','曲麻莱县','501');
INSERT INTO cmseasy_b_area VALUES('2964','杂多县','501');
INSERT INTO cmseasy_b_area VALUES('2965','治多县','501');
INSERT INTO cmseasy_b_area VALUES('2966','格尔木市','502');
INSERT INTO cmseasy_b_area VALUES('2967','乌兰县','502');
INSERT INTO cmseasy_b_area VALUES('2968','天峻县','502');
INSERT INTO cmseasy_b_area VALUES('2969','德令哈市','502');
INSERT INTO cmseasy_b_area VALUES('2970','都兰县','502');
INSERT INTO cmseasy_b_area VALUES('2971','新城区','503');
INSERT INTO cmseasy_b_area VALUES('2972','玉泉区','503');
INSERT INTO cmseasy_b_area VALUES('2973','托克托县','503');
INSERT INTO cmseasy_b_area VALUES('2974','清水河县','503');
INSERT INTO cmseasy_b_area VALUES('2975','武川县','503');
INSERT INTO cmseasy_b_area VALUES('2976','回民区','503');
INSERT INTO cmseasy_b_area VALUES('2977','土默特左旗','503');
INSERT INTO cmseasy_b_area VALUES('2978','和林格尔县','503');
INSERT INTO cmseasy_b_area VALUES('2979','东河区','504');
INSERT INTO cmseasy_b_area VALUES('2980','青山区','504');
INSERT INTO cmseasy_b_area VALUES('2981','土默特右旗','504');
INSERT INTO cmseasy_b_area VALUES('2982','达尔罕茂明安联合旗','504');
INSERT INTO cmseasy_b_area VALUES('2983','昆都伦区','504');
INSERT INTO cmseasy_b_area VALUES('2984','白云矿区','504');
INSERT INTO cmseasy_b_area VALUES('2985','固阳县','504');
INSERT INTO cmseasy_b_area VALUES('2986','海勃湾区','505');
INSERT INTO cmseasy_b_area VALUES('2987','乌达区','505');
INSERT INTO cmseasy_b_area VALUES('2988','红山区','506');
INSERT INTO cmseasy_b_area VALUES('2989','松山区','506');
INSERT INTO cmseasy_b_area VALUES('2990','巴林左旗','506');
INSERT INTO cmseasy_b_area VALUES('2991','林西县','506');
INSERT INTO cmseasy_b_area VALUES('2992','翁牛特旗','506');
INSERT INTO cmseasy_b_area VALUES('2993','宁城县','506');
INSERT INTO cmseasy_b_area VALUES('2994','海南区','506');
INSERT INTO cmseasy_b_area VALUES('2995','元宝山区','506');
INSERT INTO cmseasy_b_area VALUES('2996','阿鲁科尔沁旗','506');
INSERT INTO cmseasy_b_area VALUES('2997','巴林右旗','506');
INSERT INTO cmseasy_b_area VALUES('2998','克什克腾旗','506');
INSERT INTO cmseasy_b_area VALUES('2999','喀喇沁旗','506');
INSERT INTO cmseasy_b_area VALUES('3000','敖汉旗','506');
INSERT INTO cmseasy_b_area VALUES('3001','科尔沁区','507');
INSERT INTO cmseasy_b_area VALUES('3002','科尔沁左翼后旗','507');
INSERT INTO cmseasy_b_area VALUES('3003','库伦旗','507');
INSERT INTO cmseasy_b_area VALUES('3004','扎鲁特旗','507');
INSERT INTO cmseasy_b_area VALUES('3005','霍林郭勒市','507');
INSERT INTO cmseasy_b_area VALUES('3006','科尔沁左翼中旗','507');
INSERT INTO cmseasy_b_area VALUES('3007','开鲁县','507');
INSERT INTO cmseasy_b_area VALUES('3008','奈曼旗','507');
INSERT INTO cmseasy_b_area VALUES('3009','东胜区','508');
INSERT INTO cmseasy_b_area VALUES('3010','准格尔旗','508');
INSERT INTO cmseasy_b_area VALUES('3011','鄂托克旗','508');
INSERT INTO cmseasy_b_area VALUES('3012','乌审旗','508');
INSERT INTO cmseasy_b_area VALUES('3013','伊金霍洛旗','508');
INSERT INTO cmseasy_b_area VALUES('3014','达拉特旗','508');
INSERT INTO cmseasy_b_area VALUES('3015','鄂托克前旗','508');
INSERT INTO cmseasy_b_area VALUES('3016','杭锦旗','508');
INSERT INTO cmseasy_b_area VALUES('3017','海拉尔区','509');
INSERT INTO cmseasy_b_area VALUES('3018','莫力达瓦达斡尔族自治旗','509');
INSERT INTO cmseasy_b_area VALUES('3019','鄂温克族自治旗','509');
INSERT INTO cmseasy_b_area VALUES('3020','新巴尔虎左旗','509');
INSERT INTO cmseasy_b_area VALUES('3021','满洲里市','509');
INSERT INTO cmseasy_b_area VALUES('3022','扎兰屯市','509');
INSERT INTO cmseasy_b_area VALUES('3023','根河市','509');
INSERT INTO cmseasy_b_area VALUES('3024','阿荣旗','509');
INSERT INTO cmseasy_b_area VALUES('3025','鄂伦春自治旗','509');
INSERT INTO cmseasy_b_area VALUES('3026','陈巴尔虎旗','509');
INSERT INTO cmseasy_b_area VALUES('3027','新巴尔虎右旗','509');
INSERT INTO cmseasy_b_area VALUES('3028','牙克石市','509');
INSERT INTO cmseasy_b_area VALUES('3029','额尔古纳市','509');
INSERT INTO cmseasy_b_area VALUES('3030','集宁区','510');
INSERT INTO cmseasy_b_area VALUES('3031','化德县','510');
INSERT INTO cmseasy_b_area VALUES('3032','兴和县','510');
INSERT INTO cmseasy_b_area VALUES('3033','察哈尔右翼前旗','510');
INSERT INTO cmseasy_b_area VALUES('3034','察哈尔右翼后旗','510');
INSERT INTO cmseasy_b_area VALUES('3035','丰镇市','510');
INSERT INTO cmseasy_b_area VALUES('3036','卓资县','510');
INSERT INTO cmseasy_b_area VALUES('3037','商都县','510');
INSERT INTO cmseasy_b_area VALUES('3038','凉城县','510');
INSERT INTO cmseasy_b_area VALUES('3039','察哈尔右翼中旗','510');
INSERT INTO cmseasy_b_area VALUES('3040','四子王旗','510');
INSERT INTO cmseasy_b_area VALUES('3041','二连浩特市','511');
INSERT INTO cmseasy_b_area VALUES('3042','阿巴嘎旗','511');
INSERT INTO cmseasy_b_area VALUES('3043','苏尼特右旗','511');
INSERT INTO cmseasy_b_area VALUES('3044','西乌珠穆沁旗','511');
INSERT INTO cmseasy_b_area VALUES('3045','镶黄旗','511');
INSERT INTO cmseasy_b_area VALUES('3046','正蓝旗','511');
INSERT INTO cmseasy_b_area VALUES('3047','多伦县','511');
INSERT INTO cmseasy_b_area VALUES('3048','锡林浩特市','511');
INSERT INTO cmseasy_b_area VALUES('3049','苏尼特左旗','511');
INSERT INTO cmseasy_b_area VALUES('3050','东乌珠穆沁旗','511');
INSERT INTO cmseasy_b_area VALUES('3051','太仆寺旗','511');
INSERT INTO cmseasy_b_area VALUES('3052','正镶白旗','511');
INSERT INTO cmseasy_b_area VALUES('3053','临河区','512');
INSERT INTO cmseasy_b_area VALUES('3054','磴口县','512');
INSERT INTO cmseasy_b_area VALUES('3055','乌拉特中旗','512');
INSERT INTO cmseasy_b_area VALUES('3056','杭锦后旗','512');
INSERT INTO cmseasy_b_area VALUES('3057','五原县','512');
INSERT INTO cmseasy_b_area VALUES('3058','乌拉特前旗','512');
INSERT INTO cmseasy_b_area VALUES('3059','乌拉特后旗','512');
INSERT INTO cmseasy_b_area VALUES('3060','阿拉善左旗','513');
INSERT INTO cmseasy_b_area VALUES('3061','额济纳旗','513');
INSERT INTO cmseasy_b_area VALUES('3062','阿拉善右旗','513');
INSERT INTO cmseasy_b_area VALUES('3063','乌兰浩特市','514');
INSERT INTO cmseasy_b_area VALUES('3064','科尔沁右翼前旗','514');
INSERT INTO cmseasy_b_area VALUES('3065','扎赉特旗','514');
INSERT INTO cmseasy_b_area VALUES('3066','突泉县','514');
INSERT INTO cmseasy_b_area VALUES('3067','阿尔山市','514');
INSERT INTO cmseasy_b_area VALUES('3068','科尔沁右翼中旗','514');
INSERT INTO cmseasy_b_area VALUES('3069','城关区','515');
INSERT INTO cmseasy_b_area VALUES('3070','当雄县','515');
INSERT INTO cmseasy_b_area VALUES('3071','曲水县','515');
INSERT INTO cmseasy_b_area VALUES('3072','墨竹工卡县','515');
INSERT INTO cmseasy_b_area VALUES('3073','达孜县','515');
INSERT INTO cmseasy_b_area VALUES('3074','林周县','515');
INSERT INTO cmseasy_b_area VALUES('3075','尼木县','515');
INSERT INTO cmseasy_b_area VALUES('3076','堆龙德庆县','515');
INSERT INTO cmseasy_b_area VALUES('3077','那曲县','516');
INSERT INTO cmseasy_b_area VALUES('3078','比如县','516');
INSERT INTO cmseasy_b_area VALUES('3079','安多县','516');
INSERT INTO cmseasy_b_area VALUES('3080','索县','516');
INSERT INTO cmseasy_b_area VALUES('3081','巴青县','516');
INSERT INTO cmseasy_b_area VALUES('3082','尼玛县','516');
INSERT INTO cmseasy_b_area VALUES('3083','嘉黎县','516');
INSERT INTO cmseasy_b_area VALUES('3084','聂荣县','516');
INSERT INTO cmseasy_b_area VALUES('3085','申扎县','516');
INSERT INTO cmseasy_b_area VALUES('3086','班戈县','516');
INSERT INTO cmseasy_b_area VALUES('3087','昌都县','517');
INSERT INTO cmseasy_b_area VALUES('3088','贡觉县','517');
INSERT INTO cmseasy_b_area VALUES('3089','丁青县','517');
INSERT INTO cmseasy_b_area VALUES('3090','八宿县','517');
INSERT INTO cmseasy_b_area VALUES('3091','芒康县','517');
INSERT INTO cmseasy_b_area VALUES('3092','边坝县','517');
INSERT INTO cmseasy_b_area VALUES('3093','江达县','517');
INSERT INTO cmseasy_b_area VALUES('3094','类乌齐县','517');
INSERT INTO cmseasy_b_area VALUES('3095','察雅县','517');
INSERT INTO cmseasy_b_area VALUES('3096','左贡县','517');
INSERT INTO cmseasy_b_area VALUES('3097','洛隆县','517');
INSERT INTO cmseasy_b_area VALUES('3098','乃东县','518');
INSERT INTO cmseasy_b_area VALUES('3099','贡嘎县','518');
INSERT INTO cmseasy_b_area VALUES('3100','琼结县','518');
INSERT INTO cmseasy_b_area VALUES('3101','措美县','518');
INSERT INTO cmseasy_b_area VALUES('3102','加查县','518');
INSERT INTO cmseasy_b_area VALUES('3103','错那县','518');
INSERT INTO cmseasy_b_area VALUES('3104','浪卡子县','518');
INSERT INTO cmseasy_b_area VALUES('3105','扎囊县','518');
INSERT INTO cmseasy_b_area VALUES('3106','桑日县','518');
INSERT INTO cmseasy_b_area VALUES('3107','曲松县','518');
INSERT INTO cmseasy_b_area VALUES('3108','洛扎县','518');
INSERT INTO cmseasy_b_area VALUES('3109','隆子县','518');
INSERT INTO cmseasy_b_area VALUES('3110','日喀则市','519');
INSERT INTO cmseasy_b_area VALUES('3111','江孜县','519');
INSERT INTO cmseasy_b_area VALUES('3112','萨迦县','519');
INSERT INTO cmseasy_b_area VALUES('3113','昂仁县','519');
INSERT INTO cmseasy_b_area VALUES('3114','白朗县','519');
INSERT INTO cmseasy_b_area VALUES('3115','康马县','519');
INSERT INTO cmseasy_b_area VALUES('3116','仲巴县','519');
INSERT INTO cmseasy_b_area VALUES('3117','吉隆县','519');
INSERT INTO cmseasy_b_area VALUES('3118','萨嘎县','519');
INSERT INTO cmseasy_b_area VALUES('3119','岗巴县','519');
INSERT INTO cmseasy_b_area VALUES('3120','南木林县','519');
INSERT INTO cmseasy_b_area VALUES('3121','定日县','519');
INSERT INTO cmseasy_b_area VALUES('3122','拉孜县','519');
INSERT INTO cmseasy_b_area VALUES('3123','谢通门县','519');
INSERT INTO cmseasy_b_area VALUES('3124','仁布县','519');
INSERT INTO cmseasy_b_area VALUES('3125','定结县','519');
INSERT INTO cmseasy_b_area VALUES('3126','亚东县','519');
INSERT INTO cmseasy_b_area VALUES('3127','聂拉木县','519');
INSERT INTO cmseasy_b_area VALUES('3128','普兰县','520');
INSERT INTO cmseasy_b_area VALUES('3129','噶尔县','520');
INSERT INTO cmseasy_b_area VALUES('3130','革吉县','520');
INSERT INTO cmseasy_b_area VALUES('3131','措勤县','520');
INSERT INTO cmseasy_b_area VALUES('3132','札达县','520');
INSERT INTO cmseasy_b_area VALUES('3133','日土县','520');
INSERT INTO cmseasy_b_area VALUES('3134','改则县','520');
INSERT INTO cmseasy_b_area VALUES('3135','林芝县','521');
INSERT INTO cmseasy_b_area VALUES('3136','米林县','521');
INSERT INTO cmseasy_b_area VALUES('3137','波密县','521');
INSERT INTO cmseasy_b_area VALUES('3138','朗县','521');
INSERT INTO cmseasy_b_area VALUES('3139','工布江达县','521');
INSERT INTO cmseasy_b_area VALUES('3140','墨脱县','521');
INSERT INTO cmseasy_b_area VALUES('3141','察隅县','521');
INSERT INTO cmseasy_b_area VALUES('3142','天山区','522');
INSERT INTO cmseasy_b_area VALUES('3143','新市区','522');
INSERT INTO cmseasy_b_area VALUES('3144','头屯河区','522');
INSERT INTO cmseasy_b_area VALUES('3145','东山区','522');
INSERT INTO cmseasy_b_area VALUES('3146','沙依巴克区','522');
INSERT INTO cmseasy_b_area VALUES('3147','水磨沟区','522');
INSERT INTO cmseasy_b_area VALUES('3148','独山子区','523');
INSERT INTO cmseasy_b_area VALUES('3149','白碱滩区','523');
INSERT INTO cmseasy_b_area VALUES('3150','乌尔禾区','523');
INSERT INTO cmseasy_b_area VALUES('3151','克拉玛依区','523');
INSERT INTO cmseasy_b_area VALUES('3152','吐鲁番市','524');
INSERT INTO cmseasy_b_area VALUES('3153','托克逊县','524');
INSERT INTO cmseasy_b_area VALUES('3154','鄯善县','524');
INSERT INTO cmseasy_b_area VALUES('3155','哈密市','525');
INSERT INTO cmseasy_b_area VALUES('3156','伊吾县','525');
INSERT INTO cmseasy_b_area VALUES('3157','巴里坤哈萨克自治县','525');
INSERT INTO cmseasy_b_area VALUES('3158','和田市','526');
INSERT INTO cmseasy_b_area VALUES('3159','墨玉县','526');
INSERT INTO cmseasy_b_area VALUES('3160','洛浦县','526');
INSERT INTO cmseasy_b_area VALUES('3161','于田县','526');
INSERT INTO cmseasy_b_area VALUES('3162','民丰县','526');
INSERT INTO cmseasy_b_area VALUES('3163','和田县','526');
INSERT INTO cmseasy_b_area VALUES('3164','皮山县','526');
INSERT INTO cmseasy_b_area VALUES('3165','策勒县','526');
INSERT INTO cmseasy_b_area VALUES('3166','阿克苏市','527');
INSERT INTO cmseasy_b_area VALUES('3167','库车县','527');
INSERT INTO cmseasy_b_area VALUES('3168','新和县','527');
INSERT INTO cmseasy_b_area VALUES('3169','乌什县','527');
INSERT INTO cmseasy_b_area VALUES('3170','温宿县','527');
INSERT INTO cmseasy_b_area VALUES('3171','沙雅县','527');
INSERT INTO cmseasy_b_area VALUES('3172','拜城县','527');
INSERT INTO cmseasy_b_area VALUES('3173','阿瓦提县','527');
INSERT INTO cmseasy_b_area VALUES('3174','喀什市','528');
INSERT INTO cmseasy_b_area VALUES('3175','疏勒县','528');
INSERT INTO cmseasy_b_area VALUES('3176','泽普县','528');
INSERT INTO cmseasy_b_area VALUES('3177','叶城县','528');
INSERT INTO cmseasy_b_area VALUES('3178','岳普湖县','528');
INSERT INTO cmseasy_b_area VALUES('3179','塔什库尔干塔吉克自治县','528');
INSERT INTO cmseasy_b_area VALUES('3180','巴楚县','528');
INSERT INTO cmseasy_b_area VALUES('3181','疏附县','528');
INSERT INTO cmseasy_b_area VALUES('3182','英吉沙县','528');
INSERT INTO cmseasy_b_area VALUES('3183','莎车县','528');
INSERT INTO cmseasy_b_area VALUES('3184','麦盖提县','528');
INSERT INTO cmseasy_b_area VALUES('3185','伽师县','528');
INSERT INTO cmseasy_b_area VALUES('3186','阿图什市','529');
INSERT INTO cmseasy_b_area VALUES('3187','阿合奇县','529');
INSERT INTO cmseasy_b_area VALUES('3188','乌恰县','529');
INSERT INTO cmseasy_b_area VALUES('3189','阿克陶县','529');
INSERT INTO cmseasy_b_area VALUES('3190','库尔勒市','530');
INSERT INTO cmseasy_b_area VALUES('3191','尉犁县','530');
INSERT INTO cmseasy_b_area VALUES('3192','且末县','530');
INSERT INTO cmseasy_b_area VALUES('3193','和静县','530');
INSERT INTO cmseasy_b_area VALUES('3194','博湖县','530');
INSERT INTO cmseasy_b_area VALUES('3195','轮台县','530');
INSERT INTO cmseasy_b_area VALUES('3196','若羌县','530');
INSERT INTO cmseasy_b_area VALUES('3197','焉耆回族自治县','530');
INSERT INTO cmseasy_b_area VALUES('3198','和硕县','530');
INSERT INTO cmseasy_b_area VALUES('3199','昌吉市','531');
INSERT INTO cmseasy_b_area VALUES('3200','米泉市','531');
INSERT INTO cmseasy_b_area VALUES('3201','玛纳斯县','531');
INSERT INTO cmseasy_b_area VALUES('3202','吉木萨尔县','531');
INSERT INTO cmseasy_b_area VALUES('3203','木垒哈萨克自治县','531');
INSERT INTO cmseasy_b_area VALUES('3204','阜康市','531');
INSERT INTO cmseasy_b_area VALUES('3205','呼图壁县','531');
INSERT INTO cmseasy_b_area VALUES('3206','奇台县','531');
INSERT INTO cmseasy_b_area VALUES('3207','博乐市','532');
INSERT INTO cmseasy_b_area VALUES('3208','温泉县','532');
INSERT INTO cmseasy_b_area VALUES('3209','精河县','532');
INSERT INTO cmseasy_b_area VALUES('3210','伊宁市','533');
INSERT INTO cmseasy_b_area VALUES('3211','伊宁县','533');
INSERT INTO cmseasy_b_area VALUES('3212','霍城县','533');
INSERT INTO cmseasy_b_area VALUES('3213','新源县','533');
INSERT INTO cmseasy_b_area VALUES('3214','尼勒克县','533');
INSERT INTO cmseasy_b_area VALUES('3215','特克斯县','533');
INSERT INTO cmseasy_b_area VALUES('3216','奎屯市','533');
INSERT INTO cmseasy_b_area VALUES('3217','察布查尔锡伯自治县','533');
INSERT INTO cmseasy_b_area VALUES('3218','巩留县','533');
INSERT INTO cmseasy_b_area VALUES('3219','昭苏县','533');
INSERT INTO cmseasy_b_area VALUES('3220','塔城市','534');
INSERT INTO cmseasy_b_area VALUES('3221','额敏县','534');
INSERT INTO cmseasy_b_area VALUES('3222','托里县','534');
INSERT INTO cmseasy_b_area VALUES('3223','和布克赛尔蒙古自治县','534');
INSERT INTO cmseasy_b_area VALUES('3224','乌苏市','534');
INSERT INTO cmseasy_b_area VALUES('3225','沙湾县','534');
INSERT INTO cmseasy_b_area VALUES('3226','裕民县','534');
INSERT INTO cmseasy_b_area VALUES('3227','阿勒泰市','535');
INSERT INTO cmseasy_b_area VALUES('3228','吉木乃县','535');
INSERT INTO cmseasy_b_area VALUES('3229','布尔津县','535');
INSERT INTO cmseasy_b_area VALUES('3230','富蕴县','535');
INSERT INTO cmseasy_b_area VALUES('3231','哈巴河县','535');
INSERT INTO cmseasy_b_area VALUES('3232','福海县','535');
INSERT INTO cmseasy_b_area VALUES('3233','青河县','535');
INSERT INTO cmseasy_b_area VALUES('3234','石河子市','536');
INSERT INTO cmseasy_b_area VALUES('3235','阿拉尔市','536');
INSERT INTO cmseasy_b_area VALUES('3236','图木舒克市','536');
INSERT INTO cmseasy_b_area VALUES('3237','五家渠市','536');
INSERT INTO cmseasy_b_area VALUES('3238','兴宁区','537');
INSERT INTO cmseasy_b_area VALUES('3239','江南区','537');
INSERT INTO cmseasy_b_area VALUES('3240','良庆区','537');
INSERT INTO cmseasy_b_area VALUES('3241','武鸣县','537');
INSERT INTO cmseasy_b_area VALUES('3242','马山县','537');
INSERT INTO cmseasy_b_area VALUES('3243','宾阳县','537');
INSERT INTO cmseasy_b_area VALUES('3244','横县','537');
INSERT INTO cmseasy_b_area VALUES('3245','青秀区','537');
INSERT INTO cmseasy_b_area VALUES('3246','西乡塘区','537');
INSERT INTO cmseasy_b_area VALUES('3247','邕宁区','537');
INSERT INTO cmseasy_b_area VALUES('3248','隆安县','537');
INSERT INTO cmseasy_b_area VALUES('3249','上林县','537');
INSERT INTO cmseasy_b_area VALUES('3250','城中区','538');
INSERT INTO cmseasy_b_area VALUES('3251','柳南区','538');
INSERT INTO cmseasy_b_area VALUES('3252','柳江县','538');
INSERT INTO cmseasy_b_area VALUES('3253','鹿寨县','538');
INSERT INTO cmseasy_b_area VALUES('3254','融水苗族自治县','538');
INSERT INTO cmseasy_b_area VALUES('3255','三江侗族自治县','538');
INSERT INTO cmseasy_b_area VALUES('3256','鱼峰区','538');
INSERT INTO cmseasy_b_area VALUES('3257','柳北区','538');
INSERT INTO cmseasy_b_area VALUES('3258','柳城县','538');
INSERT INTO cmseasy_b_area VALUES('3259','融安县','538');
INSERT INTO cmseasy_b_area VALUES('3260','秀峰区','539');
INSERT INTO cmseasy_b_area VALUES('3261','象山区','539');
INSERT INTO cmseasy_b_area VALUES('3262','雁山区','539');
INSERT INTO cmseasy_b_area VALUES('3263','临桂县','539');
INSERT INTO cmseasy_b_area VALUES('3264','全州县','539');
INSERT INTO cmseasy_b_area VALUES('3265','永福县','539');
INSERT INTO cmseasy_b_area VALUES('3266','龙胜各族自治县','539');
INSERT INTO cmseasy_b_area VALUES('3267','平乐县恭城瑶族自治县','539');
INSERT INTO cmseasy_b_area VALUES('3268','叠彩区','539');
INSERT INTO cmseasy_b_area VALUES('3269','七星区','539');
INSERT INTO cmseasy_b_area VALUES('3270','阳朔县','539');
INSERT INTO cmseasy_b_area VALUES('3271','灵川县','539');
INSERT INTO cmseasy_b_area VALUES('3272','兴安县','539');
INSERT INTO cmseasy_b_area VALUES('3273','灌阳县','539');
INSERT INTO cmseasy_b_area VALUES('3274','资源县','539');
INSERT INTO cmseasy_b_area VALUES('3275','荔蒲县','539');
INSERT INTO cmseasy_b_area VALUES('3276','万秀区','540');
INSERT INTO cmseasy_b_area VALUES('3277','长洲区','540');
INSERT INTO cmseasy_b_area VALUES('3278','藤县','540');
INSERT INTO cmseasy_b_area VALUES('3279','岑溪市','540');
INSERT INTO cmseasy_b_area VALUES('3280','蝶山区','540');
INSERT INTO cmseasy_b_area VALUES('3281','苍梧县','540');
INSERT INTO cmseasy_b_area VALUES('3282','蒙山县','540');
INSERT INTO cmseasy_b_area VALUES('3283','海城区','541');
INSERT INTO cmseasy_b_area VALUES('3284','铁山港区','541');
INSERT INTO cmseasy_b_area VALUES('3285','合浦县','541');
INSERT INTO cmseasy_b_area VALUES('3286','银海区','541');
INSERT INTO cmseasy_b_area VALUES('3287','港口区','542');
INSERT INTO cmseasy_b_area VALUES('3288','上思县','542');
INSERT INTO cmseasy_b_area VALUES('3289','东兴市','542');
INSERT INTO cmseasy_b_area VALUES('3290','防城区','542');
INSERT INTO cmseasy_b_area VALUES('3291','钦南区','543');
INSERT INTO cmseasy_b_area VALUES('3292','灵山县','543');
INSERT INTO cmseasy_b_area VALUES('3293','浦北县','543');
INSERT INTO cmseasy_b_area VALUES('3294','钦北区','543');
INSERT INTO cmseasy_b_area VALUES('3295','港北区','544');
INSERT INTO cmseasy_b_area VALUES('3296','覃塘区','544');
INSERT INTO cmseasy_b_area VALUES('3297','桂平市','544');
INSERT INTO cmseasy_b_area VALUES('3298','港南区','544');
INSERT INTO cmseasy_b_area VALUES('3299','平南县','544');
INSERT INTO cmseasy_b_area VALUES('3300','玉州区','545');
INSERT INTO cmseasy_b_area VALUES('3301','陆川县','545');
INSERT INTO cmseasy_b_area VALUES('3302','兴业县','545');
INSERT INTO cmseasy_b_area VALUES('3303','北流市','545');
INSERT INTO cmseasy_b_area VALUES('3304','容县','545');
INSERT INTO cmseasy_b_area VALUES('3305','博白县','545');
INSERT INTO cmseasy_b_area VALUES('3306','右江区','546');
INSERT INTO cmseasy_b_area VALUES('3307','田东县','546');
INSERT INTO cmseasy_b_area VALUES('3308','德保县','546');
INSERT INTO cmseasy_b_area VALUES('3309','那坡县','546');
INSERT INTO cmseasy_b_area VALUES('3310','乐业县','546');
INSERT INTO cmseasy_b_area VALUES('3311','西林县','546');
INSERT INTO cmseasy_b_area VALUES('3312','隆林各族自治县','546');
INSERT INTO cmseasy_b_area VALUES('3313','田阳县','546');
INSERT INTO cmseasy_b_area VALUES('3314','平果县','546');
INSERT INTO cmseasy_b_area VALUES('3315','靖西县','546');
INSERT INTO cmseasy_b_area VALUES('3316','凌云县','546');
INSERT INTO cmseasy_b_area VALUES('3317','田林县','546');
INSERT INTO cmseasy_b_area VALUES('3318','八步区','547');
INSERT INTO cmseasy_b_area VALUES('3319','钟山县','547');
INSERT INTO cmseasy_b_area VALUES('3320','富川瑶族自治县','547');
INSERT INTO cmseasy_b_area VALUES('3321','昭平县','547');
INSERT INTO cmseasy_b_area VALUES('3322','金城江区','548');
INSERT INTO cmseasy_b_area VALUES('3323','天峨县','548');
INSERT INTO cmseasy_b_area VALUES('3324','东兰县','548');
INSERT INTO cmseasy_b_area VALUES('3325','环江毛南族自治县','548');
INSERT INTO cmseasy_b_area VALUES('3326','都安瑶族自治县','548');
INSERT INTO cmseasy_b_area VALUES('3327','宜州市','548');
INSERT INTO cmseasy_b_area VALUES('3328','南丹县','548');
INSERT INTO cmseasy_b_area VALUES('3329','凤山县','548');
INSERT INTO cmseasy_b_area VALUES('3330','罗城\r\n仫佬族自治县','548');
INSERT INTO cmseasy_b_area VALUES('3331','巴马瑶族自治县','548');
INSERT INTO cmseasy_b_area VALUES('3332','大化瑶族自治县','548');
INSERT INTO cmseasy_b_area VALUES('3333','兴宾区','549');
INSERT INTO cmseasy_b_area VALUES('3334','象州县','549');
INSERT INTO cmseasy_b_area VALUES('3335','金秀瑶族自治县','549');
INSERT INTO cmseasy_b_area VALUES('3336','合山市','549');
INSERT INTO cmseasy_b_area VALUES('3337','忻城县','549');
INSERT INTO cmseasy_b_area VALUES('3338','武宣县','549');
INSERT INTO cmseasy_b_area VALUES('3339','江洲区','550');
INSERT INTO cmseasy_b_area VALUES('3340','宁明县','550');
INSERT INTO cmseasy_b_area VALUES('3341','大新县','550');
INSERT INTO cmseasy_b_area VALUES('3342','凭祥市','550');
INSERT INTO cmseasy_b_area VALUES('3343','扶绥县','550');
INSERT INTO cmseasy_b_area VALUES('3344','龙州县','550');
INSERT INTO cmseasy_b_area VALUES('3345','天等县','550');
INSERT INTO cmseasy_b_area VALUES('3346','西城区','551');
INSERT INTO cmseasy_b_area VALUES('3347','东城区','551');
INSERT INTO cmseasy_b_area VALUES('3348','新 城','551');
INSERT INTO cmseasy_b_area VALUES('3349','新市区','551');
INSERT INTO cmseasy_b_area VALUES('3350','永宁县城','551');
INSERT INTO cmseasy_b_area VALUES('3351','贺兰县城','551');
INSERT INTO cmseasy_b_area VALUES('3352','大武口区','552');
INSERT INTO cmseasy_b_area VALUES('3353','石嘴山区','552');
INSERT INTO cmseasy_b_area VALUES('3354','石炭井区','552');
INSERT INTO cmseasy_b_area VALUES('3355','平罗县城','552');
INSERT INTO cmseasy_b_area VALUES('3356','陶乐县城','552');
INSERT INTO cmseasy_b_area VALUES('3357','惠农县城','552');
INSERT INTO cmseasy_b_area VALUES('3358','中宁县城','553');
INSERT INTO cmseasy_b_area VALUES('3359','同心县城','553');
INSERT INTO cmseasy_b_area VALUES('3360','灵武县城','553');
INSERT INTO cmseasy_b_area VALUES('3361','盐池县城','553');
INSERT INTO cmseasy_b_area VALUES('3362','青铜峡市（小坝）','553');
INSERT INTO cmseasy_b_area VALUES('3363','青铜峡镇','553');
INSERT INTO cmseasy_b_area VALUES('3364','中卫县城','553');
INSERT INTO cmseasy_b_area VALUES('3365','海原县城','554');
INSERT INTO cmseasy_b_area VALUES('3366','西吉县城','554');
INSERT INTO cmseasy_b_area VALUES('3367','隆德县城','554');
INSERT INTO cmseasy_b_area VALUES('3368','泾源县城','554');
INSERT INTO cmseasy_b_area VALUES('3369','彭阳县城','554');
INSERT INTO cmseasy_b_area VALUES('3372','高新区','443');

INSERT INTO `cmseasy_b_category` VALUES ('1', '0', '关于我们', '', '0', '', '', '', '', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CmsEasy是一款基于 PHP+Mysql 架构的网站内容管理系统，也是一个 PHP 开发平台。 采用模块化方式开发，功能易用便于扩展，可面向大中型站点提供重量级网站建设解决方案。2年来，凭借 团队长期积累的丰富的Web开发及数据库经验和勇于创新追求完美的设计理念，使得 CmsEasy v1.0 得到了众多网站的认可，并且越来越多地被应用到大中型商业网站。</p>', 'about', 'archive/list_page.html', '0', '0', '0', 'wap/list_page.html', null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('2', '0', '企业新闻', '', '0', '', '', '', '', '', 'news', 'archive/list_text.html', 'archive/list_text.html', '0', '0', null, null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('3', '0', '产品中心', '', '0', null, null, null, null, null, 'products', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', 'wap/list_pic.html', 'wap/list_pic.html', 'wap/show_products.html', null, null, null, 'article', '1', '0', '0', '1', '1', '0', null, '', '', null, '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('4', '0', '营销网络', '', '0', '', '', '', '', '<p style=\"text-align: center\"><img alt=\"\" width=\"516\" height=\"267\" src=\"/upload/archive/image/1007182312368551207nx9paa1i8k0.jpg\" /></p> <p style=\"text-align: center\">&nbsp;</p> <p style=\"text-align: left\">公司地址：四平红嘴大学科技园</p> <p style=\"text-align: left\">联系电话：0434-5226595</p> <p style=\"text-align: left\">办公传真：0434-5226595</p>', 'marketing', 'archive/list_page.html', '0', '0', '0', 'wap/list_page.html', null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('5', '0', '联系我们', '', '0', '', '', '', '', '<p>如果你想拥有一份自由有趣的工作，如果你对界面设计拥有一份热情和动力，那么请与我们联系。在这里你能发现一群志同道合的年轻人，并为了实践理想而努力！</p>\r\n<p>我们的团队为自己的理想奋斗，我们互补性强，分工明确，目标一致，我们艰苦奋斗，坚持不辍！因为我们坚信，一个好的理念和一个优秀的团队势必会成就一个远大的理想！<br />\r\n&nbsp;</p>\r\n<p>联系我们：<br />\r\n售前咨询客服QQ-01：<br />\r\n售前咨询客服QQ-02：<br />\r\n客户售前咨询热线：<br />\r\n客户售后服务热线：<br />\r\n客服信箱：</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'contact', 'archive/list_ditu.html', 'archive/list_page.html', '0', '0', 'wap/list_ditu.html', null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('6', '0', '文档下载', '', '0', '', '', '', '', '', 'download', 'archive/list_down.html', 'archive/list_down.html', 'archive/show_down.html', '0', 'wap/list_down.html', 'wap/list_down.html', 'wap/show_down.html', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('7', '0', '职位招聘', '', '0', '', '', '', '', '', 'zhiweizhaopin', 'archive/list_job.html', 'archive/list_job.html', 'archive/show_job.html', '0', null, null, 'wap/show_job.html', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1');
INSERT INTO `cmseasy_b_category` VALUES ('8', '3', '手机', '', '0', '', '', '', '', '', 'shouji', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', null, null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '0', '1');
INSERT INTO `cmseasy_b_category` VALUES ('9', '8', '苹果', '', '0', '', '', '', '', '', 'pingguo', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', null, null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '0', '1');
INSERT INTO `cmseasy_b_category` VALUES ('10', '3', '数码电子', '', '0', '', '', '', '', '', 'shuma', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', null, null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '0', '1');
INSERT INTO `cmseasy_b_category` VALUES ('11', '9', 'iPhone', '', '0', '', '', '', '', '', 'iPhone', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', null, null, null, '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '0', '1');




INSERT INTO cmseasy_b_special VALUES('1','2周年纪念，感恩大促销活动！','template/default/skin/images/i_about.jpg','<p>&nbsp;</p>\r\n<p>\r\n<p><span style=\"color: rgb(255, 0, 0); \"><strong>让您的产品，在互联网上普通盖地！</strong></span></p>\r\n<p><span style=\"color: rgb(0, 0, 255); \">想让更多的客户找到您吗？</span></p>\r\n<p><strong>易通企业网站系统独创企业推广链联盟系统</strong></p>\r\n<p>通过推广链接，让客户和生意自己找上门！</p>\r\n<p>为您的企业营销助力，伴您轻松成功！</p>\r\n<p>易通企业网站系统让您客源不断、生意兴隆！</p>\r\n<p>&nbsp;</p>\r\n</p>\r\n<p>活动一：年授权仅需100元！</p>\r\n<p>活动二：年费授权+1GB空间仅需200元！</p>\r\n<p>活动三：年费版授权+COM域名+1GB空间仅需258元！</p>\r\n<p>活动四：终身版授权+COM域名+1GB空间仅需358元！</p>\r\n<p>活动五：服务版授权+COM域名+1GB空间仅需558元！</p>\r\n<p>增值服务：单独增加一年咨询服务仅需200元！</p>\r\n<p>所有CmsEasy均免费附赠企业客服程序！</p>\r\n<p>赠送空间为国内1GB或香港500MB！</p>\r\n<p>&nbsp;</p>','','0','0','0','0','0');


INSERT INTO cmseasy_ballot VALUES('1','网站为什么要改版？','checkbox','3','0');


INSERT INTO cmseasy_bbs_category VALUES('1','0','1','默认栏目','','','0','0');

INSERT INTO cmseasy_bbs_label VALUES('1','0','普通');
INSERT INTO cmseasy_bbs_label VALUES('2','0','求助');
INSERT INTO cmseasy_bbs_label VALUES('3','0','询问');






INSERT INTO cmseasy_friendlink VALUES('1','2','0','易通免费企业CMS','0','http://www.cmseasy.cn','http://www.cmseasy.cn/logo.gif','','0','cmseasy','2009-11-12 13:14:37','0','1');
INSERT INTO cmseasy_friendlink VALUES('2','1','0','CmsEasy论坛','0','http://www.cmseasy.org','','','0','cmseasy','2009-11-12 13:15:00','2','1');
INSERT INTO cmseasy_friendlink VALUES('3','1','0','九州易通科技有限公司','0','http://www.cmseasy.net','','','0','cmseasy','2009-11-12 13:28:53','2','1');




INSERT INTO cmseasy_my_yingpin VALUES('1','0','','0','2011-11-11 16:11:04','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('2','0','','0','2011-11-11 16:11:13','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','3','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('3','0','','0','2011-11-11 16:11:49','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','3','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('4','0','','0','2011-11-11 16:12:12','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','3','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('5','0','','0','2011-11-11 16:12:41','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('6','0','','0','2011-11-11 16:13:47','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','2011-11-11 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('7','0','','0','2011-11-11 16:15:05','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','2011-11-11 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');
INSERT INTO cmseasy_my_yingpin VALUES('8','0','','0','2011-11-12 11:33:07','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');

INSERT INTO cmseasy_departments VALUES(1, '客服1部', 1, 1, '');
INSERT INTO cmseasy_operators VALUES('1','admin','21232f297a57a5a743894a0e4a801fc3','CmsEasyLive','CElive',1,'admin@cmseasy.cn','0','0');

INSERT INTO cmseasy_option VALUES('1','1','增强用户体验','1','0');
INSERT INTO cmseasy_option VALUES('2','1','结构更加合理','1','0');
INSERT INTO cmseasy_option VALUES('3','1','新产品新思路的融入','1','0');
INSERT INTO cmseasy_option VALUES('4','1','解觉存在的BUG','0','0');
INSERT INTO cmseasy_option VALUES('5','1','增加网民新鲜感','0','0');






INSERT INTO cmseasy_settings VALUES('1','','table-archive','a:1:{s:5:\"attr1\";s:97:\"(0)无\r\n(1)推荐位一\r\n(2)推荐位二\r\n(3)推荐位三\r\n(4)推荐位四\r\n(5)推荐位五\";}','array (\n  \'attr1\' => \'(0)无\r\n(1)推荐位一\r\n(2)推荐位二\r\n(3)推荐位三\r\n(4)推荐位四\r\n(5)推荐位五\',\n)');
INSERT INTO cmseasy_settings VALUES('53','','table-fieldset','a:3:{s:7:\"archive\";a:12:{s:7:\"my_size\";a:9:{s:4:\"name\";s:7:\"my_size\";s:5:\"cname\";s:12:\"文档大小\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"6\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_zhaopinbumen\";a:9:{s:4:\"name\";s:15:\"my_zhaopinbumen\";s:5:\"cname\";s:12:\"招聘部门\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_jobtype\";a:9:{s:4:\"name\";s:10:\"my_jobtype\";s:5:\"cname\";s:12:\"职位类型\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:20:\"(1)全职\r\n(2)兼职\";s:8:\"filetype\";N;}s:11:\"my_jobtitle\";a:9:{s:4:\"name\";s:11:\"my_jobtitle\";s:5:\"cname\";s:12:\"职称要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:12:\"my_jobnumber\";a:9:{s:4:\"name\";s:12:\"my_jobnumber\";s:5:\"cname\";s:12:\"招聘人数\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:12:\"my_jobgender\";a:9:{s:4:\"name\";s:12:\"my_jobgender\";s:5:\"cname\";s:12:\"性别要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:5:\"radio\";s:6:\"select\";s:25:\"(1)男\r\n(2)女\r\n(3)不限\";s:8:\"filetype\";N;}s:10:\"my_jobwork\";a:9:{s:4:\"name\";s:10:\"my_jobwork\";s:5:\"cname\";s:18:\"工作经验要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_jobacademic\";a:9:{s:4:\"name\";s:14:\"my_jobacademic\";s:5:\"cname\";s:12:\"学历要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:86:\"(1)初中以上\r\n(2)高中以上\r\n(3)专科以上\r\n(4)大专以上\r\n(5)研究生以上\";s:8:\"filetype\";N;}s:9:\"my_jobage\";a:9:{s:4:\"name\";s:9:\"my_jobage\";s:5:\"cname\";s:12:\"年龄要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_jobworkareas\";a:9:{s:4:\"name\";s:15:\"my_jobworkareas\";s:5:\"cname\";s:12:\"工作地区\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:18:\"my_jobrequirements\";a:9:{s:4:\"name\";s:18:\"my_jobrequirements\";s:5:\"cname\";s:15:\"要求与待遇\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_contactname\";a:9:{s:4:\"name\";s:14:\"my_contactname\";s:5:\"cname\";s:15:\"联系人姓名\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:10:\"my_yingpin\";a:24:{s:6:\"myform\";a:3:{s:5:\"cname\";s:6:\"应聘\";s:4:\"name\";s:10:\"my_yingpin\";s:8:\"template\";s:18:\"myform/myform.html\";}s:11:\"my_xingming\";a:10:{s:4:\"name\";s:11:\"my_xingming\";s:5:\"cname\";s:6:\"姓名\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:10:\"my_xingbie\";a:10:{s:4:\"name\";s:10:\"my_xingbie\";s:5:\"cname\";s:6:\"性别\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:14:\"(1)男\r\n(2)女\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:12:\"my_nianliang\";a:10:{s:4:\"name\";s:12:\"my_nianliang\";s:5:\"cname\";s:6:\"年龄\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_minzu\";a:10:{s:4:\"name\";s:8:\"my_minzu\";s:5:\"cname\";s:6:\"民族\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:10:\"my_shengao\";a:10:{s:4:\"name\";s:10:\"my_shengao\";s:5:\"cname\";s:6:\"身高\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:15:\"my_shenfenzheng\";a:8:{s:4:\"name\";s:15:\"my_shenfenzheng\";s:5:\"cname\";s:12:\"身份证号\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_jiguan\";a:10:{s:4:\"name\";s:9:\"my_jiguan\";s:5:\"cname\";s:6:\"籍贯\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_xueli\";a:10:{s:4:\"name\";s:8:\"my_xueli\";s:5:\"cname\";s:6:\"学历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:62:\"(1)初中\r\n(2)高中\r\n(3)专科\r\n(4)大专\r\n(5)研究生以上\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_zanzhudizhi\";a:8:{s:4:\"name\";s:14:\"my_zanzhudizhi\";s:5:\"cname\";s:12:\"暂住地址\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_zhuanye\";a:10:{s:4:\"name\";s:10:\"my_zhuanye\";s:5:\"cname\";s:6:\"专业\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_biyeshijian\";a:8:{s:4:\"name\";s:14:\"my_biyeshijian\";s:5:\"cname\";s:12:\"毕业时间\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:8:\"datetime\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_biyeyuanxiao\";a:8:{s:4:\"name\";s:15:\"my_biyeyuanxiao\";s:5:\"cname\";s:12:\"毕业院校\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:13:\"my_waiyujibie\";a:8:{s:4:\"name\";s:13:\"my_waiyujibie\";s:5:\"cname\";s:12:\"外语水平\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:69:\"(1)三级\r\n(2)四级\r\n(3)六级\r\n(4)专业四级\r\n(5)专业八级\r\n\r\n\";s:8:\"filetype\";N;}s:11:\"my_jisuanji\";a:10:{s:4:\"name\";s:11:\"my_jisuanji\";s:5:\"cname\";s:15:\"计算机能力\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:52:\"(1)差\r\n(2)一般\r\n(3)良好\r\n(4)很好\r\n(5)精通  \";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:17:\"my_zhuanyetechang\";a:8:{s:4:\"name\";s:17:\"my_zhuanyetechang\";s:5:\"cname\";s:12:\"专业特长\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:11:\"my_zhicheng\";a:10:{s:4:\"name\";s:11:\"my_zhicheng\";s:5:\"cname\";s:6:\"职称\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_daiyu\";a:8:{s:4:\"name\";s:8:\"my_daiyu\";s:5:\"cname\";s:12:\"待遇要求\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_lianxidianhua\";a:8:{s:4:\"name\";s:16:\"my_lianxidianhua\";s:5:\"cname\";s:12:\"联系电话\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_shouji\";a:10:{s:4:\"name\";s:9:\"my_shouji\";s:5:\"cname\";s:6:\"手机\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_email\";a:8:{s:4:\"name\";s:8:\"my_email\";s:5:\"cname\";s:12:\"电子邮箱\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_xuexijingli\";a:8:{s:4:\"name\";s:14:\"my_xuexijingli\";s:5:\"cname\";s:12:\"学习经历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_gongzuojingli\";a:8:{s:4:\"name\";s:16:\"my_gongzuojingli\";s:5:\"cname\";s:12:\"工作经历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_gerenjianli\";a:8:{s:4:\"name\";s:14:\"my_gerenjianli\";s:5:\"cname\";s:12:\"个人简历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:4:\"my_a\";a:2:{s:6:\"myform\";a:3:{s:5:\"cname\";s:2:\"aa\";s:4:\"name\";s:4:\"my_a\";s:8:\"template\";s:18:\"myform/myform.html\";}s:6:\"my_aaa\";a:8:{s:4:\"name\";s:6:\"my_aaa\";s:5:\"cname\";s:1:\"a\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}}','array (\n  \'archive\' => \n  array (\n    \'my_size\' => \n    array (\n      \'name\' => \'my_size\',\n      \'cname\' => \'文档大小\',\n      \'tips\' => \'\',\n      \'catid\' => \'6\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhaopinbumen\' => \n    array (\n      \'name\' => \'my_zhaopinbumen\',\n      \'cname\' => \'招聘部门\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobtype\' => \n    array (\n      \'name\' => \'my_jobtype\',\n      \'cname\' => \'职位类型\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)全职\r\n(2)兼职\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobtitle\' => \n    array (\n      \'name\' => \'my_jobtitle\',\n      \'cname\' => \'职称要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobnumber\' => \n    array (\n      \'name\' => \'my_jobnumber\',\n      \'cname\' => \'招聘人数\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobgender\' => \n    array (\n      \'name\' => \'my_jobgender\',\n      \'cname\' => \'性别要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'radio\',\n      \'select\' => \'(1)男\r\n(2)女\r\n(3)不限\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobwork\' => \n    array (\n      \'name\' => \'my_jobwork\',\n      \'cname\' => \'工作经验要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobacademic\' => \n    array (\n      \'name\' => \'my_jobacademic\',\n      \'cname\' => \'学历要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)初中以上\r\n(2)高中以上\r\n(3)专科以上\r\n(4)大专以上\r\n(5)研究生以上\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobage\' => \n    array (\n      \'name\' => \'my_jobage\',\n      \'cname\' => \'年龄要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobworkareas\' => \n    array (\n      \'name\' => \'my_jobworkareas\',\n      \'cname\' => \'工作地区\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobrequirements\' => \n    array (\n      \'name\' => \'my_jobrequirements\',\n      \'cname\' => \'要求与待遇\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_contactname\' => \n    array (\n      \'name\' => \'my_contactname\',\n      \'cname\' => \'联系人姓名\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_yingpin\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'应聘\',\n      \'name\' => \'my_yingpin\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_xingming\' => \n    array (\n      \'name\' => \'my_xingming\',\n      \'cname\' => \'姓名\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_xingbie\' => \n    array (\n      \'name\' => \'my_xingbie\',\n      \'cname\' => \'性别\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)男\r\n(2)女\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_nianliang\' => \n    array (\n      \'name\' => \'my_nianliang\',\n      \'cname\' => \'年龄\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_minzu\' => \n    array (\n      \'name\' => \'my_minzu\',\n      \'cname\' => \'民族\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shengao\' => \n    array (\n      \'name\' => \'my_shengao\',\n      \'cname\' => \'身高\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shenfenzheng\' => \n    array (\n      \'name\' => \'my_shenfenzheng\',\n      \'cname\' => \'身份证号\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jiguan\' => \n    array (\n      \'name\' => \'my_jiguan\',\n      \'cname\' => \'籍贯\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_xueli\' => \n    array (\n      \'name\' => \'my_xueli\',\n      \'cname\' => \'学历\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)初中\r\n(2)高中\r\n(3)专科\r\n(4)大专\r\n(5)研究生以上\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_zanzhudizhi\' => \n    array (\n      \'name\' => \'my_zanzhudizhi\',\n      \'cname\' => \'暂住地址\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhuanye\' => \n    array (\n      \'name\' => \'my_zhuanye\',\n      \'cname\' => \'专业\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_biyeshijian\' => \n    array (\n      \'name\' => \'my_biyeshijian\',\n      \'cname\' => \'毕业时间\',\n      \'tips\' => \'\',\n      \'type\' => \'datetime\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_biyeyuanxiao\' => \n    array (\n      \'name\' => \'my_biyeyuanxiao\',\n      \'cname\' => \'毕业院校\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_waiyujibie\' => \n    array (\n      \'name\' => \'my_waiyujibie\',\n      \'cname\' => \'外语水平\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)三级\r\n(2)四级\r\n(3)六级\r\n(4)专业四级\r\n(5)专业八级\r\n\r\n\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jisuanji\' => \n    array (\n      \'name\' => \'my_jisuanji\',\n      \'cname\' => \'计算机能力\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)差\r\n(2)一般\r\n(3)良好\r\n(4)很好\r\n(5)精通  \',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_zhuanyetechang\' => \n    array (\n      \'name\' => \'my_zhuanyetechang\',\n      \'cname\' => \'专业特长\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhicheng\' => \n    array (\n      \'name\' => \'my_zhicheng\',\n      \'cname\' => \'职称\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_daiyu\' => \n    array (\n      \'name\' => \'my_daiyu\',\n      \'cname\' => \'待遇要求\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_lianxidianhua\' => \n    array (\n      \'name\' => \'my_lianxidianhua\',\n      \'cname\' => \'联系电话\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_shouji\' => \n    array (\n      \'name\' => \'my_shouji\',\n      \'cname\' => \'手机\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_email\' => \n    array (\n      \'name\' => \'my_email\',\n      \'cname\' => \'电子邮箱\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_xuexijingli\' => \n    array (\n      \'name\' => \'my_xuexijingli\',\n      \'cname\' => \'学习经历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_gongzuojingli\' => \n    array (\n      \'name\' => \'my_gongzuojingli\',\n      \'cname\' => \'工作经历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_gerenjianli\' => \n    array (\n      \'name\' => \'my_gerenjianli\',\n      \'cname\' => \'个人简历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_a\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'aa\',\n      \'name\' => \'my_a\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_aaa\' => \n    array (\n      \'name\' => \'my_aaa\',\n      \'cname\' => \'a\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n)');

INSERT INTO cmseasy_templatetag VALUES('1','根目录','all','','{$base_url}','','','system','');
INSERT INTO cmseasy_templatetag VALUES('2','Skin目录','all','','{$skin_url}','','','system','');
INSERT INTO cmseasy_templatetag VALUES('3','网站当前位置','article','','<a href=\"{$base_url}/\">{get(\'sitename\')}</a> >>\r\n{loop position($catid) $t}\r\n<a href=\"{$t.url}\">{$t[\'name\']} </a>>\r\n{/loop}','$catid=','参数: $catid','system','');
INSERT INTO cmseasy_templatetag VALUES('4','栏目列表','all','','{loop categories($catid) $cat}\r\n<a href=\"{$cat[url]}\">{$cat[catname]}</a>\r\n{/loop}','$catid=','参数: $catid','system','');
INSERT INTO cmseasy_templatetag VALUES('5','首页链接','all','','<a href=\"{$base_url}/\">首页</a>','','','system','');
INSERT INTO cmseasy_templatetag VALUES('6','取得下级栏目','all','','categories($catid)','','参数: $catid\r\n取得一级栏目： categories()\r\n取得ID为8的栏目的下级栏目: categories(8)\r\n取得当前栏目的下级栏目: categories($catid)','function','');
INSERT INTO cmseasy_templatetag VALUES('7','取得栏目url','all','','caturl($catid)','','参数: $catid\r\n取得栏目url','function','');
INSERT INTO cmseasy_templatetag VALUES('8','栏目链接','all','','<a href=\"{caturl($catid)}\">{catname($catid)}</a>','$catid=','参数: $catid','system','');
INSERT INTO cmseasy_templatetag VALUES('9','导航栏','all','','<ul style=\"width:980px\">\r\n{loop categories() $t}\r\n	<li style=\"float:left;display:inline;width:120px\">\r\n	<a href=\"{$t[url]}\" {if isset($topid) && $topid==$t[catid]}class=\"current\"{/if}>{$t[catname]}</a>\r\n	<!--loop一级目录-->\r\n	{loop categories($t) $t1}\r\n		<ul style=\"float:left;display:inline;width:100px\">\r\n		<a href=\"{$t1[url]}\" {if isset($catid) && $typeid==$t1[catid]}class=\"current\"{/if}>{$t1[catname]}</a>\r\n		<!--loop二级目录...-->\r\n		{loop categories($t1) $t2}\r\n			<ul style=\"float:left;display:inline;width:80px\"><a href=\"{$t2[url]}\" {if isset($catid) && $catid==$t2[catid]}class=\"current\"{/if}>{$t2[catname]}</a>\r\n			<!--loop三级目录...-->\r\n			{loop categories($t2) $t3}\r\n				<ul style=\"float:left;display:inline;width:60px\"><a href=\"{$t3[url]}\" {if isset($catid) && $catid==$t3[catid]}class=\"current\"{/if}>{$t3[catname]}</a></ul>\r\n			{/loop}\r\n			</ul>\r\n		{/loop}\r\n		</ul>\r\n	{/loop}\r\n	</li>\r\n{/loop}\r\n</ul>\r\n','','导航栏示范','system','');
INSERT INTO cmseasy_templatetag VALUES('10','用户信息','','','{if isset($user) && is_array($user)}\r\n欢迎你， {$user.username}!<br>\r\n<a href=\"{url(\'user/logout\')}\">退出</a>\r\n | <a href=\"{url(\'user\')}\" target=\"_blank\">会员中心</a>\r\n{if $user[\'username\']==\'admin\'}\r\n | <a href=\"{$base_url}/admin\" target=\"_blank\">后台管理</a>\r\n{/if}\r\n<?php }else{ ?>\r\n\r\n<form id=\"login_form\"   name=\"loginform\" method=\"post\"  action=\"{url(\'user/login\')}\" onsubmit=\"return checkform();\">\r\n用户名：<input type=\'text\' id=\"username\"  name=\"username\" size=\"16\"/><br>\r\n密  码：<input type=\'password\' id=\"password\"  name=\"password\" size=\"17\"/><br>\r\n验证码：<input type=\'text\' id=\"verify\"  name=\"verify\" size=\"4\"/>\r\n{verify()}<br>\r\n有效期: <select name=\"expire\">\r\n<option value=\"<?php echo 3600; ?>\">一小时</option>\r\n<option value=\"<?php echo 3600*24; ?>\">一天</option>\r\n<option value=\"<?php echo 3600*24*7; ?>\">一星期</option>\r\n<option value=\"<?php echo 3600*24*30; ?>\">一个月</option>\r\n<option value=\"<?php echo 3600*24*365; ?>\">一年</option>\r\n</select><br>\r\n<input type=\'submit\' name=\"submit\" value=\"登陆\" style=\"margin-left:30px\"/>\r\n<input type=\'button\' name=\"register\" value=\"注册\" onclick=\"javascript:location.href=\'{url(\'user/register\')}\'\"  style=\"margin-left:10px\">\r\n</form>\r\n{/if}','','一般用JS调用','system','');
INSERT INTO cmseasy_templatetag VALUES('11','ICP备案号','','','{get(\'site_icp\')}','','','define','');
INSERT INTO cmseasy_templatetag VALUES('12','首页关键词','','','{get(\'site_keyword\')}','','','define','');
INSERT INTO cmseasy_templatetag VALUES('13','首页网页描述','','','{get(\'site_description\')}','','','define','');
INSERT INTO cmseasy_templatetag VALUES('14','版权所有','','','{get(\'site_right\')}','','','define','');
INSERT INTO cmseasy_templatetag VALUES('15','调用模板','all','','template($tpl)','','在当前模板中调用其他模板。变量值基于模板根目录。\r\n\r\n例子：\r\n\r\n{template(\'mypage/about.html\')}','function','');
INSERT INTO cmseasy_templatetag VALUES('16','公司简介','','','CmsEasy是一款基于 PHP+Mysql 架构的网站内容管理系统，也是一个 PHP 开发平台。 采用模块化方式开发，功能易用便于扩展，可面向大中型站点提供重量级网站建设解决方案。2年来，凭借 团队长期积累的丰富的Web开发及数据库经验和勇于创新追求完美的设计理念，使得 CmsEasy v1.0 得到了众多网站的认可，并且越来越多地被应用到大中型商业网站。','','','define','');
INSERT INTO cmseasy_templatetag VALUES('17','公告列表','announ','','{loop announ($num) $an}\r\n <a href=\"{$an[url]}\"> {$an[title]} </a> ({$an[adddate]}) \r\n{/loop}','','','system','');

INSERT INTO `cmseasy_type` VALUES ('1', '0', '高端商品', '', '0', '', '', '', '', '', 'gaoduan', 'type/list_pic.html', 'type/list_pic.html', '', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `cmseasy_type` VALUES ('2', '0', '促销商品', '', '0', '', '', '', '', '', 'cuxiao', 'type/list_pic.html', 'type/list_pic.html', '', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0');

INSERT INTO cmseasy_user VALUES('1','admin','21232f297a57a5a743894a0e4a801fc3','管理员','2','1','','','','','0','0','','','','','','','0','0');

INSERT INTO `cmseasy_usergroup` (`groupid`, `name`, `discount`, `powerlist`,`fpwlist`) VALUES (2, '管理员', 0.0, 'a:174:{s:6:"config";s:1:"1";s:10:"sitesystem";s:1:"1";s:6:"system";s:1:"1";s:8:"language";s:1:"1";s:15:"setting_archive";s:1:"1";s:3:"sms";s:1:"1";s:7:"website";s:1:"1";s:12:"website_list";s:1:"1";s:11:"website_add";s:1:"1";s:12:"website_edit";s:1:"1";s:11:"website_del";s:1:"1";s:7:"content";s:1:"1";s:8:"category";s:1:"1";s:13:"category_list";s:1:"1";s:12:"category_add";s:1:"1";s:13:"category_edit";s:1:"1";s:12:"category_del";s:1:"1";s:17:"category_htmlrule";s:1:"1";s:7:"archive";s:1:"1";s:12:"archive_list";s:1:"1";s:11:"archive_add";s:1:"1";s:12:"archive_edit";s:1:"1";s:11:"archive_del";s:1:"1";s:13:"archive_check";s:1:"1";s:15:"archive_setting";s:1:"1";s:17:"archive_hotsearch";s:1:"1";s:13:"archive_image";s:1:"1";s:5:"mtype";s:1:"1";s:9:"type_list";s:1:"1";s:8:"type_add";s:1:"1";s:9:"type_edit";s:1:"1";s:8:"type_del";s:1:"1";s:7:"special";s:1:"1";s:12:"special_list";s:1:"1";s:11:"special_add";s:1:"1";s:12:"special_edit";s:1:"1";s:11:"special_del";s:1:"1";s:4:"user";s:1:"1";s:11:"user_manage";s:1:"1";s:9:"user_list";s:1:"1";s:8:"user_add";s:1:"1";s:9:"user_edit";s:1:"1";s:8:"user_del";s:1:"1";s:11:"user_ologin";s:1:"1";s:10:"user_group";s:1:"1";s:14:"usergroup_list";s:1:"1";s:13:"usergroup_add";s:1:"1";s:14:"usergroup_edit";s:1:"1";s:13:"usergroup_del";s:1:"1";s:10:"user_union";s:1:"1";s:10:"union_user";s:1:"1";s:9:"union_pay";s:1:"1";s:11:"union_visit";s:1:"1";s:13:"union_reguser";s:1:"1";s:12:"union_config";s:1:"1";s:5:"cache";s:1:"1";s:12:"cache_manage";s:1:"1";s:13:"cache_content";s:1:"1";s:14:"cache_category";s:1:"1";s:11:"cache_index";s:1:"1";s:10:"cache_type";s:1:"1";s:13:"cache_special";s:1:"1";s:10:"cache_area";s:1:"1";s:9:"cache_tag";s:1:"1";s:11:"cache_baidu";s:1:"1";s:12:"cache_google";s:1:"1";s:12:"cache_update";s:1:"1";s:5:"order";s:1:"1";s:12:"order_manage";s:1:"1";s:10:"order_list";s:1:"1";s:9:"order_del";s:1:"1";s:10:"order_edit";s:1:"1";s:9:"order_pay";s:1:"1";s:15:"order_logistics";s:1:"1";s:4:"func";s:1:"1";s:12:"func_announc";s:1:"1";s:17:"func_announc_list";s:1:"1";s:16:"func_announc_add";s:1:"1";s:17:"func_announc_edit";s:1:"1";s:16:"func_announc_del";s:1:"1";s:9:"func_book";s:1:"1";s:14:"func_book_list";s:1:"1";s:15:"func_book_reply";s:1:"1";s:13:"func_book_del";s:1:"1";s:16:"func_book_pllist";s:1:"1";s:16:"func_book_pledit";s:1:"1";s:15:"func_book_pldel";s:1:"1";s:11:"func_ballot";s:1:"1";s:16:"func_ballot_list";s:1:"1";s:15:"func_ballot_add";s:1:"1";s:16:"func_ballot_edit";s:1:"1";s:15:"func_ballot_del";s:1:"1";s:9:"func_data";s:1:"1";s:15:"func_data_baker";s:1:"1";s:17:"func_data_restore";s:1:"1";s:16:"func_data_phpweb";s:1:"1";s:17:"func_data_replace";s:1:"1";s:19:"func_data_adminlogs";s:1:"1";s:14:"func_data_safe";s:1:"1";s:8:"template";s:1:"1";s:15:"template_manage";s:1:"1";s:12:"template_set";s:1:"1";s:13:"template_note";s:1:"1";s:13:"template_edit";s:1:"1";s:15:"templatetag_add";s:1:"1";s:23:"templatetag_add_content";s:1:"1";s:24:"templatetag_add_category";s:1:"1";s:22:"templatetag_add_define";s:1:"1";s:16:"templatetag_list";s:1:"1";s:25:"templatetag_list_function";s:1:"1";s:23:"templatetag_list_system";s:1:"1";s:24:"templatetag_list_content";s:1:"1";s:25:"templatetag_list_category";s:1:"1";s:23:"templatetag_list_define";s:1:"1";s:3:"seo";s:1:"1";s:10:"seo_status";s:1:"1";s:17:"seo_status_spider";s:1:"1";s:15:"seo_status_cnzz";s:1:"1";s:12:"seo_linkword";s:1:"1";s:17:"seo_linkword_list";s:1:"1";s:16:"seo_linkword_add";s:1:"1";s:17:"seo_linkword_edit";s:1:"1";s:16:"seo_linkword_del";s:1:"1";s:14:"seo_friendlink";s:1:"1";s:19:"seo_friendlink_list";s:1:"1";s:18:"seo_friendlink_add";s:1:"1";s:19:"seo_friendlink_edit";s:1:"1";s:18:"seo_friendlink_del";s:1:"1";s:22:"seo_friendlink_setting";s:1:"1";s:8:"seo_mail";s:1:"1";s:17:"seo_mail_usersend";s:1:"1";s:13:"seo_mail_send";s:1:"1";s:21:"seo_mail_subscription";s:1:"1";s:7:"defined";s:1:"1";s:13:"defined_field";s:1:"1";s:21:"defined_field_content";s:1:"1";s:25:"defined_field_content_add";s:1:"1";s:26:"defined_field_content_edit";s:1:"1";s:25:"defined_field_content_del";s:1:"1";s:18:"defined_field_user";s:1:"1";s:22:"defined_field_user_add";s:1:"1";s:23:"defined_field_user_edit";s:1:"1";s:22:"defined_field_user_del";s:1:"1";s:12:"defined_form";s:1:"1";s:17:"defined_form_list";s:1:"1";s:16:"defined_form_add";s:1:"1";s:17:"defined_form_edit";s:1:"1";s:16:"defined_form_del";s:1:"1";s:6:"celive";s:1:"1";s:13:"celive_system";s:1:"1";s:14:"celive_enlarge";s:1:"1";s:17:"celive_systeminfo";s:1:"1";s:18:"celive_departments";s:1:"1";s:16:"celive_operators";s:1:"1";s:14:"celive_assigns";s:1:"1";s:13:"celive_center";s:1:"1";s:14:"celive_monitor";s:1:"1";s:15:"celive_chatlist";s:1:"1";s:11:"celive_book";s:1:"1";s:11:"celive_user";s:1:"1";s:11:"celive_edit";s:1:"1";s:11:"celive_code";s:1:"1";s:3:"bbs";s:1:"1";s:12:"bbs_category";s:1:"1";s:17:"bbs_category_list";s:13:"category_list";s:16:"bbs_category_add";s:12:"category_add";s:17:"bbs_category_edit";s:13:"category_edit";s:16:"bbs_category_del";s:12:"category_del";s:11:"bbs_archive";s:1:"1";s:16:"bbs_archive_list";s:1:"1";s:16:"bbs_archive_edit";s:1:"1";s:15:"bbs_archive_del";s:1:"1";s:17:"bbs_archive_check";s:1:"1";s:18:"bbs_archive_batdel";s:1:"1";}','');
INSERT INTO `cmseasy_usergroup` (`groupid`, `name`, `discount`, `powerlist`,`fpwlist`) VALUES (1, '一般会员', 0.0, NULL,'');
INSERT INTO `cmseasy_usergroup` (`groupid`, `name`, `discount`, `powerlist`,`fpwlist`) VALUES (1000, '游客', 0.0, NULL,'');
INSERT INTO `cmseasy_usergroup` (`groupid`, `name`, `discount`, `powerlist`,`fpwlist`) VALUES (3, '文章管理员', 0.0, 'a:174:{s:6:"config";s:1:"1";s:10:"sitesystem";s:1:"1";s:6:"system";s:1:"1";s:8:"language";s:1:"1";s:15:"setting_archive";s:1:"1";s:3:"sms";s:1:"1";s:7:"website";s:1:"1";s:12:"website_list";s:1:"1";s:11:"website_add";s:1:"1";s:12:"website_edit";s:1:"1";s:11:"website_del";s:1:"1";s:7:"content";s:1:"1";s:8:"category";s:1:"1";s:13:"category_list";s:1:"1";s:12:"category_add";s:1:"1";s:13:"category_edit";s:1:"1";s:12:"category_del";s:1:"1";s:17:"category_htmlrule";s:1:"1";s:7:"archive";s:1:"1";s:12:"archive_list";s:1:"1";s:11:"archive_add";s:1:"1";s:12:"archive_edit";s:1:"1";s:11:"archive_del";s:1:"1";s:13:"archive_check";s:1:"1";s:15:"archive_setting";s:1:"1";s:17:"archive_hotsearch";s:1:"1";s:13:"archive_image";s:1:"1";s:5:"mtype";s:1:"1";s:9:"type_list";s:1:"1";s:8:"type_add";s:1:"1";s:9:"type_edit";s:1:"1";s:8:"type_del";s:1:"1";s:7:"special";s:1:"1";s:12:"special_list";s:1:"1";s:11:"special_add";s:1:"1";s:12:"special_edit";s:1:"1";s:11:"special_del";s:1:"1";s:4:"user";s:1:"1";s:11:"user_manage";s:1:"1";s:9:"user_list";s:1:"1";s:8:"user_add";s:1:"1";s:9:"user_edit";s:1:"1";s:8:"user_del";s:1:"1";s:11:"user_ologin";s:1:"1";s:10:"user_group";s:1:"1";s:14:"usergroup_list";s:1:"1";s:13:"usergroup_add";s:1:"1";s:14:"usergroup_edit";s:1:"1";s:13:"usergroup_del";s:1:"1";s:10:"user_union";s:1:"1";s:10:"union_user";s:1:"1";s:9:"union_pay";s:1:"1";s:11:"union_visit";s:1:"1";s:13:"union_reguser";s:1:"1";s:12:"union_config";s:1:"1";s:5:"cache";s:1:"1";s:12:"cache_manage";s:1:"1";s:13:"cache_content";s:1:"1";s:14:"cache_category";s:1:"1";s:11:"cache_index";s:1:"1";s:10:"cache_type";s:1:"1";s:13:"cache_special";s:1:"1";s:10:"cache_area";s:1:"1";s:9:"cache_tag";s:1:"1";s:11:"cache_baidu";s:1:"1";s:12:"cache_google";s:1:"1";s:12:"cache_update";s:1:"1";s:5:"order";s:1:"1";s:12:"order_manage";s:1:"1";s:10:"order_list";s:1:"1";s:9:"order_del";s:1:"1";s:10:"order_edit";s:1:"1";s:9:"order_pay";s:1:"1";s:15:"order_logistics";s:1:"1";s:4:"func";s:1:"1";s:12:"func_announc";s:1:"1";s:17:"func_announc_list";s:1:"1";s:16:"func_announc_add";s:1:"1";s:17:"func_announc_edit";s:1:"1";s:16:"func_announc_del";s:1:"1";s:9:"func_book";s:1:"1";s:14:"func_book_list";s:1:"1";s:15:"func_book_reply";s:1:"1";s:13:"func_book_del";s:1:"1";s:16:"func_book_pllist";s:1:"1";s:16:"func_book_pledit";s:1:"1";s:15:"func_book_pldel";s:1:"1";s:11:"func_ballot";s:1:"1";s:16:"func_ballot_list";s:1:"1";s:15:"func_ballot_add";s:1:"1";s:16:"func_ballot_edit";s:1:"1";s:15:"func_ballot_del";s:1:"1";s:9:"func_data";s:1:"1";s:15:"func_data_baker";s:1:"1";s:17:"func_data_restore";s:1:"1";s:16:"func_data_phpweb";s:1:"1";s:17:"func_data_replace";s:1:"1";s:19:"func_data_adminlogs";s:1:"1";s:14:"func_data_safe";s:1:"1";s:8:"template";s:1:"1";s:15:"template_manage";s:1:"1";s:12:"template_set";s:1:"1";s:13:"template_note";s:1:"1";s:13:"template_edit";s:1:"1";s:15:"templatetag_add";s:1:"1";s:23:"templatetag_add_content";s:1:"1";s:24:"templatetag_add_category";s:1:"1";s:22:"templatetag_add_define";s:1:"1";s:16:"templatetag_list";s:1:"1";s:25:"templatetag_list_function";s:1:"1";s:23:"templatetag_list_system";s:1:"1";s:24:"templatetag_list_content";s:1:"1";s:25:"templatetag_list_category";s:1:"1";s:23:"templatetag_list_define";s:1:"1";s:3:"seo";s:1:"1";s:10:"seo_status";s:1:"1";s:17:"seo_status_spider";s:1:"1";s:15:"seo_status_cnzz";s:1:"1";s:12:"seo_linkword";s:1:"1";s:17:"seo_linkword_list";s:1:"1";s:16:"seo_linkword_add";s:1:"1";s:17:"seo_linkword_edit";s:1:"1";s:16:"seo_linkword_del";s:1:"1";s:14:"seo_friendlink";s:1:"1";s:19:"seo_friendlink_list";s:1:"1";s:18:"seo_friendlink_add";s:1:"1";s:19:"seo_friendlink_edit";s:1:"1";s:18:"seo_friendlink_del";s:1:"1";s:22:"seo_friendlink_setting";s:1:"1";s:8:"seo_mail";s:1:"1";s:17:"seo_mail_usersend";s:1:"1";s:13:"seo_mail_send";s:1:"1";s:21:"seo_mail_subscription";s:1:"1";s:7:"defined";s:1:"1";s:13:"defined_field";s:1:"1";s:21:"defined_field_content";s:1:"1";s:25:"defined_field_content_add";s:1:"1";s:26:"defined_field_content_edit";s:1:"1";s:25:"defined_field_content_del";s:1:"1";s:18:"defined_field_user";s:1:"1";s:22:"defined_field_user_add";s:1:"1";s:23:"defined_field_user_edit";s:1:"1";s:22:"defined_field_user_del";s:1:"1";s:12:"defined_form";s:1:"1";s:17:"defined_form_list";s:1:"1";s:16:"defined_form_add";s:1:"1";s:17:"defined_form_edit";s:1:"1";s:16:"defined_form_del";s:1:"1";s:6:"celive";s:1:"1";s:13:"celive_system";s:1:"1";s:14:"celive_enlarge";s:1:"1";s:17:"celive_systeminfo";s:1:"1";s:18:"celive_departments";s:1:"1";s:16:"celive_operators";s:1:"1";s:14:"celive_assigns";s:1:"1";s:13:"celive_center";s:1:"1";s:14:"celive_monitor";s:1:"1";s:15:"celive_chatlist";s:1:"1";s:11:"celive_book";s:1:"1";s:11:"celive_user";s:1:"1";s:11:"celive_edit";s:1:"1";s:11:"celive_code";s:1:"1";s:3:"bbs";s:1:"1";s:12:"bbs_category";s:1:"1";s:17:"bbs_category_list";s:13:"category_list";s:16:"bbs_category_add";s:12:"category_add";s:17:"bbs_category_edit";s:13:"category_edit";s:16:"bbs_category_del";s:12:"category_del";s:11:"bbs_archive";s:1:"1";s:16:"bbs_archive_list";s:1:"1";s:16:"bbs_archive_edit";s:1:"1";s:15:"bbs_archive_del";s:1:"1";s:17:"bbs_archive_check";s:1:"1";s:18:"bbs_archive_batdel";s:1:"1";}','');

INSERT INTO `cmseasy_bbs_reply` VALUES (1, 1, 0, 0, '', 0, '<p>第一条回复！</p>', 1324031541, 0, 0, '127.0.0.1');
INSERT INTO `cmseasy_bbs_reply` VALUES (2, 1, 0, 1, '', 0, '第二条回复', 1324031609, 0, 0, '127.0.0.1');

INSERT INTO `cmseasy_bbs_archive` VALUES (1, 1, 1, 0, 1, 'admin', '这里是论坛的第一篇帖子', '<p>这里是论坛的第一篇帖子</p>', '', 2, 0, 4, 1324031521, 0, 0, 0, 0, 0, '127.0.0.1');