package com.proj.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.proj.board.dto.PCDto;

@Mapper
public interface PCDao {

	public void mtdJoin(Map<String, String> map);

	public int loginProc(String uid, String upw); // 로그인처리
	// 마이페이지

	public Object mypage(int num);

	// 회원 탈퇴
//	public void mtdMemberDel(String num);

	/*
	 * // 회원 목록 조회 public List<PCDto> mtdMemberList();
	 */

	public int aloginProc(String uid, String upw); // 어드민 로그인처리 (테이블 별도)

	public String uName(String uid); // 어드민 글쓰기 이름값 반환
	
	public int memDelete(String uid,String upw); //회원탈퇴
	
	public List<PCDto> mypageInfo(String uid); //회원정보 보기 마이페이지
	
	public List<PCDto> memModifyView(String num); //회원수정 페이지 진입
	
	public List<PCDto> memModifyProcProc(Map<String,String> map); //회원 수정 제출 로직
}
