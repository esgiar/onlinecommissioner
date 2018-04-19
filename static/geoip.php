<?php
$ip = $_SERVER['REMOTE_ADDR'];
$key = '61dfa96e17af28d5a1222fb101c4a501';
$url = "http://api.ipstack.com/${ip}?access_key=${key}";
$json = file_get_contents($url);
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
echo $json;
