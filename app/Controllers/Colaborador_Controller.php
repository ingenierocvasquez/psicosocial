<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Colaborador_Controller extends BaseController
{

    //Datos Socidemograficos
    public function crud_colaborador()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('colaborador');

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

	    $output = $crud->render();
		return $this->_dataOutput($output);
	}
    
	
    private function _dataOutput($output = null) {
        return view('template/header')
               .view('pages/salida_datos', (array)$output)
               .view('template/footer');
    }


}
