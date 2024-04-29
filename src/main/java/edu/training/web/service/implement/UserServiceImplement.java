package edu.training.web.service.implement;

import edu.training.web.bean.AuthInfo;
import edu.training.web.bean.User;
import edu.training.web.service.UserService;

public class UserServiceImplement implements UserService{

	@Override
	public User logIn(AuthInfo authInfo) {
		
			if("jokermc@mail.ru".equals(authInfo.getLogin()) && "111".equals(authInfo.getPassword())) {
				return new User("admin");
			} 
			if ("user@mail.ru".equals(authInfo.getLogin()) && "222".equals(authInfo.getPassword())) {
				return new User("user");
			}  
		return null;	
	}

	@Override
	public User editProfile() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public User deleteAccount() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public User saveNews() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public User hideNews() {
		// TODO Auto-generated method stub
		return null;
	}
	
}