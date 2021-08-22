package me.tokyohyeon.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import me.tokyohyeon.domain.BoardVO;
import me.tokyohyeon.domain.Criteria;
import me.tokyohyeon.domain.pageDTO;
import me.tokyohyeon.service.BoardService;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	/*
	 * @GetMapping
	 * ("/list") public void list(Model model) { log.info("list");
	 * 
	 * model.addAttribute("list",service.getList()); }
	 */
	@GetMapping("/list")
	public void list(Criteria cri,Model model) {
		log.info("list"+cri);
		int total = service.getTotal(cri);
		model.addAttribute("list",service.getList(cri));
		log.info(service.getList(cri));
		model.addAttribute("pageMaker",new pageDTO(cri,total));
	}
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register"+board);
		service.register(board);
		rttr.addFlashAttribute("result",board.getBno());
		return "redirect:/board/list";
	}

	@GetMapping("register")
	public void register() {
		
		log.info("get register....");

		
			
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("bno") Long bno,@ModelAttribute("cri")Criteria cri,Model model) {
		log.info("/get or modify");
		model.addAttribute("board",service.get(bno));
	}
	
	/*
	 * @GetMapping("get") public void get(long bno,Model model) { log.info("get~");
	 * model.addAttribute("board",service.get(bno)); }
	 * 
	 * @GetMapping("modify") public void modify(long bno,Model model) { BoardVO
	 * board = service.get(bno); model.addAttribute("board",board);
	 * 
	 * }
	 */
	@PostMapping("modify")
	public String modify(BoardVO board,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
	
		service.modify(board);
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
	return "redirect:/board/get?bno="+board.getBno();
	}
	
	@PostMapping("remove")
	public String remove(@RequestParam long bno,RedirectAttributes rttr) {
		log.info("remove"+bno);
		service.remove(bno);
		rttr.addFlashAttribute("result",bno);
		rttr.addFlashAttribute("gubun","delete");
		return "redirect:/project/checkout";
	}
	

}
