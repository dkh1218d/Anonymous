package me.tokyohyeon.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.Criteria;
import me.tokyohyeon.domain.UserVO;
import me.tokyohyeon.domain.pageDTO;
import me.tokyohyeon.service.AdminService;

@Controller
@Log4j
@RequestMapping({ "/admin/*", "/admin" })
@AllArgsConstructor
public class AdminController {

	AdminService service;
	@GetMapping({ "" })
	public String Adminhome() {
		log.info("/get or modify");

		return "admin/index";

	}

	@GetMapping({ "/userlist" })
	public String userlist(Criteria cri, Model model) {
		log.info("userlist");
		int total = service.MemberTotalCount(cri);
		model.addAttribute("list", service.getMemberListWithPaging(cri));
		model.addAttribute("pageMaker", new pageDTO(cri, total));
		return "admin/userlist";

	}
	
	@GetMapping({ "/menulist" })
	public String menulist(Model model) {
		log.info("menulist");
	
		return "admin/menulist";

	}
	@GetMapping({ "/griduserlist" })
	public String griduserlist(Criteria cri, Model model) {
		log.info("userlist");
		/*
		 * int total = service.MemberTotalCount(cri); model.addAttribute("list",
		 * service.getMemberListWithPaging(cri)); model.addAttribute("pageMaker", new
		 * pageDTO(cri, total));
		 */
		return "admin/griduserlist";

	}
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/gridjsonlist") public List<UserVO> join(Criteria cri) {
	 * return service.getMemberListWithPaging(cri); }
	 */
	
	@GetMapping(value = "/gridjsonlist", 
			produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<UserVO>> getList() {


		log.info("gg");
		return  new ResponseEntity<>(service.gridMemberList(), HttpStatus.OK);
	}
	
	/*
	 * @GetMapping({"/get","/modify"}) public void get(@RequestParam("bno") Long
	 * bno,@ModelAttribute("cri")Criteria cri,Model model) {
	 * log.info("/get or modify"); model.addAttribute("board",service.get(bno)); }
	 * 
	 * 
	 * @GetMapping("get") public void get(long bno,Model model) { log.info("get~");
	 * model.addAttribute("board",service.get(bno)); }
	 * 
	 * @GetMapping("modify") public void modify(long bno,Model model) { BoardVO
	 * board = service.get(bno); model.addAttribute("board",board);
	 * 
	 * }
	 * 
	 * @PostMapping("modify") public String modify(BoardVO
	 * board,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
	 * 
	 * service.modify(board); rttr.addAttribute("pageNum",cri.getPageNum());
	 * rttr.addAttribute("amount",cri.getAmount()); return
	 * "redirect:/board/get?bno="+board.getBno(); }
	 * 
	 * @PostMapping("remove") public String remove(@RequestParam long
	 * bno,RedirectAttributes rttr) { log.info("remove"+bno); service.remove(bno);
	 * rttr.addFlashAttribute("result",bno);
	 * rttr.addFlashAttribute("gubun","delete"); return
	 * "redirect:/project/checkout"; }
	 * 
	 * 
	 */

}
