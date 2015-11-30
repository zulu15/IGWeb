package com.ig.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ig.modelo.Administrador;
import com.ig.modelo.Socio;
import com.ig.services.AdministradorService;
import com.ig.services.SocioService;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {
	@Autowired
	private AdministradorService administradorService;
	@Autowired
	private SocioService socioService;

	@RequestMapping(method = RequestMethod.POST)
	public String leerUsuario(ModelMap modelo, @ModelAttribute("adminForm") Administrador admin) throws Exception {

		if (isDatosValidos(admin) && administradorService.isAdministrador(admin)) {
			List<Socio> listaSocios = socioService.listarSocios();
			modelo.put("socioList", listaSocios);
			return "/admin/panel";
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

	@RequestMapping(value = "/panel", method = { RequestMethod.GET, RequestMethod.POST })
	public String iniciarVista(ModelMap modelo) {
		List<Socio> listaSocios = socioService.listarSocios();
		modelo.put("socioList", listaSocios);
		return "/admin/panel";
	}
	
	
	 
    @RequestMapping(value="/eliminar/{email}", method={RequestMethod.POST,RequestMethod.GET})
    public String eliminarSocio(@PathVariable String email) {
    	try {
			socioService.eliminarSocio(email);
		} catch (Exception e) {
			throw new RuntimeException("Error eliminando socio "+email);
		}
        return "/admin/panel";
    }
	
	
	
	

	private boolean isDatosValidos(Administrador admin) {
		return (admin.getEmail() != null && !admin.getEmail().isEmpty() && admin.getPassword() != null && !admin.getPassword().isEmpty());
	}

}
