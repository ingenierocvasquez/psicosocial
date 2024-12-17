<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Pruebas_Intralaboral_FA_Controller extends BaseController
{
    public function crud_forma_a()
	{

        $auth = service('auth');
        $user = $auth->user(); // Obtén el usuario autenticado.
        $isDigitador = $user->inGroup('digitadores');
        
	    $crud = new GroceryCrud();
	    $crud->setTable('forma_a');
        
        $crud->setSubject('Registro Intralaboral Forma A', 'Formulario Intralaboral Forma A');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');

        $crud->displayAs('creado_por', 'Registro Digitado Por');
        $crud->fieldType('creado_por', 'hidden');
        $crud->unsetDelete();

        $crud->displayAs('pregunta_1', '1. El ruido en el lugar donde trabajo es molesto');
        $crud->displayAs('pregunta_2', '2. En el lugar donde trabajo hace mucho frío');
        $crud->displayAs('pregunta_3', '3. En el lugar donde trabajo hace mucho calor');
        $crud->displayAs('pregunta_4', '4. El aire en el lugar donde trabajo es fresco y agradable');
        $crud->displayAs('pregunta_5', '5. La luz del sitio donde trabajo es agradable');
        $crud->displayAs('pregunta_6', '6. El espacio donde trabajo es cómodo');
        $crud->displayAs('pregunta_7', '7. En mi trabajo me preocupa estar expuesto a sustancias químicas que afecten mi salud');
        $crud->displayAs('pregunta_8', '8. Mi trabajo me exige hacer mucho esfuerzo físico');
        $crud->displayAs('pregunta_9', '9. Los equipos o herramientas con los que trabajo son cómodos');
        $crud->displayAs('pregunta_10', '10. En mi trabajo me preocupa estar expuesto a microbios, animales o plantas que afecten mi salud');
        $crud->displayAs('pregunta_11', '11. Me preocupa accidentarme en mi trabajo');
        $crud->displayAs('pregunta_12', '12. El lugar donde trabajo es limpio y ordenado');

        $crud->displayAs('pregunta_13', '13. Por la cantidad de trabajo que tengo debo quedarme tiempo adicional');
        $crud->displayAs('pregunta_14', '14. Me alcanza el tiempo de trabajo para tener al día mis deberes');
        $crud->displayAs('pregunta_15', '15. Por la cantidad de trabajo que tengo debo trabajar sin parar');

        $crud->displayAs('pregunta_16', '16. Mi trabajo me exige hacer mucho esfuerzo mental');
        $crud->displayAs('pregunta_17', '17. Mi trabajo me exige estar muy concentrado');
        $crud->displayAs('pregunta_18', '18. Mi trabajo me exige memorizar mucha información');
        $crud->displayAs('pregunta_19', '19. En mi trabajo tengo que tomar decisiones difíciles muy rápido');
        $crud->displayAs('pregunta_20', '20. Mi trabajo me exige atender a muchos asuntos al mismo tiempo');
        $crud->displayAs('pregunta_21', '21. Mi trabajo requiere que me fije en pequeños detalles');

        $crud->displayAs('pregunta_22', '22. En mi trabajo respondo por cosas de mucho valor');
        $crud->displayAs('pregunta_23', '23. En mi trabajo respondo por dinero de la empresa');
        $crud->displayAs('pregunta_24', '24. Como parte de mis funciones debo responder por la seguridad de otros');
        $crud->displayAs('pregunta_25', '25. Respondo ante mi jefe por los resultados de toda mi área de trabajo');
        $crud->displayAs('pregunta_26', '26. Mi trabajo me exige cuidar la salud de otras personas');
        $crud->displayAs('pregunta_27', '27. En el trabajo me dan órdenes contradictorias');
        $crud->displayAs('pregunta_28', '28. En mi trabajo me piden hacer cosas innecesarias');
        $crud->displayAs('pregunta_29', '29. En mi trabajo se presentan situaciones en las que debo pasar por alto normas o procedimientos');
        $crud->displayAs('pregunta_30', '30. En mi trabajo tengo que hacer cosas que se podrían hacer de una forma más práctica');

        $crud->displayAs('pregunta_31', '31. Trabajo en horario de noche');
        $crud->displayAs('pregunta_32', '32. En mi trabajo es posible tomar pausas para descansar');
        $crud->displayAs('pregunta_33', '33. Mi trabajo me exige laborar en días de descanso, festivos o fines de semana');
        $crud->displayAs('pregunta_34', '34. En mi trabajo puedo tomar fines de semana o días de descanso al mes');
        $crud->displayAs('pregunta_35', '35. Cuando estoy en casa sigo pensando en el trabajo');
        $crud->displayAs('pregunta_36', '36. Discuto con mi familia o amigos por causa de mi trabajo');
        $crud->displayAs('pregunta_37', '37. Debo atender asuntos de trabajo cuando estoy en casa');
        $crud->displayAs('pregunta_38', '38. Por mi trabajo el tiempo que paso con mi familia y amigos es muy poco');

        $crud->displayAs('pregunta_39', '39. Mi trabajo me permite desarrollar mis habilidades');
        $crud->displayAs('pregunta_40', '40. Mi trabajo me permite aplicar mis conocimientos');
        $crud->displayAs('pregunta_41', '41. Mi trabajo me permite aprender nuevas cosas');
        $crud->displayAs('pregunta_42', '42. Me asignan el trabajo teniendo en cuenta mis capacidades.');
        $crud->displayAs('pregunta_43', '43. Puedo tomar pausas cuando las necesito');
        $crud->displayAs('pregunta_44', '44. Puedo decidir cuánto trabajo hago en el día');
        $crud->displayAs('pregunta_45', '45. Puedo decidir la velocidad a la que trabajo');
        $crud->displayAs('pregunta_46', '46. Puedo cambiar el orden de las actividades en mi trabajo');
        $crud->displayAs('pregunta_47', '47. Puedo parar un momento mi trabajo para atender algún asunto personal');

        $crud->displayAs('pregunta_48', '48. Los cambios en mi trabajo han sido beneficiosos');
        $crud->displayAs('pregunta_49', '49. Me explican claramente los cambios que ocurren en mi trabajo');
        $crud->displayAs('pregunta_50', '50. Puedo dar sugerencias sobre los cambios que ocurren en mi trabajo');
        $crud->displayAs('pregunta_51', '51. Cuando se presentan cambios en mi trabajo se tienen en cuenta mis ideas y sugerencias');
        $crud->displayAs('pregunta_52', '52. Los cambios que se presentan en mi trabajo dificultan mi labor');

        $crud->displayAs('pregunta_53', '53. Me informan con claridad cuáles son mis funciones');
        $crud->displayAs('pregunta_54', '54. Me informan cuáles son las decisiones que puedo tomar en mi trabajo');
        $crud->displayAs('pregunta_55', '55. Me explican claramente los resultados que debo lograr en mi trabajo');
        $crud->displayAs('pregunta_56', '56. Me explican claramente el efecto de mi trabajo en la empresa');
        $crud->displayAs('pregunta_57', '57. Me explican claramente los objetivos de mi trabajo');
        $crud->displayAs('pregunta_58', '58. Me informan claramente quién me puede orientar para hacer mi trabajo');
        $crud->displayAs('pregunta_59', '59. Me informan claramente con quién puedo resolver los asuntos de trabajo');

        $crud->displayAs('pregunta_60', '60. La empresa me permite asistir a capacitaciones relacionadas con mi trabajo');
        $crud->displayAs('pregunta_61', '61. Recibo capacitación útil para hacer mi trabajo');
        $crud->displayAs('pregunta_62', '62. Recibo capacitación que me ayuda a hacer mejor mi trabajo');

        $crud->displayAs('pregunta_63', '63. Mi jefe me da instrucciones claras');
        $crud->displayAs('pregunta_64', '64. Mi jefe ayuda a organizar mejor el trabajo');
        $crud->displayAs('pregunta_65', '65. Mi jefe tiene en cuenta mis puntos de vista y opiniones');
        $crud->displayAs('pregunta_66', '66. Mi jefe me anima para hacer mejor mi trabajo');
        $crud->displayAs('pregunta_67', '67. Mi jefe distribuye las tareas de forma que me facilita el trabajo');
        $crud->displayAs('pregunta_68', '68. Mi jefe me comunica a tiempo la información relacionada con el trabajo');
        $crud->displayAs('pregunta_69', '69. La orientación que me da mi jefe me ayuda a hacer mejor el trabajo');
        $crud->displayAs('pregunta_70', '70. Mi jefe me ayuda a progresar en el trabajo');
        $crud->displayAs('pregunta_71', '71. Mi jefe me ayuda a sentirme bien en el trabajo');
        $crud->displayAs('pregunta_72', '72. Mi jefe ayuda a solucionar los problemas que se presentan en el trabajo');
        $crud->displayAs('pregunta_73', '73. Siento que puedo confiar en mi jefe');
        $crud->displayAs('pregunta_74', '74. Mi jefe me escucha cuando tengo problemas de trabajo');
        $crud->displayAs('pregunta_75', '75. Mi jefe me brinda su apoyo cuando lo necesito');

        $crud->displayAs('pregunta_76', '76. Me agrada el ambiente de mi grupo de trabajo');
        $crud->displayAs('pregunta_77', '77. En mi grupo de trabajo me tratan de forma respetuosa');
        $crud->displayAs('pregunta_78', '78. Siento que puedo confiar en mis compañeros de trabajo');
        $crud->displayAs('pregunta_79', '79. Me siento a gusto con mis compañeros de trabajo');
        $crud->displayAs('pregunta_80', '80. En mi grupo de trabajo algunas personas me maltratan');
        $crud->displayAs('pregunta_81', '81. Entre compañeros solucionamos los problemas de forma respetuosa');
        $crud->displayAs('pregunta_82', '82. Hay integración en mi grupo de trabajo');
        $crud->displayAs('pregunta_83', '83. Mi grupo de trabajo es muy unido');
        $crud->displayAs('pregunta_84', '84. Las personas en mi trabajo me hacen sentir parte del grupo');
        $crud->displayAs('pregunta_85', '85. Cuando tenemos que realizar trabajo de grupo los compañeros colaboran');
        $crud->displayAs('pregunta_86', '86. Es fácil poner de acuerdo al grupo para hacer el trabajo');
        $crud->displayAs('pregunta_87', '87. Mis compañeros de trabajo me ayudan cuando tengo dificultades');
        $crud->displayAs('pregunta_88', '88. En mi trabajo las personas nos apoyamos unos a otros');
        $crud->displayAs('pregunta_89', '89. Algunos compañeros de trabajo me escuchan cuando tengo problemas');

        $crud->displayAs('pregunta_90', '90. Me informan sobre lo que hago bien en mi trabajo');
        $crud->displayAs('pregunta_91', '91. Me informan sobre lo que debo mejorar en mi trabajo');
        $crud->displayAs('pregunta_92', '92. La información que recibo sobre mi rendimiento en el trabajo es clara');
        $crud->displayAs('pregunta_93', '93. La forma como evalúan mi trabajo en la empresa me ayuda a mejorar');
        $crud->displayAs('pregunta_94', '94. Me informan a tiempo sobre lo que debo mejorar en el trabajo');

        $crud->displayAs('pregunta_95', '95. En la empresa confían en mi trabajo');
        $crud->displayAs('pregunta_96', '96. En la empresa me pagan a tiempo mi salario');
        $crud->displayAs('pregunta_97', '97. El pago que recibo es el que me ofreció la empresa');
        $crud->displayAs('pregunta_98', '98. El pago que recibo es el que merezco por el trabajo que realizo');
        $crud->displayAs('pregunta_99', '99. En mi trabajo tengo posibilidades de progresar');
        $crud->displayAs('pregunta_100', '100. Las personas que hacen bien el trabajo pueden progresar en la empresa');
        $crud->displayAs('pregunta_101', '101. La empresa se preocupa por el bienestar de los trabajadores');
        $crud->displayAs('pregunta_102', '102. Mi trabajo en la empresa es estable');
        $crud->displayAs('pregunta_103', '103. El trabajo que hago me hace sentir bien');
        $crud->displayAs('pregunta_104', '104. Siento orgullo de trabajar en esta empresa');
        $crud->displayAs('pregunta_105', '105. Hablo bien de la empresa con otras personas');

        $crud->displayAs('pregunta_106', '106. Atiendo clientes o usuarios muy enojados');
        $crud->displayAs('pregunta_107', '107. Atiendo clientes o usuarios muy preocupados');
        $crud->displayAs('pregunta_108', '108. Atiendo clientes o usuarios muy tristes');
        $crud->displayAs('pregunta_109', '109. Mi trabajo me exige atender personas muy enfermas');
        $crud->displayAs('pregunta_110', '110. Mi trabajo me exige atender personas muy necesitadas de ayuda');
        $crud->displayAs('pregunta_111', '111. Atiendo clientes o usuarios que me maltratan');
        $crud->displayAs('pregunta_112', '112. Para hacer mi trabajo debo demostrar sentimientos distintos a los míos');
        $crud->displayAs('pregunta_113', '113. Mi trabajo me exige atender situaciones de violencia');
        $crud->displayAs('pregunta_114', '114. Mi trabajo me exige atender situaciones muy tristes o dolorosas');

        $crud->displayAs('pregunta_115', '115. Tengo colaboradores que comunican tarde los asuntos de trabajo');
        $crud->displayAs('pregunta_116', '116. Tengo colaboradores que tienen comportamientos irrespetuosos');
        $crud->displayAs('pregunta_117', '117. Tengo colaboradores que dificultan la organización del trabajo');
        $crud->displayAs('pregunta_118', '118. Tengo colaboradores que guardan silencio cuando les piden opiniones');
        $crud->displayAs('pregunta_119', '119. Tengo colaboradores que dificultan el logro de los resultados del trabajo');
        $crud->displayAs('pregunta_120', '120. Tengo colaboradores que expresan de forma irrespetuosa sus desacuerdos');
        $crud->displayAs('pregunta_121', '121. Tengo colaboradores que cooperan poco cuando se necesita');
        $crud->displayAs('pregunta_122', '122. Tengo colaboradores que me preocupan por su desempeño');
        $crud->displayAs('pregunta_123', '123. Tengo colaboradores que ignoran las sugerencias para mejorar su trabajo');

        /**Rules**/             
        
        
        $crud->requiredFields([
            'fec_aplica', 'nro_documento', 'pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4', 'pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8', 'pregunta_9', 'pregunta_10',
            'pregunta_11', 'pregunta_12', 'pregunta_13', 'pregunta_14', 'pregunta_15', 'pregunta_16', 'pregunta_17', 'pregunta_18', 'pregunta_19', 'pregunta_20',
            'pregunta_21', 'pregunta_22', 'pregunta_23', 'pregunta_24', 'pregunta_25', 'pregunta_26', 'pregunta_27', 'pregunta_28', 'pregunta_29', 'pregunta_30',
            'pregunta_31', 'pregunta_32', 'pregunta_33', 'pregunta_34', 'pregunta_35', 'pregunta_36', 'pregunta_37', 'pregunta_38', 'pregunta_39', 'pregunta_40',
            'pregunta_41', 'pregunta_42', 'pregunta_43', 'pregunta_44', 'pregunta_45', 'pregunta_46', 'pregunta_47', 'pregunta_48', 'pregunta_49', 'pregunta_50',
            'pregunta_51', 'pregunta_52', 'pregunta_53', 'pregunta_54', 'pregunta_55', 'pregunta_56', 'pregunta_57', 'pregunta_58', 'pregunta_59', 'pregunta_60',
            'pregunta_61', 'pregunta_62', 'pregunta_63', 'pregunta_64', 'pregunta_65', 'pregunta_66', 'pregunta_67', 'pregunta_68', 'pregunta_69', 'pregunta_70',
            'pregunta_71', 'pregunta_72', 'pregunta_73', 'pregunta_74', 'pregunta_75', 'pregunta_76', 'pregunta_77', 'pregunta_78', 'pregunta_79', 'pregunta_80',
            'pregunta_81', 'pregunta_82', 'pregunta_83', 'pregunta_84', 'pregunta_85', 'pregunta_86', 'pregunta_87', 'pregunta_88', 'pregunta_89', 'pregunta_90',
            'pregunta_91', 'pregunta_92', 'pregunta_93', 'pregunta_94', 'pregunta_95', 'pregunta_96', 'pregunta_97', 'pregunta_98', 'pregunta_99', 'pregunta_100',
            'pregunta_101', 'pregunta_102', 'pregunta_103', 'pregunta_104', 'pregunta_105'
        ]);
      
        $crud->fieldType('creado_por', 'hidden');

        //Relaciones
        $crud->setRelation('nro_documento', 'colaborador', '{nro_documento} - {nombre_completo}', ['tipo_forma' => 'Forma A']);

             //Where

             if ($isDigitador):            
                $crud->where('forma_a.creado_por', $user->id);
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

       
        
   
	public function vista_resultados_fa()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('resultados_fa');

        $crud->setSubject('Resultados Intralaboral Forma A', 'Resultados Intralaboral Forma A');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');

        $crud->displayAs('pt_dim1', 'Dimensión: Características del liderazgo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim1', 'Dimensión: Características del liderazgo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim2', 'Dimensión: Relaciones sociales en el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim2', 'Dimensión: Relaciones sociales en el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim3', 'Dimensión: Retroalimentación del desempeño - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim3', 'Dimensión: Retroalimentación del desempeño - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim4', 'Dimensión: Relación con los colaboradores - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim4', 'Dimensión: Relación con los colaboradores - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom1', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom1', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim5', 'Dimensión: Claridad de rol - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim5', 'Dimensión: Claridad de rol - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim6', 'Dimensión: Capacitación - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim6', 'Dimensión: Capacitación - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim7', 'Dimensión: Participación y manejo del cambio - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim7', 'Dimensión: Participación y manejo del cambio - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim8', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim8', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim9', 'Dimensión: Control y autonomía sobre el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim9', 'Dimensión: Control y autonomía sobre el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom2', 'DOMINIO Control sobre el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom2', 'DOMINIO Control sobre el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim10', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim10', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim11', 'Dimensión: Demandas emocionales - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim11', 'Dimensión: Demandas emocionales - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim12', 'Dimensión: Demandas cuantitativas - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim12', 'Dimensión: Demandas cuantitativas - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim13', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim13', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim14', 'Dimensión: Exigencias de responsabilidad del cargo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim14', 'Dimensión: Exigencias de responsabilidad del cargo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim15', 'Dimensión: Demandas de carga mental - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim15', 'Dimensión: Demandas de carga mental - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim16', 'Dimensión: Consistencia del rol - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim16', 'Dimensión: Consistencia del rol - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim17', 'Dimensión: Demandas de la jornada de trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim17', 'Dimensión: Demandas de la jornada de trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom3', 'DOMINIO: Demandas del trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom3', 'DOMINIO: Demandas del trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim18', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim18', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim19', 'Dimensión: Reconocimiento y compensación - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim19', 'Dimensión: Reconocimiento y compensación - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom4', 'DOMINIO: Recompensas - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom4', 'DOMINIO: Recompensas - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_total_fa', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma A (puntaje transformado)');
        $crud->displayAs('nr_total_fa', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma A (nivel de riesgo)');


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
