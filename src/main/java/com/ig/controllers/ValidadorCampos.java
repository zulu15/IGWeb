package com.ig.controllers;

import java.util.HashMap;
import java.util.Map;

import com.ig.modelo.Socio;
import com.ig.services.RegisterService;

public class ValidadorCampos {


	public static Map<String, String> obtenerErroresRegistro(Socio socio,String passwordConfirmacion) {
		Map<String, String> errores = new HashMap();

		if (socio.getNombre() == null || socio.getNombre().isEmpty() || socio.getNombre().length() > 30) {
			errores.put("nombreInvalido", "El nombre no puede estar vacio o excede el tamaño permitido");
		}
		if (socio.getApellido() == null || socio.getApellido().isEmpty() || socio.getApellido().length() > 30) {
			errores.put("apellidoInvalido", "El apellido no puede estar vacio o excede el tamaño permitido");

		}
		if (socio.getPassword() == null || socio.getPassword().isEmpty() || socio.getPassword().length() > 30) {
			errores.put("passwordInvalido", "La clave no puede estar vacia o excede el tamaño permitido");

		}
		if (socio.getEmail() == null || socio.getEmail().isEmpty() || socio.getEmail().indexOf("@")==-1 || !RegisterService.isEmailDisponible(socio) ) {
			errores.put("emailInvalido", "Email incorrecto o en uso");

		}
		if(passwordConfirmacion==null || !passwordConfirmacion.equals(socio.getPassword())){
			errores.put("password2","Las claves no coinciden");
		}
		

		return errores;
	}

	public static void main(String... juaco){
		
		Socio socio = new Socio("email", "nombre", "apellido", 85, 1.90, 50, "caca");
		Map errores = obtenerErroresRegistro(socio, "caca");
		System.out.println(errores.containsKey("password2"));
	}


}
