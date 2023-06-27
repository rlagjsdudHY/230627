package com.proj.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.board.dto.PCDto;
import com.proj.board.svc.PCInf;

@Controller
public class ComputerController {

	@Autowired
	private PCInf pCInf;

	@RequestMapping("/main")
	public String main(Model model, HttpServletRequest req) {

		return "/MainPage";
	}

	// 공통사항 시작
	// headerTmp
	@RequestMapping("ind/headerTmp")
	public String headerTmp() {
		return "ind/headerTmp";
	}

	// mainTmp
	// footerTmp
	@RequestMapping("ind/footerTmp")
	public String footerTmp() {
		return "ind/footerTmp";
	}

	// 공통사항 끝
	@RequestMapping("/joinagree")
	public String agreement(Model model, HttpServletRequest req) {

		return "/login/JoinAgreement";
	}

	// 로그인 페이지 이동
	@RequestMapping("/login")
	public String login(Model model, HttpServletRequest req) {
		return "/login/login";
	}

	// joinAgreement의 약관동의 시작
	@RequestMapping("ind/usingAgree")
	public String usingAgree() {
		return "ind/usingAgree";
	}

	@RequestMapping("ind/personalInfoAgree")
	public String personalInfoAgree() {
		return "ind/personalInfoAgree";
	}

	@RequestMapping("ind/shopInfoAgree")
	public String shopInfoAgree() {
		return "ind/shopInfoAgree";
	}

	// joinAgreement의 약관동의 끝

	// 1. 로그인 작업

	@RequestMapping("/join") // 회원가입페이지
	public String join() {

		return "login/join";
	}

	@RequestMapping("/joinProc") // 회원가입 처리 로직
	public String joinProc(Model model, HttpServletRequest req) {
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		String uName = req.getParameter("uName");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String Email1 = req.getParameter("Email1");
		String Email2 = req.getParameter("Email2");
		String Email = Email1 + "@" + Email2;
		System.out.println(Email);

		try {

			Map<String, String> map = new HashMap<>();
			map.put("item1", uid);
			map.put("item2", upw);
			map.put("item3", uName);
			map.put("item4", phone);
			map.put("item5", address);
			map.put("item6", Email);

			pCInf.mtdJoin(map);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "login/joinSuccess";
	}

	@RequestMapping("/joinSuccess") // 회원가입 완료 후 이동페이지
	public String joinSuccess() {

		return "/login/joinSuccess";
	}

	// 1. 로그인 작업 끝

	@RequestMapping("/loginProc")
	public String loginProc(Model model, HttpServletRequest req) {
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		System.out.println(uid);
		System.out.println(upw);
		String url = "redirect:/login";
		try {
			int result = pCInf.loginProc(uid, upw);
			System.out.println(result);
			if (result == 1) {
				System.out.println("로그인성공");
				// 세션 객체 가져오기
				HttpSession session = req.getSession();
				// 세션에 값을 저장
				session.setAttribute("uidSession", uid);
				url = "redirect:/main";
			} else {
				System.out.println("로그인 실패");
				url = "redirect:/login";
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return url;
	}

	// 로그아웃 처리
	@RequestMapping("/logout") // 로그아웃처리
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate(); // 세션 무효화

		return "redirect:/main"; // 로그인 페이지로 리다이렉트
	}

	// 2. 로그인 작업 끝

//	// 마이페이지
//	@RequestMapping("/mypage")
//	public String mypage(HttpServletRequest req, Model model) {
//		try {
//			int num = Integer.parseInt(req.getParameter("uid"));
//			model.addAttribute("mypage", pCInf.mypage(num));
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		return "mem/mypage";
//	}

	/*
	 * // 회원 탈퇴 시작
	 * 
	 * @RequestMapping("/memberDel") public String memberDel(HttpServletRequest req)
	 * throws Exception {
	 * 
	 * String num = ""; try { req.setCharacterEncoding("UTF-8"); num =
	 * req.getParameter("num"); // 서비스 호출 pCInf.mtdMemberDel(num); } catch
	 * (Exception e) { // TODO: handle exception }
	 * 
	 * return "redirect:/"; } // 회원 탈퇴 끝
	 */

	@RequestMapping("/post-detail")
	public String postDetail(HttpServletRequest req, Model model) {
		String uid = req.getParameter("uid");
		// 모델에 uid를 추가하고 해당 페이지로 포워딩
		model.addAttribute("uid", uid);
		return "post-detail";
	}

	// 3. 어드민 로그인시작

	// 어드민 로그인 페이지 시작

	// 로그인 페이지 이동
	@RequestMapping("/admin")
	public String alogin(Model model, HttpServletRequest req) {
		return "/admin/aLogin";
	}

	// 어드민 로그인
	@RequestMapping("/aloginProc")
	public String AloginProc(Model model, HttpServletRequest req) {
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		System.out.println(uid);
		System.out.println(upw);
		try {
			int result = pCInf.aloginProc(uid, upw);
			System.out.println(result);
			if (result == 1) {
				System.out.println("로그인성공");
				// 세션 객체 가져오기
				HttpSession session = req.getSession();
				// 세션에 값을 저장
				session.setAttribute("uidSession", uid);
			} else {
				System.out.println("로그인 실패");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "redirect:/main";
	}

	// 어드민 로그아웃 유저 로그아웃 재활용

	// 3. 어드민 로그인 끝
	
	//4. 회원 탈퇴 시작
	
	@RequestMapping("/delete") // 회원탈퇴 페이지
	public String memDelete(Model model,HttpServletRequest req) {
		
		return "/mem/memDelete";
	}
	
	@RequestMapping("/memDeleteProc") //회원탈퇴 로직
	public String memDeleteProc(Model model,HttpServletRequest req) {
		HttpSession session = req.getSession();
	    String uid = (String) session.getAttribute("uidSession");
		String upw = req.getParameter("upw");
		System.out.println(uid);
		System.out.println(upw);
		String url = "mem/delfail"; 
		String a = "탈퇴완료";
		try {
			int result = pCInf.memDelete(uid,upw);
			if(result == 1)	url = "mem/delSuccess";
			 session = req.getSession();
			session.invalidate(); // 세션 무효화
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return url;
	}
	//4. 회원 탈퇴 끝

	//5 . 회원정보 조회,수정 시작 
	
	// 마이페이지
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest req, Model model) throws Exception {
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("uidSession");
		try {
			model.addAttribute("mypageInfo",pCInf.mypageInfo(uid));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println(pCInf.mypageInfo(uid));
		
		return "mem/mypage";
	}
	@RequestMapping("/memModifyProc") // 회원수정 페이지 진입
	public String memModifyProc(Model model,HttpServletRequest req) {
		String num = req.getParameter("num");
		System.out.println(num);
		try {
			model.addAttribute("modifyList", pCInf.memModifyView(num));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "mem/memmodifyProc";
	}
	
	@RequestMapping("/memModifyProcProc") // 회원수정 제출 로직
	public String memModifyProcProc(Model model,HttpServletRequest req) {
		String uname = req.getParameter("uname");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String uid = req.getParameter("uid");
//		System.out.println(uname);
//		System.out.println(phone);
//		System.out.println(address);
//		System.out.println(email);
//		System.out.println(uid);
		
		try {
			
			Map<String, String> map = new HashMap<>();
			map.put("item1", uname);
			map.put("item2", phone);
			map.put("item3", address);
			map.put("item4", email);
			map.put("item5", uid);

			pCInf.memModifyProcProc(map);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "redirect:/mypage";
	}
	
	
	// 5.회원정보 조회 수정 끝
}
