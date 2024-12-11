<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Centro_Trabajo_Controller extends BaseController
{

    //Datos Centro de Trabajo
    public function crud_centro_trabajo()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('centro_trabajo');

        $crud->setSubject('Centros de Trabajo', 'Registro de Centro de Trabajo');

        $crud->unsetDelete();
        $crud->requiredFields([
            'id', 'nombre', 'nit'
        ]);

	    $output = $crud->render();
		return $this->_dataOutput($output);
	}    
	
    private function _dataOutput($output = null) {

        $auth = service('auth');
        $user = $auth->user(); // Obtiene el usuario autenticado

        $data = [
            'email' => $user->email,
            'isAdmin' => $user->inGroup('administradores'),
            'isDigitador' => $user->inGroup('digitadores'),
        ];

        return view('template/header', $data)
               .view('pages/salida_datos', (array)$output)
               .view('template/footer');
    }


}
