<?php
if(is_file(dirname(__FILE__).'/webscan360/360safe/360webscan.php')){
   require_once(dirname(__FILE__).'/webscan360/360safe/360webscan.php');
}
/**
 * cmseasy: index.php
 * ============================================================================
 * 版权所有 2015 cmseasy，并保留所有权利。
 * -------------------------------------------------------
 * 这不是一个自由软件！也不是一个开源软件！您不能在任何目的的前提下对程序代码进行破解、修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * 您可以免费应用与商业网站，但需要保留软件版权及版权链接。
 * ============================================================================
 *
 * @version:    v5.5 r20150121
 * ---------------------------------------------
 * $Id: index.php 2014/01/21
 */

header("Pragma:no-cache\r\n");
header("Cache-Control:no-cache\r\n");
header("Expires:0\r\n");

header("Content-Type: text/html; charset=utf-8");
header('Cache-control: private, must-revalidate'); //支持页面回跳
date_default_timezone_set('Etc/GMT-8');
$_GET['site']='default';
error_reporting(0);
class time {
    static $start;

    static function start() {
        self::$start=self::getMicrotime();
    }

    static function getMicrotime() {
        list($usec, $sec) = explode(" ", microtime());
        return ((float)$usec + (float)$sec);
    }

    static function getTime($length=6) {
        return round(self::getMicrotime()-self::$start, $length);
    }
}

function is_mobile() {
	if(!config::get('mobile_open')){
		return false;
	}
	$user_agent = $_SERVER['HTTP_USER_AGENT'];
	$mobile_agents = Array("240x320","acer","acoon","acs-","abacho","ahong","airness","alcatel","amoi","android","anywhereyougo.com","applewebkit/525","applewebkit/532","asus","audio","au-mic","avantogo","becker","benq","bilbo","bird","blackberry","blazer","bleu","cdm-","compal","coolpad","danger","dbtel","dopod","elaine","eric","etouch","fly ","fly_","fly-","go.web","goodaccess","gradiente","grundig","haier","hedy","hitachi","htc","huawei","hutchison","inno","ipad","ipaq","ipod","jbrowser","kddi","kgt","kwc","lenovo","lg ","lg2","lg3","lg4","lg5","lg7","lg8","lg9","lg-","lge-","lge9","longcos","maemo","mercator","meridian","micromax","midp","mini","mitsu","mmm","mmp","mobi","mot-","moto","nec-","netfront","newgen","nexian","nf-browser","nintendo","nitro","nokia","nook","novarra","obigo","palm","panasonic","pantech","philips","phone","pg-","playstation","pocket","pt-","qc-","qtek","rover","sagem","sama","samu","sanyo","samsung","sch-","scooter","sec-","sendo","sgh-","sharp","siemens","sie-","softbank","sony","spice","sprint","spv","symbian","talkabout","tcl-","teleca","telit","tianyu","tim-","toshiba","tsm","up.browser","utec","utstar","verykool","virgin","vk-","voda","voxtel","vx","wap","wellco","wig browser","wii","windows ce","wireless","xda","xde","zte");
	$is_mobile = false;
	foreach ($mobile_agents as $device) {
		if (stristr($user_agent, $device)) {
			$is_mobile = true;
			break;
		}
	}
	return $is_mobile;
}

time::start();

define('ROOT',dirname(__FILE__));
define('TEMPLATE',dirname(__FILE__).'/template');

if(!defined('THIS_URL')) define('THIS_URL','');

set_include_path(ROOT.'/lib/default'.PATH_SEPARATOR.ROOT.'/lib/plugins'.PATH_SEPARATOR.ROOT.'/lib/tool'.PATH_SEPARATOR.ROOT.'/lib/table'.PATH_SEPARATOR.ROOT.'/lib/inc');
include_once 'front_class.php';
include_once 'userfunction.php';

$debug=config::get('isdebug');//1提示错误，0禁止

if($debug || isset($_GET['isdebug'])){
	ini_set("display_errors","On");
    error_reporting(E_ALL & ~(E_NOTICE | E_STRICT | E_DEPRECATED));
}

$front = new front();
$front->dispatch();

stats::getbot();
