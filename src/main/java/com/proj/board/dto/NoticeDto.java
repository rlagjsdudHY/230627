package com.proj.board.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoticeDto {
	private int num;
	private String writer;
	private String title;
	private String content;
	private String fileName;
	private int readcnt;
	private Timestamp regTM;

}
