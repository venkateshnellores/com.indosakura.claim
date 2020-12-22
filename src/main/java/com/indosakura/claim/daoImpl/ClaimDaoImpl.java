package com.indosakura.claim.daoImpl;
import java.math.BigInteger;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.indosakura.claim.dao.ClaimDao;
import com.indosakura.claim.model.ClaimForm;
import com.indosakura.claim.model.User;

@Repository
public class ClaimDaoImpl extends JdbcDaoSupport implements ClaimDao {

	
	@Autowired 
	DataSource dataSource;
	
	
 	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
	}
	
	@Override
	public List<ClaimForm> getClaimList() {

		String sql = "SELECT * FROM claim";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		List<ClaimForm> result = new ArrayList<ClaimForm>();
		for(Map<String, Object> row:rows){
			ClaimForm form= new ClaimForm();
			form.setClaimId((BigInteger)row.get("id"));
			float amount=(float) row.get("claim_amount");
		// Date date = new Date(0);
		// SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		 //   Date date = new Date();  
		  //  formatter.format(date)
		 //((Date)row.get("creation_date"));
		   String time= "2017/11/06 12:11:58";
		   form.setCreationDate(time);
			form.setAmount(String.valueOf(amount));
			form.setEmployeeName((String)row.get("employee_name"));
			form.setRemark((String)row.get("remarks"));
			int status=(Integer)row.get("status");
			  if(status == 1)
			form.setClaimStatus("Expense Paid");
			  else
		    form.setClaimStatus("Pending");	  
			
			  result.add(form);
		}
		
		return result;
		
	}

	
	@Override
	public void insertExpense(ClaimForm form) {
		//expense_bill TODO Auto-generated method stub
	
		
	ClaimDaoImpl claimDao = new ClaimDaoImpl();
		
	String email="admin@gmail.com";
	//String name= claimDao.userNameByEmailId(email);
	
	  //System.out.println("---------------user name="+name);
		form.setEmployeeName("Akshay Jain");
		//form.setEmployeeName(name);
		String sql = "INSERT INTO claim " +
				"(employee_name ,claim_amount,creation_date, status, remarks, project, expense_type, perticulers, bill_attach,expense_bill)"
				+ " VALUES (?,?,?,?,?,?,?,?,?,?)" ;
		getJdbcTemplate().update(sql, new Object[]{form.getEmployeeName(),form.getAmount(),"2020-12-22 00:00:00",form.getStatus(),
		form.getRemark(),form.getProject(),form.getExpenseType(),form.getPerticulers(),form.getBillAttach(),form.getData()
		});
		
	}

	//@SuppressWarnings("deprecation")
	@Override
	public String userNameByEmailId(String email) {
		String sql="SELECT CONCAT(first_name,last_name) as full_name FROM auth_user where email= ? ";
    System.out.println("sql="+sql);
		
		return getJdbcTemplate().query(sql, new Object[] { email },new ResultSetExtractor<String>(){

			@Override
			public String extractData(ResultSet rs) throws SQLException, DataAccessException {
			 String userName="";
				while(rs.next()){  
					userName=(rs.getString("full_name")); 
				System.out.println("----------name----------"+userName);	
					  }
				return userName;
			}   
		   });  
		
	}
	

	/*
	String sql = "INSERT INTO claim " +
			"(employee_name ,claim_amount, status, remarks, project, expense_type, perticulers, bill_attach)"
			+ " VALUES (?,?,?,?,?,?,?,?)" ;
	getJdbcTemplate().update(sql, new Object[]{form.getEmployeeName(),form.getAmount(),form.getStatus(),
	form.getRemark(),form.getProject(),form.getExpenseType(),form.getPerticulers(),form.getBillAttach()
	});

	
	
	@Override
	public List<String> search(String keyword) {
		String sql = "SELECT * FROM palindrome where list like ? ";
		 return getJdbcTemplate().query(sql, new Object[] { "%" + keyword + "%" },new ResultSetExtractor<List<String>>(){  
		     public List<String> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		        List<String> list=new ArrayList<String>();  
		        while(rs.next()){  
		        list.add(rs.getString("list"));  
				  }
		        return list;  
		        }  
		    });  
	}*/
}



/*	id BIGINT(20) unsigned NOT NULL AUTO_INCREMENT,
employee_name varchar(50) DEFAULT NULL,
creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
claim_amount float(22,2) DEFAULT '0.00',
status int(1) DEFAULT 1,
remarks varchar(100) DEFAULT NULL,*/
//String sql = "SELECT * FROM claim ORDER BY list ASC";	

/*	INSERT INTO claim(employee_name,claim_amount,status,remarks) 
VALUES ('Akshay',2000 , 1 ,'food');

INSERT INTO claim(employee_name,claim_amount,status,remarks) 
VALUES ('Akshay',1500 , 1 ,'movie');

INSERT INTO claim(employee_name,claim_amount,status,remarks) 
VALUES ('Akshay',500 , 1 ,'train');

INSERT INTO claim(employee_name,claim_amount,status,remarks) 
VALUES ('Akshay',600 , 1 ,'coffee');

INSERT INTO claim(employee_name,claim_amount,status,remarks) 
VALUES ('Akshay',440 , 1 ,'bus');
String sql = "INSERT INTO palindrome " +
			"(list) VALUES (?)" ;
			perticulers varchar(50) NOT NULL,
bill_attach int(1) DEFAULT 2,
expenses varchar(50) NOT NULL,
expense_bill longblob,
*/