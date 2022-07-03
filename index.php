<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);
session_start();
$_SESSION['dil'] = "1";
require_once "init.php";
$system = new system();


