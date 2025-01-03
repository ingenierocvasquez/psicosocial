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

       

        //$crud->unsetDelete();
        $crud->requiredFields([
            'id', 'nombre', 'nit'
        ]);

        //Relaciones
        //var_dump($crud->getState());

        if ($crud->getState() === 'list' || $crud->getState() === 'success' || $crud->getState() === 'ajax_list' ) {            
            $crud->setRelation('creado_por', 'users', 'username');
             } 
        
        
         //Callback
         $crud->callbackBeforeInsert(function ($stateParameters) {
            // Primera operación: Convertir 'nombre' a mayúsculas
            if (!empty($stateParameters->data['nombre'])) {
                $stateParameters->data['nombre'] = strtoupper($stateParameters->data['nombre']);
            }
        
            // Segunda operación: Agregar el ID del usuario actual
            $authService = \CodeIgniter\Config\Services::auth(); // Usando Shield como ejemplo
            if ($authService && $authService->user()) {
                $user = $authService->user();
                if (isset($user->id)) {
                    $stateParameters->data['creado_por'] = $user->id;
                } else {
                    throw new \Exception('El ID del usuario no está definido.');
                }
            } else {
                throw new \Exception('No se pudo autenticar al usuario.');
            }
        
            // Retornar los datos actualizados
            return $stateParameters;
        });        

        $crud->callbackBeforeUpdate(function ($convertir_mayusculas_nombre) {
            // Convertir 'nombre' a mayúsculas, si existe en los datos
            if (!empty($convertir_mayusculas_nombre->data['nombre'])) {
                $convertir_mayusculas_nombre->data['nombre'] = strtoupper($convertir_mayusculas_nombre->data['nombre']);
            }
        
            return $convertir_mayusculas_nombre;
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
