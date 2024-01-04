package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Produit;
import com.example.demo.repository.ProductRepository;

@Service
public class ProduitService {
    @Autowired
    private ProductRepository repository;

    public Produit saveProduit(Produit Produit) {
        return repository.save(Produit);
    }

  
    public List<Produit> getProduits() {
        return repository.findAll();
    }

    public Produit getProduitById(int id) {
        return repository.findById(id).orElse(null);
    }

    public Produit getProduitByName(String name) {
        return repository.findByName(name);
    }

    public String deleteProduit(int id) {
        repository.deleteById(id);
        return "Produit removed !! " + id;
    }

    public Produit updateProduit(Produit Produit) {
        Produit existingProduit = repository.findById(Produit.getId()).orElse(null);
        existingProduit.setName(Produit.getName());
        existingProduit.setPrix(Produit.getPrix());
        existingProduit.setDescription(Produit.getDescription());
        return repository.save(existingProduit);
    }


}