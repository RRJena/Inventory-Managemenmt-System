
<?php
$mysql_servername = "localhost";
$mysql_username = "root";
$mysql_password = "mysql";
$mysql_machine_dbname = "machine";
$mysql_ims_dbname = "shop_inventory";
$mysql_tms_dbname = "tms_db";
$mysql_tms_update_dbname = "tms_update";
$mysql_port = "3306";

//PGSQL CREDENTIAL
$pgsql_host        = "host=127.0.0.1";
$pgsql_port        = "port=5432";
$pgsql_user_dbname      = "dbname = USER";
$pgsql_credentials = "user = postgres password=KOKI@1234";
	// Root url for the site
	define('ROOT_URL', 'http://localhost/module/ims');

	// Database parameters
	// Data source name
	define('DSN', 'mysql:host='.$mysql_servername.";dbname=".$mysql_ims_dbname);
	//echo DSN;
	// Hostname
	define('DB_HOST', $mysql_servername);
	
	// DB user
	define('DB_USER', $mysql_username);
	
	// DB password
	define('DB_PASSWORD', $mysql_password);
	
	// DB name
	define('DB_NAME', $mysql_ims_dbname);
?>