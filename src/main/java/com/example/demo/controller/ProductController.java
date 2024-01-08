package com.example.demo.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.*;
import com.example.demo.entity.Produit;
import com.example.demo.service.ProduitService;

@Controller

public class ProductController {

    @Autowired
    private ProduitService produitService;

    @GetMapping({"/ll", "/ùindex"})
    public String index(Model model) {
        List<Produit> products = produitService.getProduits();
        model.addAttribute("products", products);
        System.out.println("Number of products: " + products.size()); // Debug print
        return "index1";
    }
 
    @GetMapping(path = "/addproduct")
	public String addproduct() {
		return "add_product";
	}

    @PostMapping("/addProduct")
    public String addProduct(@ModelAttribute("product") Produit product) {
    	produitService.saveProduit(product);
        return "redirect:/addproduct";
    }

	
    @GetMapping("/edit/{id}")
    public String editProductForm(@PathVariable int id, Model model) {
        Produit product = produitService.getProduitById(id);
        model.addAttribute("product", product);
        return "editproduct";
    }

    @PostMapping("/edit/{id}")
    public String editProduct(@PathVariable int id, @ModelAttribute Produit produit) {
        produit.setId(id);
        produitService.updateProduit(produit);
        return "redirect:/index";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id) {
        produitService.deleteProduit(id);
        return "redirect:/index";
    }
}
