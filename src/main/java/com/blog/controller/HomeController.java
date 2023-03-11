package com.blog.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.blog.dao.PostsDao;
import com.blog.dao.PostsRepository;
import com.blog.dao.UserDao;
import com.blog.dao.UserRepository;
import com.blog.model.UploadData;

@Controller
public class HomeController {
   @Autowired
   private UserRepository userRepository;
   @Autowired
   private PostsRepository postsRepository;
	
   @RequestMapping("/upload")
   public ModelAndView showForm() {
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("upload");
		return mv;
	}
	
	
	@RequestMapping(path = "/do_upload", method = RequestMethod.POST)
	public String handleForm(
			@RequestParam("type") MultipartFile type, @RequestParam("w3review") String caption, Model model)
			throws IOException {

		System.out.println("Do-update Page");

		String fileName = StringUtils.cleanPath(type.getOriginalFilename());

		model.addAttribute("type", fileName);
		model.addAttribute("w3review", caption);

		UploadData user = new UploadData();
		user.setType(fileName);
		user.setCaption(caption);

		UploadData savedUser = this.postsRepository.save(user);
		

		String saveDir = "src/main/webapp/images/" + savedUser.getPostId();

		Path uploadPath = Paths.get(saveDir);

		if (!Files.exists(uploadPath)) {
			Files.createDirectories(uploadPath);
		}

		try (InputStream inputStream = type.getInputStream()) {
			Path filePath = uploadPath.resolve(fileName);
			Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
		} catch (IOException ioe) {
			throw new IOException("Could not save image file: " + fileName, ioe);
		}

//        List<User> list = new ArrayList<User>();       
//        list = (List<User>) this.userRepository.findAll();
//        model.addAttribute("list", list);

		return "home";
	}
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private PostsDao postDao;

	@RequestMapping("home")
	public ModelAndView postUser(ModelAndView model) {
		
		List<UploadData> listPosts = postDao.posts();
		model.addObject("listPosts", listPosts);
		System.out.println("Number of posts : " + listPosts.size());
		model.setViewName("home");
		
		return model;
	
    }
	@GetMapping("/like/{id}")
	public String likePost(@PathVariable int id) {
		ModelAndView mv=new ModelAndView();
		System.out.println(id);
		this.userDao.like(id);
		return "Liked";
	}
}
