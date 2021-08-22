package me.tokyohyeon.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.UserVO;
import me.tokyohyeon.service.LoginService;

/**
 * Handles requests for the application home page.
 */
@AllArgsConstructor
@Controller
@Log4j
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private LoginService loginservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	 @RequestMapping("/member/checkSignup")
	    @ResponseBody
	    public Map<Object, Object> idcheck(@RequestBody String userid) {
	        
	        int count = 0;
	        Map<Object, Object> map = new HashMap<Object, Object>();
	        UserVO vo = new UserVO();
	        vo.setUserid(userid);
	        count = loginservice.checkSignup(vo);
	        map.put("cnt", count);
	 
	        return map;
	    }
	 


	
	@RequestMapping(value = "/member/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		
	
		return "project/user_register";
	}
	@RequestMapping(value = "/member/register", method = RequestMethod.POST)
	public String register(Locale locale, Model model,UserVO vo) {
		
		int a = loginservice.MemberInsert(vo);
		  if(a>0){
			  model.addAttribute("check",1);
			  model.addAttribute("alert","등록에 성공하였습니다.");
			  model.addAttribute("location","/member/login");
			  
			  return "/project/logincheck";
		  }else {
			  model.addAttribute("check",0);
			  model.addAttribute("alert","등록에 실패하셨습니다	");
			  model.addAttribute("location","/");
		  }
		  
		  return "/project/logincheck";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "project/login";
	}
	//new NetHttpTransport(), new JacksonFactory()
	@GetMapping("/kakao/login")
	public String kakao(Model model,HttpServletRequest request) {
		model.addAttribute("email",request.getParameter("email"));
		model.addAttribute("id",request.getParameter("id"));
		model.addAttribute("name",request.getParameter("nickname"));
		return "project/kakaologin";
	}
	
	@PostMapping("/kakaologin2")
	public String kakaoinfo(Model model, HttpServletRequest request,HttpSession session) {
		//여기서 kakaoEmail, kakaoId, kakaoName DB체크 
		//db에 가입정보 있으면 로그인처리후 메인페이지
		/*....*/  
		//가입정보 없을경우 실행
		model.addAttribute("email",request.getParameter("kakaoEmail"));
		model.addAttribute("id",request.getParameter("kakaoId"));
		model.addAttribute("name",request.getParameter("kakaoName"));
		logger.info("Name------------------"+request.getParameter("kakaoName"));
		
		  UserVO vo = new UserVO();
		  vo.setSnsid(request.getParameter("kakaoId"));
		  vo.setSnslogin("kakao");
		 
		  vo= loginservice.SNSLogin(vo);
		  
		  if(vo == null){
			  model.addAttribute("alert","등록되지 않은 SNS 아디 입니다 등록 페이지로 이동합니다");
			  model.addAttribute("location","/member/register");
			  
			  return "/project/logincheck";
		  }else {
				session.setAttribute("user", vo);
				log.info("kakao session check");
				log.info(session.getAttribute("user").toString());

		  }
		  return "redirect:/";
	}
	
	@GetMapping("/naver/login")
	public String naver(Model model, HttpServletRequest request) {
		return "project/naverlogin";
	}
	
	@PostMapping("/naver/login")
	public String naverinfo(Model model, HttpServletRequest request,HttpSession session) {
		//여기서 naverEmail, naverId, naverName DB체크 
		//db에 가입정보 있으면 로그인처리후 메인페이지
		//가입정보 없을경우 실행
		//model.addAttribute("email",request.getParameter("naverEmail"));
		//model.addAttribute("id",request.getParameter("naverId"));
		//model.addAttribute("name",request.getParameter("naverName"));
		  UserVO vo = new UserVO();
		  vo.setSnsid(request.getParameter("naverId"));
		  vo.setSnslogin("naver");
		  vo= loginservice.SNSLogin(vo);
		  
		  if(vo == null){
			  model.addAttribute("alert","등록되지 않은 SNS 아디 입니다 등록 페이지로 이동합니다");
			  model.addAttribute("location","/member/register");
			  
			  return "/project/logincheck";
		  }else {
				session.setAttribute("user", vo);
				log.info("naver session check");
				log.info(session.getAttribute("user").toString());

		  }
		  return "redirect:/";
	}
	
	@GetMapping("/google/login")
	public String google(Model model, HttpServletRequest request) {
		model.addAttribute("id_token",request.getParameter("id_token"));
		return "project/googlelogin";
	}
	
	@PostMapping("/googlelogin2")
	public String googleinfo(Model model, HttpServletRequest request,HttpSession session) throws GeneralSecurityException, IOException {
		GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), new JacksonFactory())
			    // Specify the CLIENT_ID of the app that accesses the backend:
			    .setAudience(Collections.singletonList("40180389921-f5esnb5f09ei6bnuj1q0e13h8rqs9v7p.apps.googleusercontent.com"))
			    // Or, if multiple clients access the backend:
			    //.setAudience(Arrays.asList(CLIENT_ID_1, CLIENT_ID_2, CLIENT_ID_3))
			    .build();
		String idTokenString = request.getParameter("id_token");
		GoogleIdToken idToken = verifier.verify(idTokenString);
		if (idToken != null) {
		  Payload payload = idToken.getPayload();

		  // Print user identifier
		  String userId = payload.getSubject();
		  System.out.println("User ID: " + userId);

		  // Get profile information from payload
		  String email = payload.getEmail();
		  String name = (String) payload.get("name");
		  model.addAttribute("id", userId);
		  model.addAttribute("name", name);
		  model.addAttribute("email", email);
		  model.addAttribute("socialType", "google");
		  
		  UserVO vo = new UserVO();
		  vo.setSnsid(userId);
		  vo.setSnslogin("google");
		  vo= loginservice.SNSLogin(vo);
		  
		  if(vo == null){
			  model.addAttribute("alert","등록되지 않은 SNS 아디 입니다 등록 페이지로 이동합니다");
			  model.addAttribute("location","/member/register");
			  
			  return "/project/logincheck";
		  }else {
				session.setAttribute("user", vo);
				log.info("google session check");
				log.info(session.getAttribute("user").toString());

		  }
	
		
		
	}
		  model.addAttribute("alert","뭔가 오류다 이기야~~ google 쪽임");
		  model.addAttribute("location","/member/register");
		  return "/project/logincheck";
	}
}