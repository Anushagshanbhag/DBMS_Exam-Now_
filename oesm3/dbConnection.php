<?php
//all the variables defined here are accessible in all the files that include this one

//     new mysqli(host, username, password, dbname, port, socket)
$con = new mysqli('localhost', 'root', '', 'oesm3') or die("Could not connect to mysql" . mysqli_error($con));

?>