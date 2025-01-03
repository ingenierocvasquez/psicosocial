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

        //$crud->unsetDelete();
        $crud->requiredFields([
            'id_colaborador', 'id_centro_trabajo', 'tipo_forma', 'fec_aplica', 'nro_documento', 'nombre_completo', 'sexo', 'año_nacimiento', 
            'estado_civil', 'nivel_estudio', 'ocupacion', 'municipio_residencia', 'departamento_residencia', 'estrato', 'tipo_vivienda', 
            'nro_personas', 'municipio_laboral', 'departamento_laboral', 'años_empresa', 'cargo', 'tipo_cargo', 'años_cargo', 
            'departamento_empresa', 'tipo_contrato', 'horas_trabajo', 'tipo_salario'
        ]);
        
        //Reglas
        $crud->setRule('nro_documento','Numero de Documento del Colaborador','required|is_unique[colaborador.nro_documento]');
        //$crud->where('estado', 'Abierto');

       
        //Relaciones
        $crud->setRelation('id_centro_trabajo', 'centro_trabajo', 'nombre', ['estado' => 'Abierto']);
           
        if ($crud->getState() === 'list' || $crud->getState() === 'success' || $crud->getState() === 'ajax_list' ) {   
            $crud->setRelation('creado_por', 'users', 'username');           
             }    
        
         // Where
         if ($isDigitador):                  
            $crud->where('colaborador.creado_por', $user->id);
            $crud->unsetDelete();
            $crud->unsetEdit();
         endif; 

          

       

           //Callback
           $crud->callbackBeforeInsert(function ($stateParameters) {
            // Primera operación: Convertir 'nombre' a mayúsculas
            if (!empty($stateParameters->data['nombre_completo'])) {
                $stateParameters->data['nombre_completo'] = strtoupper($stateParameters->data['nombre_completo']);
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
            if (!empty($convertir_mayusculas_nombre->data['nombre_completo'])) {
                $convertir_mayusculas_nombre->data['nombre_completo'] = strtoupper($convertir_mayusculas_nombre->data['nombre_completo']);
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
