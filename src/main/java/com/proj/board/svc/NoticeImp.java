package com.proj.board.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.board.dao.NoticeDao;
import com.proj.board.dto.NoticeDto;

@Service
public class NoticeImp implements NoticeInf {
	
	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public List<NoticeDto> NoticeList(){ // 공지사항 게시글 목록 불러오기
		
		return noticeDao.NoticeList();
	}
	@Override
	public void noticeWrite(String title, String content, String uName){ // 공지사항 게시글 쓰기
		
		  noticeDao.noticeWrite(title,content,uName);
	}
	@Override // 공지사항 상세보기
	public List<NoticeDto> result(String num) {
		return noticeDao.result(num);
	}
	@Override // 조회수 증가
		public void readCnt(String num) {
		 noticeDao.readCnt(num);
	}
	@Override // 공지사항 글검색
	public List<NoticeDto> noticeSearch(String searchName) {
		return noticeDao.noticeSearch(searchName);
	}

}
