package com.indosakura.claim.service;

import java.util.List;

import com.indosakura.claim.model.ClaimForm;

public interface ClaimService {

	List<ClaimForm> getClaimList();
	
	void insertExpense(ClaimForm form);

}


/*	boolean stringExist(String palindrome);
void insertPalindromeList(ListForm form);*/
/*	public int count();
List<ListForm> getListByPage(int pageid, int total);
List<String> search(String parameter);*/
