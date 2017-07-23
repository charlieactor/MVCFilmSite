package com.skilldistillery.film.controllers;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.Actor;
import com.skilldistillery.film.data.Film;
import com.skilldistillery.film.data.FilmDao;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDao dao;
	
	@RequestMapping(path = "home.do")
	public ModelAndView home() {
	  return new ModelAndView("WEB-INF/views/home.jsp");
	}

	@RequestMapping(path = "getTitle.do")
	public ModelAndView getFilmTitleById(@RequestParam(name = "filmId") Integer filmId) {
	  String viewName = "WEB-INF/views/home.jsp";
	  ModelAndView mv = new ModelAndView(viewName);
	  Film title = dao.getFilmById(filmId);
	  mv.addObject("filmTitle", title);
	  return mv;
	}
	
	@RequestMapping(path = "searchTitle.do")
	public ModelAndView getListOfFilmsBySearch(@RequestParam(name = "search")String search) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/home.jsp");
		mv.addObject("filmList", dao.getListOfFilmsBySearch(search));
		return mv;
	}
	
	@RequestMapping(path = "editThisMovie.do")
	public ModelAndView editCurrentMovie(@RequestParam(name = "id") int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/editMovie.jsp");
		mv.addObject("film", dao.getFilmById(id));
		return mv;
	}
	
	@RequestMapping(path = "editMovie.do")
	public ModelAndView editFilm(@RequestParam(name="id")int id, @RequestParam(name = "title") String title, @RequestParam(name="description")String description, @RequestParam(name="releaseYear")Date releaseYear, @RequestParam(name="rentalDuration")int rentalDuration, @RequestParam(name="rentalRate")double rentalRate, 
								@RequestParam(name="length") int length, @RequestParam(name="replacementCost") double replacementCost, @RequestParam(name="rating") String rating, @RequestParam(name="cast") List<Actor> cast, @RequestParam(name="languageId") int languageId, @RequestParam(name="specialFeatures") String specialFeatures) {
		ModelAndView mv = new ModelAndView();
		Film newFilm = new Film(id, title, description, releaseYear, rentalDuration, rentalRate, length, replacementCost, rating, cast);
		mv.setViewName("WEB-INF/views/home.jsp");
//		mv.addObject("filmTitle", dao.updateFilm(film1, film2));
		return mv;
		
	}
	
	@RequestMapping(path = "addNewFilm.do")
	public ModelAndView addFilm(@RequestParam(name = "title") String title, @RequestParam(name="description") String description, @RequestParam(name="releaseYear") Date releaseYear, @RequestParam(name = "rating") String rating, @RequestParam(name="length") int length) {
		ModelAndView mv = new ModelAndView();
		Film newbie = new Film();
		newbie.setTitle(title);
		newbie.setDescription(description);
		newbie.setReleaseYear(releaseYear);
		newbie.setLength(length);
		newbie.setRating(rating);
		newbie.setLanguageId(1);
		newbie.setRentalDuration(7);
		newbie.setRentalRate(1.99);
		newbie.setReplacementCost(19.99);
		newbie.setSpecialFeatures("none");
		mv.setViewName("WEB-INF/views/home.jsp");
		mv.addObject("filmTitle", dao.addFilm(newbie));
		return mv;
	}
	


}
