package com.example.demo.repository;

import com.example.demo.entity.Produit;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Produit,Integer> {
    Produit findByName(String name);
}

