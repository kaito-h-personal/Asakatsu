<?php

$data = [
    'number' => 1,
    'name'   => '山田'
];

Redis::command('SET', [$data['number'],json_encode($data)]);

phpinfo();
