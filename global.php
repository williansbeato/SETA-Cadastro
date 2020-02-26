<?php

	// Função para carregar automaticamente todas as classes padrão
	function __autoload($class_name) {

		$ABSPATH = dirname( __FILE__ );

		$file = $ABSPATH . '/classes/' . $class_name . '.php';
		$fileM = $ABSPATH . '/classes/modelo/' . $class_name . '.php';
		$fileV = $ABSPATH . '/recursos/view/' . $class_name . '.php';
		$fileC = $ABSPATH . '/classes/controle/' . $class_name . '.php';

		if(!file_exists( $file )) {
			if(!file_exists( $fileM )) {
				if(!file_exists( $fileV )) {
					if(!file_exists( $fileC )) {
						echo "<script>alert('ERRO AO CARREGAR CLASSE')</script>";
					} else {
						require_once $fileC;
					}
				} else {
					require_once $fileV;
				}
			} else {
				require_once $fileM;
			}
		} else {
			require_once $file;
		}

	} // __autoload
