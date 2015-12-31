<?php

function connect_to_db()
{
	require_once ( (dirname(__FILE__)) . '/php-activerecord/ActiveRecord.php');
	
	$connections=array(
	'development' => 'mysql://yiv-vial-:~6Xq45ru@apochroma.ch/debitorenbuchhaltung?charset=utf8');
	#'production' => '');
	
	ActiveRecord\Config::initialize(function($cfg) use ($connections)
	{
		$cfg->set_model_directory( (dirname(__FILE__)) . '/models');
		$cfg->set_connections($connections);
		$cfg->set_default_connection('development');
		#$cfg->set_default_connection('production');
	});
}
?>