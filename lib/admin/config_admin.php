<?php
        		foreach (front::$post as $key=>$value) {
        						alerterror('有非法字符');
        					}
        		}
            if(empty($sets)){
            	$a = $set->rec_insert(array('value'=>serialize($var),'tag'=>'table-hottag','array'=>mysql_escape_string(var_export($var,true))));
            }else{