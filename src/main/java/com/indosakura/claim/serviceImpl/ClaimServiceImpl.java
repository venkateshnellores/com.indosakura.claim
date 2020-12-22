package com.indosakura.claim.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indosakura.claim.dao.ClaimDao;
import com.indosakura.claim.model.ClaimForm;
import com.indosakura.claim.service.ClaimService;

@Service
public class ClaimServiceImpl implements ClaimService {

	
	@Autowired
	ClaimDao claimDao;

		
	@Override
	public List<ClaimForm> getClaimList() {
		return claimDao.getClaimList();
	}


	@Override
	public void insertExpense(ClaimForm form) {
		claimDao.insertExpense(form);		
	}

}
