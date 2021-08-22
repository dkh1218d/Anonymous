package me.tokyohyeon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import me.tokyohyeon.domain.ProductVO;
import me.tokyohyeon.domain.StEndVO;
import me.tokyohyeon.mapper.ProductMapper;
import me.tokyohyeon.utils.ET_CETERA;

@Controller
@RequestMapping("/project/*")
@AllArgsConstructor
public class ShopController {

	private ProductMapper service;

	@GetMapping("/shop")
	public String list(Model model) 
	{
		StEndVO vo = new StEndVO();
		
		vo.setStartpage(0);
		vo.setEndpage(10);
		
		model.addAttribute("shoplist", service.getList(vo));
		
		return "project/shop";
	}
	
	@ResponseBody

	@GetMapping(value = "/shld/*", produces = "application/text; charset=UTF-8")
	public String list(HttpServletRequest request) 
	{
		String 			URL = request.getServletPath();
		JSONObject 		json_o;
		JSONArray 		json_a = new JSONArray();
		List<ProductVO> list;
		StEndVO 		vo;
		int 			pos = URL.lastIndexOf('/');
		int 			page;
		int				cnt = 0;
		final int		par_cnt = 10;
		
		if (pos++ == -1)
			return "{result:-1}";
	
		if (null == (URL = URL.substring(pos)))
			return "{result:-1}";

		if (false == ET_CETERA.isNumberic(URL))
			return "{result:-1}";
		
		if (2 > (page = Integer.parseInt(URL)))
			return "{result:-1}";
		
		vo = new StEndVO();
		
		vo.setStartpage((page - 1) * par_cnt);
		vo.setEndpage(page * par_cnt - 1);
		
		list = service.getList(vo);
		
		// java object -> json cov

		for (ProductVO cvo : list)
		{
			json_o = new JSONObject();
			json_o.put("image_alias", cvo.getImage_alias());
			json_o.put("p_price", cvo.getP_price());
			json_o.put("p_name", cvo.getP_name());
			json_a.add(json_o);
			
			++cnt;
		}
		
		return (cnt != par_cnt ? "1" : "") + json_a.toJSONString();
	}
}
