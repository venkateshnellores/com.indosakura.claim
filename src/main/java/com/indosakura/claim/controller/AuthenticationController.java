package com.indosakura.claim.controller;
import java.io.IOException;
import java.util.ArrayList;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.indosakura.claim.URLConstants;
import com.indosakura.claim.model.ClaimForm;
import com.indosakura.claim.service.ClaimService;

@Controller
public class AuthenticationController {
	
	@Autowired
	ClaimService claimService;

	
 private static String UPLOADED_FOLDER = "D://Work//";

	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("extralogin");
		//modelAndView.setViewName("LOGIN"); // resources/template/login.html
		return modelAndView;
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(ClaimForm claimform,
			BindingResult result) {
		ModelAndView model = new ModelAndView();
		List<ClaimForm> list = claimService.getClaimList();
		model.addObject("claimform",claimform);
		model.addObject("list", list);
		model.setViewName("claimList"); // resources/template/home.html
		return model;
	}
	
	
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView();
		// User user = new User();
		// modelAndView.addObject("user", user); 
		modelAndView.setViewName("home"); // resources/template/register.html
		return modelAndView;
	}
	

	@RequestMapping(value = "/home", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response,
			ClaimForm claimform ,Model model) {
		ModelAndView modelAndView = new ModelAndView();
	
		List<ClaimForm> list = claimService.getClaimList();
		modelAndView.addObject("claimform",claimform);
		modelAndView.addObject("list", list);
		modelAndView.setViewName("claimList");
		return modelAndView;
	}
	
	@RequestMapping(value = URLConstants.CLAIM_CREATE, method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView claimCreate(HttpServletRequest request, HttpServletResponse response,
			ClaimForm claimform , Model model) {
		ModelAndView modelAndView = new ModelAndView();

		//     model.addAttribute("itemPerPageList", 10);
		System.out.println("create claim hit controller");
	//	List<ClaimForm> list = claimService.getClaimList();
		//	System.out.println(list.size());
		//	System.out.println(list.get(0).getAmount());
			modelAndView.addObject("claimform",claimform);
		//	modelAndView.addObject("list", list);
			modelAndView.setViewName("claimCreate");

			return modelAndView;
			
		//return new ModelAndView("claimList", "claimform", claimform);
}

	@RequestMapping(value = "claim/claimSave", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView claimSave(HttpServletRequest request, HttpServletResponse response,
			ClaimForm claimform ,@RequestParam("file") MultipartFile file ,Model model) throws IOException {
		ModelAndView modelAndView = new ModelAndView();
		MultipartFile mfile = claimform.getFile();
		//Byte byte=mfile.getBytes();
		claimform.setData(mfile.getBytes());
		System.out.println("--------------mfile byte"+mfile.getBytes()+" date "+ claimform.getCreationDate());
		
		claimService.insertExpense(claimform);		
		System.out.println("claim create successfully");
		List<ClaimForm> list = claimService.getClaimList();
		modelAndView.addObject("claimform",claimform);
		modelAndView.addObject("list", list);
		modelAndView.setViewName("claimList");
	//	return new ModelAndView("redirect:"+ "/Home");
		return modelAndView;	
	}
	
		
	
	/*	    String message = "";
		    *  try {
		    //  storageService.save(file);
		      message = "Uploaded the file successfully: " + file.getOriginalFilename();
		      return ResponseEntity.status(HttpStatus.OK).body(new ResponseMessage(message));
		    } catch (Exception e) {
		      message = "Could not upload the file: " + file.getOriginalFilename() + "!";
		      return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(new ResponseMessage(message));
		    }
	}
  */

	
	//	modelAndView.setViewName("claimCreate");	
	//modelAndView.setViewName("home");
//	modelAndView.setViewName("home"); // resources/template/home.html

//		return new ModelAndView("claimCreate", "claimform", claimform);
//}

	
	/*@RequestMapping(value ="/save",method = RequestMethod.POST)
	public ModelAndView savePalindromeString(@Valid ListForm listform,
			BindingResult result, Model model,RedirectAttributes redirectAttributes) {
		List<ListForm> list = palindromeService.getAllList();
		String original=listform.getList();
		String reverse="";
		
		if(original.length() > 100) {
			 model.addAttribute("errorMsg","String length is invalid please enter valid string length less than 100 charcter");
			 model.addAttribute("list", list);
		    return new ModelAndView("/palindromeList","listform",listform);		 
		 }
		 
		  for(int i=original.length()-1;i>=0;i--) {
			  reverse+=original.charAt(i);
		  }
		if(!original.equalsIgnoreCase(reverse)) { 
	      model.addAttribute("errorMsg","String is not palindrome");
		  model.addAttribute("list", list);
		  return new ModelAndView("/palindromeList","listform",listform);
		}
        boolean isExist=palindromeService.stringExist(original);
        if(isExist == true) {
          model.addAttribute("errorMsg","String is already Exist in database");
   		  model.addAttribute("list", list);
   		  return new ModelAndView("/palindromeList","listform",listform);
        }
		palindromeService.insertPalindromeList(listform);			 
		return new ModelAndView("redirect:"+ "/welcome");
	}*/
	
	
}

/*	@PostMapping("/uploadFileModelAttribute")
public String submit(@ModelAttribute FormDataWithFile formDataWithFile, ModelMap modelMap) {

    modelMap.addAttribute("formDataWithFile", formDataWithFile);
    return "fileUploadView";
}
*/
/*@RequestMapping(value = URLConstants.TIME_SHEET_MANAGEMENT_MASTER, method = { RequestMethod.GET, RequestMethod.POST })
public ModelAndView timeSheet(@RequestMapping(value = URLConstants.TIME_SHEET_MANAGEMENT_MASTER, method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView timeSheet(HttpServletRequest request, HttpServletResponse response,
			TimeSheetForm tForm, Model model) {
		    int rows=0;    
		    int customerId=getCustomerId(request);
			long loggedUserId = getLoggedInUserId(request);
			int year=Calendar.getInstance().get(Calendar.YEAR);
			int month=Calendar.getInstance().get(Calendar.MONTH);
			tForm.setCustomerId(customerId);
			tForm.setYear(String.valueOf(year));
			tForm.setMonth(String.valueOf(month));
		    rows=timeLogic.checkMonthAndYear(customerId, tForm);
		    LOG.info(" exist rows="+rows);
		    model.addAttribute("timeSheetExist",rows);
		    model.addAttribute("userId",loggedUserId);
			model.addAttribute("monthList", PlatformUtil.getMonthList());
			model.addAttribute("itemPerPageList", PlatformUtil.getItemsPerPageList());
			model.addAttribute("yearList", PlatformUtil.getYearList());
		    return new ModelAndView("timeSheetList", "tForm", tForm);
	},
		TimeSheetForm tForm, Model model) {
	    int rows=0;    
	    int customerId=getCustomerId(request);
		long loggedUserId = getLoggedInUserId(request);
		int year=Calendar.getInstance().get(Calendar.YEAR);
		int month=Calendar.getInstance().get(Calendar.MONTH);
		tForm.setCustomerId(customerId);
		tForm.setYear(String.valueOf(year));
		tForm.setMonth(String.valueOf(month));
	    rows=timeLogic.checkMonthAndYear(customerId, tForm);
	    LOG.info(" exist rows="+rows);
	    model.addAttribute("timeSheetExist",rows);
	    model.addAttribute("userId",loggedUserId);
		model.addAttribute("monthList", PlatformUtil.getMonthList());
		model.addAttribute("itemPerPageList", PlatformUtil.getItemsPerPageList());
		model.addAttribute("yearList", PlatformUtil.getYearList());
	    return new ModelAndView("timeSheetList", "tForm", tForm);
}
	/*@RequestMapping("/welcome")
	public ModelAndView getPalindromeString(@Valid ListForm listform,
			BindingResult result) {
		List<ListForm> list = palindromeService.getAllList();
		ModelAndView model = new ModelAndView("palindromeList");
		model.addObject("listform",listform);
		model.addObject("list", list);
		return model;
	}*/

