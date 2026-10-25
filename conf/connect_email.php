<?php
/**
* This file contains settings for mailer connection
*
*
* @package Config
*/
define("ADMIN_EMAIL", "---PUT YOUR EMAIL HERE---");

$this->mail_connection(
	array(
		"type" => "mailgun",
		"api-key" => "---CONTACT KBHFF TO OBTAIN THIS INFORMATION---",
		"domain" => "email.kbhff.dk",
		"region" => "EU",
	)
);

