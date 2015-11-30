package com.ig.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ig.modelo.Socio;
import com.ig.services.SocioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioLoginController {
	@Autowired
	private SocioService socioService;

	@RequestMapping(method = RequestMethod.GET)
	public String iniciar(ModelMap modelo) {

		modelo.put("loginForm", new Socio());
		return "/usuario/login";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String validarLoginUsuario(ModelMap modelo, @ModelAttribute("loginForm") Socio socio) {
		if (isDatosCompletos(socio) && socioService.isSocioRegistrado(socio)) {
			socio = socioService.obtenerSocio(socio);
			System.out.println(socio);
			modelo.put("socioForm", socio);
			return "index";
		}
		modelo.addAttribute("loginFallido", "Usuario o contraseña incorrectos!!");
		return "/usuario/login";
	}

	private boolean isDatosCompletos(Socio socio) {

		return (socio.getEmail() != null && !socio.getEmail().isEmpty() && socio.getPassword() != null && !socio.getPassword().isEmpty());
	}

}
