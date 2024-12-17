<?php namespace App\Controllers;


use App\Libraries\GroceryCrud;
use App\Models\ReporteGeneralModel;

class Colaborador_Controller extends BaseController
{

    //Datos Socidemograficos
    public function crud_colaborador()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('colaborador');

        $auth = service('auth');
        $user = $auth->user(); // Obtén el usuario autenticado.
        $isDigitador = $user->inGroup('digitadores');

        $crud->displayAs('creado_por', 'Registro Digitado Por');
        $crud->fieldType('creado_por', 'hidden');

        $crud->setSubject('Fichas de Datos Generales', 'Registro de Ficha de Datos Generales');
        $crud->displayAs('id_centro_trabajo', 'Identificador Centro de Trabajo');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');
        $crud->displayAs('tipo_forma', 'Tipo de Formulario');

        $crud->unsetDelete();
        $crud->requiredFields([
            'id_colaborador', 'id_centro_trabajo', 'tipo_forma', 'fec_aplica', 'nro_documento', 'nombre_completo', 'sexo', 'año_nacimiento', 
            'estado_civil', 'nivel_estudio', 'ocupacion', 'municipio_residencia', 'departamento_residencia', 'estrato', 'tipo_vivienda', 
            'nro_personas', 'municipio_laboral', 'departamento_laboral', 'años_empresa', 'cargo', 'tipo_cargo', 'años_cargo', 
            'departamento_empresa', 'tipo_contrato', 'horas_trabajo', 'tipo_salario'
        ]);

        //Relaciones
        $crud->setRelation('id_centro_trabajo', 'centro_trabajo', '{id} - {nombre}');

         // Where
         if ($isDigitador):                  
            $crud->where('colaborador.creado_por', $user->id);
            $crud->unsetDelete();
            $crud->unsetEdit();
         endif; 

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
