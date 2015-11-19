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
import com.ig.services.RegisterService;

@Controller
@RequestMapping(value = "register")
public class RegisterController {
	@Autowired
	private RegisterService registerService;

	@RequestMapping(method = RequestMethod.GET)
	public String mostrarPagina(ModelMap modelo) {
		modelo.put("socioForm", new Socio());
		modelo.put("disciplinaList", registerService.listarDisciplinas());
		return "index";

	}

	@RequestMapping(method = RequestMethod.POST)
	public String registrar(ModelMap modelo, @ModelAttribute("socioForm") Socio socio, @RequestParam(required = true) String passwordRepeat) {
		// Hardcoded combo
		modelo.put("disciplinaList", registerService.listarDisciplinas());
		// Hardcoded combo

		//Si hay errores validando se vuelve a la pagina para que complete los datos
		Map errores = ValidadorCampos.obtenerErroresRegistro(socio, passwordRepeat);
		if (errores.containsKey("passwordInvalido") || errores.containsKey("emailInvalido") || errores.containsKey("apellidoInvalido") || errores.containsKey("nombreInvalido") || errores.containsKey("password2")) {
			modelo.addAttribute("socioForm", socio);
			modelo.addAttribute("mapa", errores);

			return "index";
		}
		//Si paso la validacion de los campos se inscribe al socio y se realiza su
		//pre-inscripcion

		try {
			registerService.preInscribirSocio(socio);
		} catch (Exception e) {
			modelo.addAttribute("errorRegistro", "Error registrando al socio " + socio.getNombre() + " setvicio interrumpido.");
			return "index";
		}

		return "success";
	}

}
