package com.sqli.demoMVC.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.sqli.demoMVC.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sqli.demoMVC.constants.TypeDeProduit;
import com.sqli.demoMVC.model.Produit;
import com.sqli.demoMVC.service.ProduitService;

@Controller
public class ProduitController {

	@Autowired
	private ProduitService produitService;
	@Autowired
    private UserService userService;

	public ProduitController() {
		super();
	}
	
    @RequestMapping(value = "/")
    public ModelAndView listerProduits(ModelAndView pModel) throws IOException {
        List<Produit> listProduit = produitService.getAll();
        pModel.addObject("listProduit", listProduit);
        pModel.addObject("user",userService.getUsername());
        pModel.setViewName("accueil");
        return pModel;
    }
    
    @RequestMapping(value = "/ajouterProduit", method = RequestMethod.GET)
    public ModelAndView ajouterProduit(ModelAndView pModel) {
        Produit pProduit = new Produit();
        pModel.addObject("produit", pProduit);
        pModel.addObject("typesProduit", Arrays.asList(TypeDeProduit.values()));
        pModel.setViewName("ProduitFormulaire");
        return pModel;
    }
    
    @RequestMapping(value = "/enregistrerProduit", method = RequestMethod.POST)
    public ModelAndView enregistrerProduit(@ModelAttribute Produit produit) {
        if (produit.getId() == 0) {
        	produitService.creerProduit(produit);
        } else {
        	produitService.modifierProduit(produit);
        }
        return new ModelAndView("redirect:/");
    }
    
    @RequestMapping(value = "/supprimerProduit", method = RequestMethod.GET)
    public ModelAndView supprimerProduit(HttpServletRequest pRequest) {
        int produitId = Integer.parseInt(pRequest.getParameter("id"));
        produitService.supprimerProduit(produitId);
        return new ModelAndView("redirect:/");
    }
	
    @RequestMapping(value = "/modifierProduit", method = RequestMethod.GET)
    public ModelAndView modifierProduit(HttpServletRequest pRequest) {
        int produitId = Integer.parseInt(pRequest.getParameter("id"));
        Produit pProduit = produitService.chercherProduit(produitId);
        ModelAndView model = new ModelAndView("ProduitFormulaire");
        model.addObject("produit", pProduit);
        model.addObject("types", TypeDeProduit.values());
        return model;
    }    
}