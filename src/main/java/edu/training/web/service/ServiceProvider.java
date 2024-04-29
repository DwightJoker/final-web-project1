package edu.training.web.service;

import edu.training.web.service.implement.NewsServiceImplement;
import edu.training.web.service.implement.UserServiceImplement;

public class ServiceProvider {
	
	private static final ServiceProvider instance = new ServiceProvider();
	
	private static UserService userService = new UserServiceImplement();
	private static NewsService newsService = new NewsServiceImplement();
	
	private ServiceProvider() {
	}
	
	public static ServiceProvider getInstance() {
		return instance;
	}
	
	public UserService getUserService() {
		return userService;
	}
	
	public NewsService getNewsService() {
		return newsService;
	}


}
