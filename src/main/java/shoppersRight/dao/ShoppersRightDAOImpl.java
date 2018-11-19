package shoppersRight.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import shoppersRight.model.LoginForm;
import shoppersRight.model.RegistrationForm;
import shoppersRight.model.SellerForm;

@Component
public class ShoppersRightDAOImpl implements ShoppersRightDAO{
	@Autowired
	private JdbcTemplate jdbcTemplate;  
	  
	public int saveUsers(RegistrationForm registrationForm){  
	    String query="insert into users values('"+registrationForm.getFirstName()+"','"+registrationForm.getLastName()+"','"+registrationForm.getUsername()+"','"+registrationForm.getPassword()+"','"+registrationForm.getConfirmPassword()+"','"+registrationForm.getEmail()+"','"+registrationForm.getAddLine1()+"','"+registrationForm.getAddLine2()+"','"+registrationForm.getCity()+"','"+registrationForm.getState()+"','"+registrationForm.getZipcode()+"','"+registrationForm.getUserType()+"')";  
	    return jdbcTemplate.update(query);  
	}  
	
	public List<LoginForm> retrieveUsers(LoginForm loginForm){  
	    String query="select username,password,userType from users where username='"+loginForm.getUsername()+"'";  
	    return jdbcTemplate.query(query,new BeanPropertyRowMapper<LoginForm>(LoginForm.class));
	}

	@Override
	public int saveSellerProducts(SellerForm sellerForm, String loggedInUser) {
		String query="insert into seller values('"+sellerForm.getProductName()+"','"+sellerForm.getProductImage()+"','"+sellerForm.getMemberCost()+"','"+sellerForm.getMemberCost()+"','"+sellerForm.getNonMemberCost()+"','"+sellerForm.getItemNumber()+"','"+sellerForm.getStockAvailable()+"','"+sellerForm.getShipsWithin()+"') where loggedInUser ="+loggedInUser;  
	    return jdbcTemplate.update(query); 
	}  

}
