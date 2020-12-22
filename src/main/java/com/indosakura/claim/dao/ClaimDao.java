package com.indosakura.claim.dao;

import java.util.List;

import com.indosakura.claim.model.ClaimForm;
import com.indosakura.claim.model.User;



public interface ClaimDao {

	public List<ClaimForm> getClaimList();
	
	public void insertExpense(ClaimForm form);
	
	public String userNameByEmailId(String string);
	
}
