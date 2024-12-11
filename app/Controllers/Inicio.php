<?php

namespace App\Controllers;

class Inicio extends BaseController
{
    public function index(): string
    {   
        $auth = service('auth');
        $user = $auth->user(); // Obtiene el usuario autenticado

        $data = [
            'email' => $user->email,
            'isAdmin' => $user->inGroup('administradores'),
            'isDigitador' => $user->inGroup('digitadores'),
        ];

        return 
        view('template/header', $data)
            . view('pages/inicio')
            . view('template/footer');
    }
}
