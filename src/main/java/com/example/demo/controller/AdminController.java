package com.example.demo.controller;




import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.*;
import com.example.demo.entity.Produit;
import com.example.demo.entity.Blog;
import com.example.demo.entity.Message;
import com.example.demo.entity.Chat;

import com.example.demo.service.ProduitService;
import com.example.demo.service.BlogService;
import com.example.demo.service.MessageService;
import com.example.demo.service.ChatService;

@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private ProduitService produitService;

    @Autowired
    private BlogService BlogService;
    
    @Autowired
    private MessageService MessageService;
    
    @Autowired
    private ChatService ChatService;
    
    
    
    
    @GetMapping({"/", "/home"})
    public String index() {   
        return "adminPanel/home";
    }
    
    
    
    //-----------------blogs--------------------
    
    @GetMapping({"/blog", "/blog"})
    public String index(Model model) { 
    	  List<Blog> blogs = BlogService.getBlogs();
          model.addAttribute("blogs", blogs);
        return "adminPanel/blog/blog";
    }
    
    @PostMapping("/addblog")
    public String addblog(@ModelAttribute("blog") Blog blog) {
    	 blog.setDate_publication(java.sql.Date.valueOf(LocalDate.now()));
    	BlogService.saveBlog(blog);
        return "redirect:/admin/blog";
    }

    @GetMapping("/editblog/{id}")
    public String editblogForm(@PathVariable int id, Model model) {
        Blog blog = BlogService.getBlogById(id);
        model.addAttribute("blog", blog);
        return "adminPanel/blog/edit";
    }

    @PostMapping("/editblog/{id}")
    public String editblog(@PathVariable int id, @ModelAttribute Blog blog) {
        blog.setId(id);
        BlogService.updateBlog(blog);
        return "redirect:/admin/blog";
    }
   
    @GetMapping("/deleteblog/{id}")
    public String deleteblog(@PathVariable int id) {
      BlogService.deleteBlog(id);
      return "redirect:/admin/blog";
    }
    
    //------------------------------Messages--------------------
    
    @GetMapping("/message")
    public String message(Model model) { 
    	  List<Message> messages = MessageService.getMessages();
          model.addAttribute("messages", messages);
        return "adminPanel/message";
    }
    
    @GetMapping("/deletemessage/{id}")
    public String deleteMessage(@PathVariable int id) {
      MessageService.deleteMessage(id);
      return "redirect:/admin/message";
    }
    
    
    
    
    //----------------------------------Cat-----------------------
    
    
    @GetMapping("/cat")
    public String cat(Model model) { 
    	  List<Chat> chats = ChatService.getChats();
          model.addAttribute("chats", chats);
        return "adminPanel/cat/cat";
    }
    
    @PostMapping("/addcat")
    public String addcat(@ModelAttribute("cat") Chat chat) {
    	ChatService.saveChat(chat);
        return "redirect:/admin/cat";
    }

    @GetMapping("/editcat/{id}")
    public String editcatForm(@PathVariable int id, Model model) {
        Chat chat = ChatService.getChatById(id);
        model.addAttribute("chat", chat);
        return "adminPanel/cat/edit";
    }

    @PostMapping("/editcat/{id}")
    public String editcat(@PathVariable int id, @ModelAttribute Chat chat) {
        chat.setId(id);
        ChatService.updateChat(chat);
        return "redirect:/admin/cat";
    }
   
    @GetMapping("/deletecat/{id}")
    public String deletecat(@PathVariable int id) {
      ChatService.deleteChat(id);
      return "redirect:/admin/cat";
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //---------------------------Users------------------------------
    @GetMapping({"/product", "/product"})
    public String product() {   
        return "adminPanel/product";
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
