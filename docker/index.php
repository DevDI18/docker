<?php

 $dbh = new PDO('mysql:host=db;dbname=mysql', 'your_user', 'your_user_password');
 
 foreach($dbh->query('SHOW DATABASES') as $row) {
   echo $row[0]. '<br/>';
 }
 
 echo 'test'; 
