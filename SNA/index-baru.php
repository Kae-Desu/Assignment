<?php

    $db['db_host'] = 'db';
    $db['db_user'] = 'marvel';
    $db['db_pass'] = '128chars';
    $db['db_name'] = 'Redlock';

    foreach($db as $key => $value){
        define(strtoupper($key),$value);
    }

    $connect = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

?>    

<!DOCTYPE html>
<head>
    <title>Redlock-web-2.0</title>
</head>
<body>
    <table>
        <headt>
            <tr>
                <th scope='col'>id</th>
                <th scope='col'>name</th>
                <th scope='col'>address</th>
                <th scope='col'>position</th>
            </tr>
        </headt>
        <bodyt>
            <?php
                $query = "SELECT * FROM users";
                $result = $connect->query($query);
                $count = 0;
                while($row = $result->fetch_Assoc()){
                    ?>
                    <tr>
                        <th scope="row"><?= $row['id'] ?></th>
                        <td><?= $row['name'] ?></td>
                        <td><?= $row['address'] ?></td>
                        <td><?= $row['position'] ?></td>
                    </tr>
                    <?php
                    $count = $count + 1;
                }
                echo "<h1>patch redlock 2.1</h1>";
                echo "<p>changelog: add count</p>";
                echo "<h1>Total: {$count}</h1>";
            ?>
        <bodyt>
    </table>
</body>
