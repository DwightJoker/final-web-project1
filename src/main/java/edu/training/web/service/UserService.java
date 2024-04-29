package edu.training.web.service;

import edu.training.web.bean.AuthInfo;
import edu.training.web.bean.User;

public interface UserService {
	
	User logIn(AuthInfo authInfo);
	
	User editProfile();
	
	User deleteAccount();
	
	User saveNews();
	
	User hideNews();



}
