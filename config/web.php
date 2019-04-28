<?php

$params = require(__DIR__ . '/params.php');

$config = [
    'id'         => 'basic',
    'basePath'   => dirname(__DIR__),
    'bootstrap'  => ['log'],
    'components' => [
        'request'      => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'xlh_basic_oauth',
            'parsers'             => [
                'application/json' => 'yii\web\JsonParser', //为了能够接收json格式的数据
            ]
        ],
        'response'     => [
            'class'         => 'yii\web\Response',
//            'formatters'    => [
//                \yii\web\Response::FORMAT_JSON => [
//                    'class'         => 'yii\web\JsonResponseFormatter',
//                ],
//            ],
            'on beforeSend' => function (\yii\base\Event $event)
            {
                $response = $event->sender;
                if ($response->statusCode == 200)
                {
                    $response->data = [
                        'success' => $response->isSuccessful,
                        'code'    => $response->statusCode,
                        'data'    => $response->data,
                        'message' => $response->statusText
                    ];
                } else
                {
                    $exception = Yii::$app->getErrorHandler()->exception;
                    $response->data = [
                        'success' => $response->isSuccessful,
                        'code'    => $response->statusCode,
                        'data'    => [
                            'name'         => ($exception instanceof Exception || $exception instanceof ErrorException) ? $exception->getName() : 'Exception',
                            'file'         => $exception->getFile(),
                            'errorMessage' => $exception->getMessage(),
                            'line'         => $exception->getLine(),
                            'type'         => get_class($exception)
                        ],
                        'message' => $response->statusText
                    ];
                }
                $response->format = yii\web\Response::FORMAT_JSON;
//                $response->statusCode = 200;
//                $response->format = \yii\web\Response::FORMAT_JSON;
            }
        ],
        'urlManager'   => [
            'class'               => 'yii\web\UrlManager',
            'enablePrettyUrl'     => true,
            'enableStrictParsing' => false,
            'showScriptName'      => false,
            'rules'               => [
                'POST oauth2/<action:\w+>' => 'oauth2/rest/<action>',
            ],
        ],
        'cache'        => [
            'class' => 'yii\caching\FileCache',
        ],
        'user'         => [
            'identityClass'   => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
//            'class'       => 'app\components\ExceptionHandler' //（这里配置我们自己写的异常处理方法）
        ],
        'mailer'       => [
            'class'            => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log'          => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets'    => [
                [
                    'class'  => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db'           => require(__DIR__ . '/db.php'),
    ],
    'params'     => $params,
    'modules'    => [
        //other modules .....
        'oauth2' => [
            'class'               => 'filsh\yii2\oauth2server\Module',
            'tokenParamName'      => 'accessToken',
            'tokenAccessLifetime' => 30,
            'storageMap'          => [
                'user_credentials' => 'app\models\User',
            ],
            'grantTypes'          => [
                'user_credentials' => [
                    'class' => 'OAuth2\GrantType\UserCredentials',
                ],
                'refresh_token'    => [
                    'class'                          => 'OAuth2\GrantType\RefreshToken',
                    'always_issue_new_refresh_token' => true
                ]
            ]
        ]
    ],
];

if (YII_ENV_DEV)
{
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
    ];
}

return $config;
