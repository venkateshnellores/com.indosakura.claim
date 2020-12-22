package com.indosakura.claim.model;

import java.io.Serializable;
import java.math.BigInteger;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ClaimForm implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private BigInteger claimId;
	private String creationDate;
	private String employeeName;
	private int status;
	private String claimStatus;
	private String remark;
	private String amount;
	private MultipartFile file;
	private byte[] data;
	
/*---------------------------------*/	
	private String project;
	private int expenseType;
	private String expenses;
	private String particulars;
	private int billAttach;
	
	
	public int getExpenseType() {
		return expenseType;
	}
	public void setExpenseType(int expenseType) {
		this.expenseType = expenseType;
	}

	public int getBillAttach() {
		return billAttach;
	}
	public void setBillAttach(int billAttach) {
		this.billAttach = billAttach;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public BigInteger getClaimId() {
		return claimId;
	}
	public void setClaimId(BigInteger claimId) {
		this.claimId = claimId;
	}
	public String getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getClaimStatus() {
		return claimStatus;
	}
	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	public String getExpenses() {
		return expenses;
	}
	public void setExpenses(String expenses) {
		this.expenses = expenses;
	}
	public byte[] getData() {
		return data;
	}
	public void setData(byte[] data) {
		this.data = data;
	}
	public String getParticulars() {
		return particulars;
	}
	public void setParticulars(String particulars) {
		this.particulars = particulars;
	}
	
}
