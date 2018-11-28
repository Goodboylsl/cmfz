package com.baizhi.controller;

import com.baizhi.entity.Menu;
import com.baizhi.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/menu")
public class MenuControler {

	@Autowired
	MenuService menuService;

	/*@RequestMapping("/showAllByMenu")
	public String ShowAllByMenu(Map map){

		List<Menu> menus = menuService.ShowAllByMenu();
		//System.out.println(menus);
		map.put("menus",menus);

		return "forward:/main/main.jsp";

	}
*/

	@RequestMapping("/showAllByMenu")
	public @ResponseBody List<Menu> ShowAllByMenu(){

		List<Menu> menus = menuService.ShowAllByMenu();
		//System.out.println(menus);

		return menus;

	}


}
