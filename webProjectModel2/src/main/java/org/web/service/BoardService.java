package org.web.service;

import java.util.List;

import org.web.dto.BoardDto;

public interface BoardService {
	
	//게시글 등록
	int boardSave(BoardDto boardDto);
	//게시글조회(목록)
	List<BoardDto> boardList();
	//글 상세보기
	BoardDto boardDetail(Long boardId);
	//게시글 삭제
	int boardDelete(Long boardId);
	//게시글 수정
	int boardUpdate(BoardDto boardDto);
	
	
	
	
	
}
