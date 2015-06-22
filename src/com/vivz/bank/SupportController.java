package com.vivz.bank;

import java.util.HashMap;
import java.util.Set;

public class SupportController {
	static 	HashMap<String, String> map=new HashMap<String,String>();

	void addUsers(String username,String password)
	{
		map.put(username, password);
	}
	
	boolean checkUser(String name,String password)
	{
		boolean isUserPresent=false;
		Set<String> set=map.keySet();
		for(String str:set)
		{
			if(str.equalsIgnoreCase(name))
			{
				if(password.equals(map.get(str)))
				{
					isUserPresent=true;
					break;
				}
			}
		}
		return isUserPresent;
	}

}
