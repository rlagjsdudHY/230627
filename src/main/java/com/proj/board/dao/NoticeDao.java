package com.proj.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.proj.board.dto.NoticeDto;

@Mapper
public interface NoticeDao {
	
	public List<NoticeDto> NoticeList(); //공지사항 게시글 불러오기
	
	public void noticeWrite(String title, String content, String uName); //공지사항 게시글 쓰기
	
	public List<NoticeDto> result(String num); // 공지사항 게시글 자세히보기
	
	public void readCnt(String num); //조회수 증가
	
	public List<NoticeDto> noticeSearch(String searchName); // 공지사항 글검색
	

}
