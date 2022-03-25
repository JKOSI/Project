package com.john.wilbur.demo.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.john.wilbur.demo.models.Review;
import com.john.wilbur.demo.models.User;
import com.john.wilbur.demo.services.ReviewService;
import com.john.wilbur.demo.services.UserService;
import com.john.wilbur.demo.validator.UserValidator;

@Controller
public class HomeController {
    @Autowired
	private  UserService userService;
	
	@Autowired
	private UserValidator userValidator;

	@Autowired 
	private ReviewService reviewService;

	@GetMapping("/")
	public String index(@ModelAttribute("user") User user) {
		return "index.jsp";
	}

//  Register a User
	@PostMapping("/registration")
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult results, HttpSession session) {
		userValidator.validate(user, results);
		if(results.hasErrors()) {
			return "index.jsp";
		}else {
			User newUser=userService.registerUser(user);
			session.setAttribute("userId", newUser.getId());
			return "redirect:/home";
		}
	}

//  Login
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session, RedirectAttributes redirectAttributes) {
        // if the user is authenticated, save their user id in session
		if(userService.authenticateUser(email, password)) {
			User user=userService.findByEmail(email);
			session.setAttribute("userId", user.getId());
			return "redirect:/home";
		}else {
			redirectAttributes.addFlashAttribute("error","Invalid user/pass");
			return "redirect:/";
		}
	}

//	Logout
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}



// **********************Review Routes************************* 


//   homepage
@GetMapping("/home")
public String Reviews(Model model,HttpSession session) {
	if(session.getAttribute("userId")!=null) {
		User user=userService.findById((Long)session.getAttribute("userId"));
		model.addAttribute("user",user);
		model.addAttribute("reviews", reviewService.allReviews());
		return "home.jsp";
	}else {
		return "redirect:/";
	}
	
}

//		New Review 
@GetMapping("/home/new")
public String newReview(@ModelAttribute("newReview") Review review, HttpSession session) {
	if(session.getAttribute("userId")!=null) {	
		return "new.jsp";
	}
	else {
		return "redirect:/";
	}
	
}

//		Create Review 
@PostMapping("/home/create")
public String createShow(@Valid @ModelAttribute("newShow") Review review, BindingResult results) {
	if(results.hasErrors()) {
		return "new.jsp";
	}else {
		reviewService.createReview(review);
		return "redirect:/home";
	}
}

//      Get Review details 
@GetMapping("/home/{id}")
public String reviewDetails(@PathVariable("id") Long id, Model model) {
	model.addAttribute("review", reviewService.reviewDetails(id));
	return "review.jsp";
}

//      Go to edit page
@GetMapping("/home/{id}/edit")
public String reviewEdit(@PathVariable("id")Long id, HttpSession session, Model model) {
	Review review=reviewService.reviewDetails(id);
	model.addAttribute("review", review);
	return "edit.jsp";
}

//		Problem child
@PutMapping("/home/{id}/edit")
public String updateReview(@Valid @ModelAttribute("reveiws") Review review, BindingResult result,  Model model) {
	if (result.hasErrors()) {
		model.addAttribute("review", review);
		return "edit.jsp";
	} else {
		this.reviewService.updateReview(review);
		return "redirect:/home";
	}
}

//      Delete Show
@GetMapping("/home/{id}/delete")
public String deleteReview(@PathVariable("id") Long id) {
	reviewService.deleteReview(id);
	return "redirect:/home";
}


// *********** NAV BAR *********** //
@GetMapping("/about")
public String About(Model model,HttpSession session) {
	if(session.getAttribute("userId")!=null) {
		User user=userService.findById((Long)session.getAttribute("userId"));
		model.addAttribute("user",user);
		model.addAttribute("reviews", reviewService.allReviews());
		return "about.jsp";
	}else {
		return "redirect:/";
	}
}

@GetMapping("/contact")
public String Contact(Model model,HttpSession session) {
	if(session.getAttribute("userId")!=null) {
		User user=userService.findById((Long)session.getAttribute("userId"));
		model.addAttribute("user",user);
		model.addAttribute("reviews", reviewService.allReviews());
		return "contact.jsp";
	}else {
		return "redirect:/";
	}
}
@GetMapping("/news")
public String News(Model model,HttpSession session) {
	if(session.getAttribute("userId")!=null) {
		User user=userService.findById((Long)session.getAttribute("userId"));
		model.addAttribute("user",user);
		model.addAttribute("reviews", reviewService.allReviews());
		return "news.jsp";
	}else {
		return "redirect:/";
	}
}

}