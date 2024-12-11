<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Centro_TrabajoController extends BaseController
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
        return view('template/header')
               .view('pages/salida_datos', (array)$output)
               .view('template/footer');
    }


}
