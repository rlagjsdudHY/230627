package com.proj.board.svc;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.board.dao.PCDao;
import com.proj.board.dto.PCDto;

@Service
public class PCImp implements PCInf {

	@Autowired
	private PCDao pCDao;

	@Override
	public void mtdJoin(Map<String, String> map) {
		pCDao.mtdJoin(map);
	}

	@Override // 로그인처리
	public int loginProc(String uid, String upw) {
		return pCDao.loginProc(uid, upw);
	}

	// 마이페이지
//	@Override
//	public Object mypage(int num) {
//		return pCDao.mypage(num);
//	}

	// 회원 탈퇴
//	@Override
//	public void mtdMemberDel(String num) {
//		pCDao.mtdMemberDel(num);
//	}
	/*
	 * // 회원목록 조회
	 * 
	 * @Override public List<PCDto> mtdMemberList() { return pCDao.mtdMemberList();
	 * }
	 */

	@Override // 어드민 로그인처리 (테이블 별도)
	public int aloginProc(String uid, String upw) {
		return pCDao.aloginProc(uid, upw);
	}

	@Override // 어드민 글쓰기 처리 이름 반환
	public String uName(String uid) {
		return pCDao.uName(uid);
	}
	@Override // 회원탈퇴
	public int memDelete(String uid,String upw) {
		return pCDao.memDelete(uid,upw);
	}
	@Override // 회원정보 마이페이지
	public List<PCDto> mypageInfo(String uid) {
		return pCDao.mypageInfo(uid);
	}
	@Override // 회원수정 페이지 진입
	public List<PCDto> memModifyView(String num){
		return pCDao.memModifyView(num);
	}
	@Override //회원 수정 제출 로직
		public List<PCDto> memModifyProcProc(Map<String,String> map){
		return pCDao.memModifyProcProc(map);
	}
	 

}