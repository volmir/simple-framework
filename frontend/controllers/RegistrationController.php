<?php

namespace frontend\controllers;

use framework\core\Controller;
use framework\core\Auth;
use framework\core\Response;
use framework\core\Request;
use common\models\User;

class RegistrationController extends Controller 
{
    /**
     *
     * @var string 
     */
    public $registrationStatus = '';

    public function indexAction() 
    {
        $this->view->set([
            'title' => 'Registration',
        ]);
        
        if (isset($this->request->post['submit'])) {
            $params = [
                'login' => $this->request->post['login'],
                'password' => $this->request->post['password'],
                'email' => $this->request->post['email'],
                'firstname' => $this->request->post['firstname'],
                'lastname' => $this->request->post['lastname'],
            ];  

            $user = new User();
            if ($user->add($params)) {
                $url = '/registration/?status=success';
                Response::redirect($url);
            }
        } 
        
        $this->assets->addJs('https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js');
        
        $this->view->render('index');
    }

}
