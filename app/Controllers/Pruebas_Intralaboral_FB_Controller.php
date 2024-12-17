<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Pruebas_Intralaboral_FB_Controller extends BaseController
{
    public function crud_forma_b()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('forma_b');         
         
        $crud->setSubject('Registro Intralaboral Forma B', 'Formulario Intralaboral Forma B');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');

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
        $crud->displayAs('pregunta_19', '19. En mi trabajo tengo que hacer cálculos matemáticos');
        $crud->displayAs('pregunta_20', '20. Mi trabajo requiere que me fije en pequeños detalles');


        $crud->displayAs('pregunta_21', '21. Trabajo en horario de noche');
        $crud->displayAs('pregunta_22', '22. En mi trabajo es posible tomar pausas para descansar');
        $crud->displayAs('pregunta_23', '23. Mi trabajo me exige laborar en días de descanso, festivos o fines de semana');
        $crud->displayAs('pregunta_24', '24. En mi trabajo puedo tomar fines de semana o días de descanso al mes');
        $crud->displayAs('pregunta_25', '25. Cuando estoy en casa sigo pensando en el trabajo');
        $crud->displayAs('pregunta_26', '26. Discuto con mi familia o amigos por causa de mi trabajo');
        $crud->displayAs('pregunta_27', '27. Debo atender asuntos de trabajo cuando estoy en casa');
        $crud->displayAs('pregunta_28', '28. Por mi trabajo el tiempo que paso con mi familia y amigos es muy poco');

        $crud->displayAs('pregunta_29', '29. En mi trabajo puedo hacer cosas nuevas');
        $crud->displayAs('pregunta_30', '30. Mi trabajo me permite desarrollar mis habilidades');
        $crud->displayAs('pregunta_31', '31. Mi trabajo me permite aplicar mis conocimientos');
        $crud->displayAs('pregunta_32', '32. Mi trabajo me permite aprender nuevas cosas');
        $crud->displayAs('pregunta_33', '33. Puedo tomar pausas cuando las necesito');
        $crud->displayAs('pregunta_34', '34. Puedo decidir cuánto trabajo hago en el día');
        $crud->displayAs('pregunta_35', '35. Puedo decidir la velocidad a la que trabajo');
        $crud->displayAs('pregunta_36', '36. Puedo cambiar el orden de las actividades en mi trabajo');
        $crud->displayAs('pregunta_37', '37. Puedo parar un momento mi trabajo para atender algún asunto personal');

        $crud->displayAs('pregunta_38', '38. Me explican claramente los cambios que ocurren en mi trabajo');
        $crud->displayAs('pregunta_39', '39. Puedo dar sugerencias sobre los cambios que ocurren en mi trabajo');
        $crud->displayAs('pregunta_40', '40. Cuando se presentan cambios en mi trabajo se tienen en cuenta mis ideas y sugerencias');

        $crud->displayAs('pregunta_41', '41. Me informan con claridad cuáles son mis funciones');
        $crud->displayAs('pregunta_42', '42. Me informan cuáles son las decisiones que puedo tomar en mi trabajo');
        $crud->displayAs('pregunta_43', '43. Me explican claramente los resultados que debo lograr en mi trabajo');
        $crud->displayAs('pregunta_44', '44. Me explican claramente los objetivos de mi trabajo');
        $crud->displayAs('pregunta_45', '45. Me informan claramente con quien puedo resolver los asuntos de trabajo');

        $crud->displayAs('pregunta_46', '46. La empresa me permite asistir a capacitaciones relacionadas con mi trabajo');
        $crud->displayAs('pregunta_47', '47. Recibo capacitación útil para hacer mi trabajo');
        $crud->displayAs('pregunta_48', '48. Recibo capacitación que me ayuda a hacer mejor mi trabajo');

        $crud->displayAs('pregunta_49', '49. Mi jefe ayuda a organizar mejor el trabajo');
        $crud->displayAs('pregunta_50', '50. Mi jefe tiene en cuenta mis puntos de vista y opiniones');
        $crud->displayAs('pregunta_51', '51. Mi jefe me anima para hacer mejor mi trabajo');
        $crud->displayAs('pregunta_52', '52. Mi jefe distribuye las tareas de forma que me facilita el trabajo');
        $crud->displayAs('pregunta_53', '53. Mi jefe me comunica a tiempo la información relacionada con el trabajo');
        $crud->displayAs('pregunta_54', '54. La orientación que me da mi jefe me ayuda a hacer mejor el trabajo');
        $crud->displayAs('pregunta_55', '55. Mi jefe me ayuda a progresar en el trabajo');
        $crud->displayAs('pregunta_56', '56. Mi jefe me ayuda a sentirme bien en el trabajo');
        $crud->displayAs('pregunta_57', '57. Mi jefe ayuda a solucionar los problemas que se presentan en el trabajo');
        $crud->displayAs('pregunta_58', '58. Mi jefe me trata con respeto');
        $crud->displayAs('pregunta_59', '59. Siento que puedo confiar en mi jefe');
        $crud->displayAs('pregunta_60', '60. Mi jefe me escucha cuando tengo problemas de trabajo');
        $crud->displayAs('pregunta_61', '61. Mi jefe me brinda su apoyo cuando lo necesito');

        $crud->displayAs('pregunta_62', '62. Me agrada el ambiente de mi grupo de trabajo');
        $crud->displayAs('pregunta_63', '63. En mi grupo de trabajo me tratan de forma respetuosa');
        $crud->displayAs('pregunta_64', '64. Siento que puedo confiar en mis compañeros de trabajo');
        $crud->displayAs('pregunta_65', '65. Me siento a gusto con mis compañeros de trabajo');
        $crud->displayAs('pregunta_66', '66. En mi grupo de trabajo algunas personas me maltratan');
        $crud->displayAs('pregunta_67', '67. Entre compañeros solucionamos los problemas de forma respetuosa');
        $crud->displayAs('pregunta_68', '68. Mi grupo de trabajo es muy unido');
        $crud->displayAs('pregunta_69', '69. Cuando tenemos que realizar trabajo de grupo los compañeros colaboran');
        $crud->displayAs('pregunta_70', '70. Es fácil poner de acuerdo al grupo para hacer el trabajo');
        $crud->displayAs('pregunta_71', '71. Mis compañeros de trabajo me ayudan cuando tengo dificultades');
        $crud->displayAs('pregunta_72', '72. En mi trabajo las personas nos apoyamos unos a otros');
        $crud->displayAs('pregunta_73', '73. Algunos compañeros de trabajo me escuchan cuando tengo problemas');

        $crud->displayAs('pregunta_74', '74. Me informan sobre lo que hago bien en mi trabajo');
        $crud->displayAs('pregunta_75', '75. Me informan sobre lo que debo mejorar en mi trabajo');
        $crud->displayAs('pregunta_76', '76. La información que recibo sobre mi rendimiento en el trabajo es clara');
        $crud->displayAs('pregunta_77', '77. La forma como evalúan mi trabajo en la empresa me ayuda a mejorar');
        $crud->displayAs('pregunta_78', '78. Me informan a tiempo sobre lo que debo mejorar en el trabajo');

        $crud->displayAs('pregunta_79', '79. En la empresa me pagan a tiempo mi salario');
        $crud->displayAs('pregunta_80', '80. El pago que recibo es el que me ofreció la empresa');
        $crud->displayAs('pregunta_81', '81. El pago que recibo es el que merezco por el trabajo que realizo');
        $crud->displayAs('pregunta_82', '82. En mi trabajo tengo posibilidades de progresar');
        $crud->displayAs('pregunta_83', '83. Las personas que hacen bien el trabajo pueden progresar en la empresa');
        $crud->displayAs('pregunta_84', '84. La empresa se preocupa por el bienestar de los trabajadores');
        $crud->displayAs('pregunta_85', '85. Mi trabajo en la empresa es estable');
        $crud->displayAs('pregunta_86', '86. El trabajo que hago me hace sentir bien');
        $crud->displayAs('pregunta_87', '87. Siento orgullo de trabajar en esta empresa');
        $crud->displayAs('pregunta_88', '88. Hablo bien de la empresa con otras personas');

        $crud->displayAs('pregunta_89', '89. Atiendo clientes o usuarios muy enojados');
        $crud->displayAs('pregunta_90', '90. Atiendo clientes o usuarios muy preocupados');
        $crud->displayAs('pregunta_91', '91. Atiendo clientes o usuarios muy tristes');
        $crud->displayAs('pregunta_92', '92. Mi trabajo me exige atender personas muy enfermas');
        $crud->displayAs('pregunta_93', '93. Mi trabajo me exige atender personas muy necesitadas de ayuda');
        $crud->displayAs('pregunta_94', '94. Atiendo clientes o usuarios que me maltratan');
        $crud->displayAs('pregunta_95', '95. Mi trabajo me exige atender situaciones de violencia');
        $crud->displayAs('pregunta_96', '96. Mi trabajo me exige atender situaciones muy tristes o dolorosas');
        $crud->displayAs('pregunta_97', '97. Puedo expresar tristeza o enojo frente a las personas que atiendo');        

        /**Rules**/
                
        $crud->unsetDelete();
        
        $crud->requiredFields([
            'fec_aplica', 'nro_documento', 'pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4', 'pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8', 'pregunta_9', 'pregunta_10',
            'pregunta_11', 'pregunta_12', 'pregunta_13', 'pregunta_14', 'pregunta_15', 'pregunta_16', 'pregunta_17', 'pregunta_18', 'pregunta_19', 'pregunta_20',
            'pregunta_21', 'pregunta_22', 'pregunta_23', 'pregunta_24', 'pregunta_25', 'pregunta_26', 'pregunta_27', 'pregunta_28', 'pregunta_29', 'pregunta_30',
            'pregunta_31', 'pregunta_32', 'pregunta_33', 'pregunta_34', 'pregunta_35', 'pregunta_36', 'pregunta_37', 'pregunta_38', 'pregunta_39', 'pregunta_40',
            'pregunta_41', 'pregunta_42', 'pregunta_43', 'pregunta_44', 'pregunta_45', 'pregunta_46', 'pregunta_47', 'pregunta_48', 'pregunta_49', 'pregunta_50',
            'pregunta_51', 'pregunta_52', 'pregunta_53', 'pregunta_54', 'pregunta_55', 'pregunta_56', 'pregunta_57', 'pregunta_58', 'pregunta_59', 'pregunta_60',
            'pregunta_61', 'pregunta_62', 'pregunta_63', 'pregunta_64', 'pregunta_65', 'pregunta_66', 'pregunta_67', 'pregunta_68', 'pregunta_69', 'pregunta_70',
            'pregunta_71', 'pregunta_72', 'pregunta_73', 'pregunta_74', 'pregunta_75', 'pregunta_76', 'pregunta_77', 'pregunta_78', 'pregunta_79', 'pregunta_80',
            'pregunta_81', 'pregunta_82', 'pregunta_83', 'pregunta_84', 'pregunta_85', 'pregunta_86', 'pregunta_87', 'pregunta_88'
        ]);

         
        //Relaciones
        $crud->setRelation('nro_documento', 'colaborador', '{nro_documento} - {nombre_completo}', ['tipo_forma' => 'Forma B']);

	    $output = $crud->render();       
		return $this->_dataOutput($output);
	}

        /** Callback**/
        

   
	public function vista_resultados_fb()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('resultados_fb');

        $crud->setSubject('Resultados Intralaboral Forma B', 'Resultados Intralaboral Forma B');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');

        $crud->displayAs('pt_dim1', 'Dimensión: Características del liderazgo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim1', 'Dimensión: Características del liderazgo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim2', 'Dimensión: Relaciones sociales en el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim2', 'Dimensión: Relaciones sociales en el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim3', 'Dimensión: Retroalimentación del desempeño - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim3', 'Dimensión: Retroalimentación del desempeño - Forma B (nivel de riesgo)');
        //$crud->displayAs('pt_dim4', 'Dimensión: Relación con los colaboradores - Forma B (puntaje transformado)');
        //$crud->displayAs('nr_dim4', 'Dimensión: Relación con los colaboradores - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom1', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom1', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim5', 'Dimensión: Claridad de rol - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim5', 'Dimensión: Claridad de rol - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim6', 'Dimensión: Capacitación - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim6', 'Dimensión: Capacitación - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim7', 'Dimensión: Participación y manejo del cambio - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim7', 'Dimensión: Participación y manejo del cambio - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim8', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim8', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim9', 'Dimensión: Control y autonomía sobre el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim9', 'Dimensión: Control y autonomía sobre el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom2', 'DOMINIO Control sobre el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom2', 'DOMINIO Control sobre el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim10', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim10', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim11', 'Dimensión: Demandas emocionales - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim11', 'Dimensión: Demandas emocionales - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim12', 'Dimensión: Demandas cuantitativas - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim12', 'Dimensión: Demandas cuantitativas - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim13', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim13', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma B (nivel de riesgo)');
        //$crud->displayAs('pt_dim14', 'Dimensión: Exigencias de responsabilidad del cargo - Forma B (puntaje transformado)');
        //$crud->displayAs('nr_dim14', 'Dimensión: Exigencias de responsabilidad del cargo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim15', 'Dimensión: Demandas de carga mental - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim15', 'Dimensión: Demandas de carga mental - Forma B (nivel de riesgo)');
        //$crud->displayAs('pt_dim16', 'Dimensión: Consistencia del rol - Forma B (puntaje transformado)');
        //$crud->displayAs('nr_dim16', 'Dimensión: Consistencia del rol - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim17', 'Dimensión: Demandas de la jornada de trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim17', 'Dimensión: Demandas de la jornada de trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom3', 'DOMINIO: Demandas del trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom3', 'DOMINIO: Demandas del trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim18', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim18', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim19', 'Dimensión: Reconocimiento y compensación - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim19', 'Dimensión: Reconocimiento y compensación - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom4', 'DOMINIO: Recompensas - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom4', 'DOMINIO: Recompensas - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_total_fb', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma B (puntaje transformado)');
        $crud->displayAs('nr_total_fb', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma B (nivel de riesgo)');


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
