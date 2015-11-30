package com.ig.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.ig.modelo.Socio;
import com.ig.services.DisciplinaService;
import com.ig.services.SocioService;

/**
 * Controlador que devuelve la primera pagina de inicio
 */

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private DisciplinaService disciplinaService;

	@Autowired
	private SocioService socioService;

	@RequestMapping(method = RequestMethod.GET)
	public String home(ModelMap model) {

		model.put("socioForm", new Socio());
		model.put("disciplinaList", disciplinaService.listarDisciplinas());
		return "index";
	}

	

	@RequestMapping(value = "/register", method = { RequestMethod.POST, RequestMethod.GET })
	public String registrar(ModelMap modelo, @ModelAttribute("socioForm") Socio socio, @RequestParam(required = true) String passwordRepeat) {
		// Hardcoded combo
		modelo.put("disciplinaList", disciplinaService.listarDisciplinas());
		// Hardcoded combo

		// Si hay errores validando se vuelve a la pagina para que complete los
		// datos
		Map errores = ValidadorCampos.obtenerErroresRegistro(socio, passwordRepeat);
		if (errores.containsKey("passwordInvalido") || errores.containsKey("emailInvalido") || errores.containsKey("apellidoInvalido") || errores.containsKey("nombreInvalido") || errores.containsKey("password2")) {
			modelo.addAttribute("socioForm", socio);
			modelo.addAttribute("mapa", errores);

			return "index";
		}
		// Si paso la validacion de los campos se inscribe al socio y se realiza
		// su
		// pre-inscripcion

		try {
			socioService.preInscribirSocio(socio);
		} catch (Exception e) {
			modelo.addAttribute("errorRegistro", "Error registrando al socio " + socio.getNombre() + " setvicio interrumpido.");
			return "index";
		}

		return "success";
	}

}
