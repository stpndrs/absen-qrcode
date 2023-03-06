<?php
require "koneksi.php";
session_start();
// remove all session variables
session_unset();

// destroy the session
session_destroy();
if (!isset($_SESSION['username'])) {
    header('Location: login.php');
}