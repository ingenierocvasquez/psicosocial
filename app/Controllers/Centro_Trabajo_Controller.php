<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Centro_Trabajo_Controller extends BaseController
{

    //Datos Centro de Trabajo
    public function crud_centro_trabajo()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('centro_trabajo');
        $crud->displayAs('creado_por', 'Registro Digitado Por');
        $crud->fieldType('creado_por', 'hidden');

        $crud->setSubject('Centros de Trabajo', 'Registro de Centro de Trabajo');

        $crud->unsetDelete();
        $crud->requiredFields([
            'id', 'nombre', 'nit'
        ]);

         //Callback
         $crud->callbackBeforeInsert(function ($stateParameters) {
            // Obtén el ID del usuario desde la sesión activa usando Shield o el método de tu preferencia
            $user = \CodeIgniter\Config\Services::auth()->user();  // Esto depende de cómo tengas configurado Shield
        
            // Verifica si el usuario está autenticado y si tiene un ID válido
            if ($user && isset($user->id)) {
                $data = $stateParameters->data;  // Accede directamente a los datos de la inserción
        
                // Añade el ID del usuario al campo 'creado_por'
                $data['creado_por'] = $user->id;
        
                // Actualiza los datos para la inserción
                $stateParameters->data = $data;  // Modifica los datos de la inserción
            } else {
                // Si el usuario no está autenticado, lanza un error o realiza alguna acción
                throw new \Exception('No se pudo obtener el ID del usuario activo.');
            }
        
            return $stateParameters;
        });

	    $output = $crud->render();
		return $this->_dataOutput($output);
	}    
	
    private function _dataOutput($output = null) {

        $auth = service('auth');
        $user = $auth->user(); // Obtiene el usuario autenticado

        $data = [
            'email' => $user->email,
            'username' => $user->username,
            'isAdmin' => $user->inGroup('administradores'),
            'isDigitador' => $user->inGroup('digitadores'),
        ];

        return view('template/header', $data)
               .view('pages/salida_datos', (array)$output)
               .view('template/footer', $data);
    }


}
