<?php

namespace App\Controllers;

class Inicio extends BaseController
{
    public function index(): string
    {   
        $auth = service('auth');
        // Obtiene el usuario autenticado
        $user = $auth->user(); 
        
        $data = [
            'email' => $user->email,
            'username' => $user->username,
            'isAdmin' => $user->inGroup('administradores'),
            'isDigitador' => $user->inGroup('digitadores'),
        ];

        return 
        view('template/header', $data)
            . view('pages/inicio')
            . view('template/footer', $data);
    }
}
