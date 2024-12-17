<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Pruebas_Extralaboral_FA_FB_Controller extends BaseController
{
    public function crud_forma_extra_ab()
	{

        $auth = service('auth');
        $user = $auth->user(); // Obtén el usuario autenticado.
        $isDigitador = $user->inGroup('digitadores');

	    $crud = new GroceryCrud();
	    $crud->setTable('forma_extra_fa_fb');         
         
        $crud->setSubject('Registro Extralaboral Forma A-B', 'Formulario Extralaboral Forma A-B');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');

        
        $crud->displayAs('creado_por', 'Registro Digitado Por');
        $crud->fieldType('creado_por', 'hidden');
      
        

$crud->displayAs('pregunta_1', '1. Es fácil transportarme entre mi casa y el trabajo');
$crud->displayAs('pregunta_2', '2. Tengo que tomar varios medios de transporte para llegar a mi lugar de trabajo');
$crud->displayAs('pregunta_3', '3. Paso mucho tiempo viajando de ida y regreso al trabajo');
$crud->displayAs('pregunta_4', '4. Me transporto cómodamente entre mi casa y el trabajo');
$crud->displayAs('pregunta_5', '5. La zona donde vivo es segura');
$crud->displayAs('pregunta_6', '6. En la zona donde vivo se presentan hurtos y mucha delincuencia');
$crud->displayAs('pregunta_7', '7. Desde donde vivo me es fácil llegar al centro médico donde me atienden');
$crud->displayAs('pregunta_8', '8. Cerca a mi vivienda las vías están en buenas condiciones');
$crud->displayAs('pregunta_9', '9. Cerca a mi vivienda encuentro fácilmente transporte');
$crud->displayAs('pregunta_10', '10. Las condiciones de mi vivienda son buenas');
$crud->displayAs('pregunta_11', '11. En mi vivienda hay servicios de agua y luz');
$crud->displayAs('pregunta_12', '12. Las condiciones de mi vivienda me permiten descansar cuando lo requiero');
$crud->displayAs('pregunta_13', '13. Las condiciones de mi vivienda me permiten sentirme cómodo');

$crud->displayAs('pregunta_14', '14. Me queda tiempo para actividades de recreación');
$crud->displayAs('pregunta_15', '15. Fuera del trabajo tengo tiempo suficiente para descansar');
$crud->displayAs('pregunta_16', '16. Tengo tiempo para atender mis asuntos personales y del hogar');
$crud->displayAs('pregunta_17', '17. Tengo tiempo para compartir con mi familia o amigos');
$crud->displayAs('pregunta_18', '18. Tengo buena comunicación con las personas cercanas');
$crud->displayAs('pregunta_19', '19. Las relaciones con mis amigos son buenas');
$crud->displayAs('pregunta_20', '20. Converso con personas cercanas sobre diferentes temas');
$crud->displayAs('pregunta_21', '21. Mis amigos están dispuestos a escucharme cuando tengo problemas');
$crud->displayAs('pregunta_22', '22. Cuento con el apoyo de mi familia cuando tengo problemas');
$crud->displayAs('pregunta_23', '23. Puedo hablar con personas cercanas sobre las cosas que me pasan');
$crud->displayAs('pregunta_24', '24. Mis problemas personales o familiares afectan mi trabajo');
$crud->displayAs('pregunta_25', '25. La relación con mi familia cercana es cordial');
$crud->displayAs('pregunta_26', '26. Mis problemas personales o familiares me quitan la energía que necesito para trabajar');
$crud->displayAs('pregunta_27', '27. Los problemas con mis familiares los resolvemos de manera amistosa');
$crud->displayAs('pregunta_28', '28. Mis problemas personales o familiares afectan mis relaciones en el trabajo');
$crud->displayAs('pregunta_29', '29. El dinero que ganamos en el hogar alcanza para cubrir los gastos básicos');
$crud->displayAs('pregunta_30', '30. Tengo otros compromisos económicos que afectan mucho el presupuesto familiar');
$crud->displayAs('pregunta_31', '31. En mi hogar tenemos deudas difíciles de pagar');

        /**Rules**/
                
        $crud->unsetDelete();
        
       $crud->requiredFields([
            'fec_aplica', 'nro_documento', 'pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4', 'pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8', 'pregunta_9', 'pregunta_10',
            'pregunta_11', 'pregunta_12', 'pregunta_13', 'pregunta_14', 'pregunta_15', 'pregunta_16', 'pregunta_17', 'pregunta_18', 'pregunta_19', 'pregunta_20',
            'pregunta_21', 'pregunta_22', 'pregunta_23', 'pregunta_24', 'pregunta_25', 'pregunta_26', 'pregunta_27', 'pregunta_28', 'pregunta_29', 'pregunta_30',
            'pregunta_31'
        ]);     
        
        // Where
        if ($isDigitador):                  
            $crud->where('forma_extra_fa_fb.creado_por', $user->id);
            $crud->unsetDelete();
            $crud->unsetEdit();
         endif; 

         
        //Relaciones
        $crud->setRelation('nro_documento', 'colaborador', '{nro_documento} - {nombre_completo}');
        
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


    
   
	public function vista_resultados_extra_fa_fb()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('resultados_extra_fa_fb');
        $crud->setSubject('Resultados Extralaboral Forma A-B', 'Resultados Extralaboral Forma A-B');

        $crud->displayAs('pt_dim1', 'Dimensión: Tiempo fuera del trabajo (puntaje transformado)');
        $crud->displayAs('nr_dim1', 'Dimensión: Tiempo fuera del trabajo (nivel de riesgo)');
        $crud->displayAs('pt_dim2', 'Dimensión: Relaciones familiares (puntaje transformado)');
        $crud->displayAs('nr_dim2', 'Dimensión: Relaciones familiares (nivel de riesgo)');
        $crud->displayAs('pt_dim3', 'Dimensión: Comunicación y relaciones interpersonales (puntaje transformado)');
        $crud->displayAs('nr_dim3', 'Dimensión: Comunicación y relaciones interpersonales (nivel de riesgo)');
        $crud->displayAs('pt_dim4', 'Dimensión: Situación económica del grupo familiar (puntaje transformado)');
        $crud->displayAs('nr_dim4', 'Dimensión: Situación económica del grupo familiar (nivel de riesgo)');
        $crud->displayAs('pt_dim5', 'Dimensión: Características de la vivienda y de su entorno (puntaje transformado)');
        $crud->displayAs('nr_dim5', 'Dimensión: Características de la vivienda y de su entorno (nivel de riesgo)');
        $crud->displayAs('pt_dim6', 'Dimensión: Influencia del entorno extralaboral sobre el trabajo (puntaje transformado)');
        $crud->displayAs('nr_dim6', 'Dimensión: Influencia del entorno extralaboral sobre el trabajo (nivel de riesgo)');
        $crud->displayAs('pt_dim7', 'Dimensión: Desplazamiento vivienda - trabajo - vivienda (puntaje transformado)');
        $crud->displayAs('nr_dim7', 'Dimensión: Desplazamiento vivienda - trabajo - vivienda (nivel de riesgo)');
        $crud->displayAs('pt_total_extra', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial extralaboral (puntaje transformado)');
        $crud->displayAs('nr_total_extra', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial extralaboral (nivel de riesgo)');



        //Rules
        $crud->unsetOperations();

        //Relaciones
        $crud->setRelation('nro_documento', 'colaborador', '{nro_documento} - {nombre_completo}');

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
