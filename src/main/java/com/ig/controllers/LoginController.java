package com.ig.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ig.modelo.Administrador;
import com.ig.services.LoginService;

@Controller
@RequestMapping("administrador")
public class LoginController {
	@Autowired
	private LoginService loginService;

	@RequestMapping( method = RequestMethod.POST)
	public String leerUsuario(ModelMap modelo, @ModelAttribute("adminForm") Administrador admin) throws Exception {

		if (isDatosValidos(admin) && loginService.isAdministrador(admin)) {
			return "/admin/welcome";
		} else {
			modelo.put("errorLogin", "Error, usuario o contraseña incorrectos.");
		}

		return "/admin/login";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String vista(ModelMap modelo) {

		modelo.put("adminForm", new Administrador());

		return "/admin/login";

	}

	private boolean isDatosValidos(Administrador admin) {
		return (admin.getEmail() != null && !admin.getEmail().isEmpty() && admin.getPassword() != null && !admin.getPassword().isEmpty());
	}

}
