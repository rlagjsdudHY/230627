package com.proj.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.board.dao.PCDao;
import com.proj.board.svc.NoticeInf;


@Controller
public class BoardController {
	
	@Autowired //게시판 DAO 객체
	private NoticeInf noticeInf;
	
	@Autowired // 멤버테이블 DAO 객체
	private PCDao pCDao;
	
	@RequestMapping("/notice") // 공지사항 게시글 목록 불러오기
	public String notice(Model model,HttpServletRequest req) {
		
		model.addAttribute("NoticeList", noticeInf.NoticeList());
		
		return "notice/notice";
	}
	
	@RequestMapping("/write") // 공지사항 글쓰기 페이지
	public String noticeWrite(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
	    String uid = (String) session.getAttribute("uidSession");
	    
	    System.out.println(uid);
	    
	    model.addAttribute("uName", pCDao.uName(uid));
		
		return "notice/write";
	}
	
	@RequestMapping("/writeProc") // 공지사항 글쓰기 로직
	public String noticeWriteProc(Model model,HttpServletRequest req) {
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String uName = req.getParameter("uName");
		
		System.out.println(title);
		System.out.println(content);
		System.out.println(uName);
		
		try {
			noticeInf.noticeWrite(title,content,uName);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	
		
		return "redirect:/notice";
	}
	
	@RequestMapping("/result") // 글자세히보기
	public String result(Model model, HttpServletRequest req) {
		String num = req.getParameter("num");
		System.out.println(num);
		try {
			model.addAttribute("noticeList",noticeInf.result(num));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println(noticeInf.result(num));
		
		return "notice/result";
	}
	
	@RequestMapping("/readCnt") //조회수 증가
	public String readCntmtd (Model model,HttpServletRequest req) {
		String num = req.getParameter("num");
		System.out.println(num);
		try {
			noticeInf.readCnt(num);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "";
	}
	@RequestMapping("/noticeSearch") //공지사항 검색기능
	public String noticeSearch(Model model,HttpServletRequest req) {
		String searchName = req.getParameter("searchName");
		System.out.println(searchName);
		  try {
		   if (searchName == null || searchName == ""){
			  model.addAttribute("NoticeList",noticeInf.NoticeList());
		  }	  else  if (searchName != null) {
		        	model.addAttribute("NoticeList",noticeInf.noticeSearch(searchName));
		    }
		   
		  } catch (Exception e) {
		        System.out.println(e.getMessage());
		    }
		return "notice/notice";
	}
 
	// 제품 상세 페이지 이동
		@RequestMapping("/pcViewPage")
		public String pcViewPage() {
			return "/PCView/pcViewPage";
		}
	
}
