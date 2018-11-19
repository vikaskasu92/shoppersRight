package shoppersRight.dao;

import java.util.List;

import shoppersRight.model.LoginForm;
import shoppersRight.model.RegistrationForm;
import shoppersRight.model.SellerForm;

public interface ShoppersRightDAO {

	public int saveUsers(RegistrationForm registrationForm);
	public List<LoginForm> retrieveUsers(LoginForm loginForm);
	public int saveSellerProducts(SellerForm sellerForm,String loggedInUser);
	
}
