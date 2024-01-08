package com.example.demo.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.demo.entity.Produit;
import com.example.demo.entity.Blog;
import com.example.demo.entity.Message;
import com.example.demo.entity.Chat;

import com.example.demo.service.MessageService;
import com.example.demo.service.ProduitService;
import com.example.demo.service.BlogService;
import com.example.demo.service.ChatService;
@Controller

public class HomeController {

	 @Autowired
	    private MessageService MessageService;
 
	 @Autowired
	    private BlogService BlogService;
	 
	 @Autowired
	    private ChatService ChatService;



    @GetMapping({"/", "/home"})
    public String index(Model model) {  
    	 List<Blog> blogs = BlogService.getBlogs();
    	 model.addAttribute("blogs", blogs);
    	 List<Chat> chats = ChatService.getChats();
    	 model.addAttribute("chats", chats);
    	 
        return "index";
    }
    
    

    @GetMapping("/allcats")
    public String allcats(@RequestParam(required = false) String race, Model model) {
        List<Chat> chats;

        if (race != null) {
            // Filtrer par race si la race est spécifiée
            chats = ChatService.getChatsByRace(race);
        } else {
            // Sinon, obtenir tous les chats
            chats = ChatService.getChats();
        }

        model.addAttribute("chats", chats);
        model.addAttribute("selectedRace", race); // Ajouter la race sélectionnée pour le filtre
        return "all_cats";
    }
    
     
    @GetMapping("/showDetail/{id}")
    public String showCatDetail(@PathVariable("id") int id, Model model) {
        Chat chat = ChatService.getChatById(id);
        model.addAttribute("chat", chat);
        return "showDetail";
    }

    @GetMapping("/contact")
    public String contact() {   
        return "contact";
    }
    
    @PostMapping("/contact")
    public String contact(@ModelAttribute("Message") Message message) {
    	MessageService.saveMessage(message);
        return "redirect:/";
    }

}
