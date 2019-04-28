<?php

namespace app\components;

use yii\web\ErrorHandler;

class ExceptionHandler extends ErrorHandler
{

    public function renderException($exception)
    {
        $data = [
            'code' => 500,
            'msg'  => $exception->getMessage(),
            'data' => [
                'file' => $exception->getFile(),
                'line' => $exception->getLine()
            ]
        ];
        echo json_encode($data);
        die;
    }
}