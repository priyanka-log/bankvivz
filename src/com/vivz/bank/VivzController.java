package com.vivz.bank;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Hashtable;


@Controller
public class VivzController {
	
	@RequestMapping("/")
	public ModelAndView welcomeLocator()
	{
		ModelAndView model=new ModelAndView("index");
		return model;
	}
	
	@RequestMapping(value="/AddUsers", method=RequestMethod.POST)
	public ModelAndView addUsers(@RequestParam("username") String username,@RequestParam("password") String password)
	{
		ModelAndView model=new ModelAndView("doRegister");
		SupportController supcontroller=new SupportController();
		supcontroller.addUsers(username, password);
		return model;
	}
	@RequestMapping(value="/doAccount", method=RequestMethod.POST)
	public ModelAndView doAccount(@RequestParam("accountholdername") String accountholdername,@RequestParam("accno") int accnumber,@RequestParam("acc_type")String acc_type,@RequestParam("pinnumber") String pinnumber,HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView("doAccount");
		request.getSession().setAttribute("accountholdername",accountholdername);
		request.getSession().setAttribute("accnumber",accnumber);
		//request.getSession().setAttribute("acc_type",acc_type);
		
		
		System.out.println("success");
		
		return model;
	}
	@RequestMapping(value="/doDeposit", method=RequestMethod.POST)
	public ModelAndView doDeposit(@RequestParam("accnumber") int accnumber,@RequestParam("Amount") int Amount,HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView("doDeposit");
		
		Hashtable<Integer,Integer> ht = new Hashtable<Integer, Integer>();
		ht.put(accnumber, Amount);
		request.getSession().setAttribute("Amount",Amount);
		System.out.println("success");
		
		return model;
	}
	@RequestMapping(value="/get-balance-final", method=RequestMethod.POST)
	public ModelAndView doAccount(@RequestParam("accnumber") int accnumber,HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView("get-balance-final");
		
		
		request.getSession().setAttribute("accnumber",accnumber);
		System.out.println("success");
		
		return model;
	}
	@RequestMapping(value="/ValidateLogin", method=RequestMethod.POST)
	public ModelAndView validateLogin(@RequestParam("username") String username,@RequestParam("password") String password,HttpServletRequest request)
	{
		ModelAndView model;
		SupportController supcontroller=new SupportController();
		if(supcontroller.checkUser(username, password))
		{
			model=new ModelAndView("doLogin");
			//model.addObject("username",username);
			request.getSession().setAttribute("username",username);
		}
		else
		{
			model=new ModelAndView("index");
			
		}
		
		return model;
	}
	
	@RequestMapping("/random")
	public ModelAndView random(HttpServletRequest request)
	{
		
		long timeSeed = System.nanoTime();  
        double randSeed = Math.random() * 1000; 
        long midSeed = (long) (timeSeed * randSeed); 
        String s = midSeed + "";
        String subStr = s.substring(0, 9);
        int accnumber = Integer.parseInt(subStr); 
        
        //pin number
        int pinnumber = (int)(Math.random()*9000)+1000;
        
        ModelAndView model=new ModelAndView("account");
		model.addObject("accnumber",accnumber);
		request.getSession().setAttribute("pinnumber",pinnumber);
		request.getSession().setAttribute("accnumber",accnumber);
		
			
		
		return model;
		
		
		
	}
	

}
