package com.ig.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ig.modelo.Disciplina;
import com.ig.modelo.Socio;
import com.ig.services.RegisterService;

/**
 * Controlador que devuelve la primera pagina de inicio
 */

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private RegisterService registerService;

	@RequestMapping(method = RequestMethod.GET)
	public String home(ModelMap model) {

		model.put("socioForm", new Socio());
		model.put("disciplinaList", registerService.listarDisciplinas());
		return "index";
	}

}
