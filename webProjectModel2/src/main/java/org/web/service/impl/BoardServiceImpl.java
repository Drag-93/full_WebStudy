package org.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.web.dao.BoardDao;
import org.web.dao.MemberDao;
import org.web.dto.BoardDto;
import org.web.entity.BoardEntity;
import org.web.entity.MemberEntity;
import org.web.service.BoardService;

public class BoardServiceImpl implements BoardService{

	
	private final BoardDao dao=BoardDao.getInstance();
	private final MemberDao mdao=MemberDao.getInstance();
	@Override
	public int boardSave(BoardDto boardDto) {
		System.out.println("게시글 작성");
		//회원체크
		MemberEntity memberEntity=mdao.findById(boardDto.getMemberId());
		System.out.println(boardDto);
		System.out.println(memberEntity);
		if(memberEntity==null) {
			System.out.println("로그인 후 이용해주세요");
			new IllegalArgumentException("회원 정보 없음");
		}
		
		
		BoardEntity boardEntity=BoardEntity.toInsertBoardEntity(boardDto);
		int rs=dao.save(boardEntity);
		if(rs==1) {
			System.out.println("게시글 작성 성공");
		}else {
			System.out.println("게시글 작성 실패");
		}

		return rs;
	}

	@Override
	public List<BoardDto> boardList() {
		
		List<BoardEntity> boardList=dao.findAll();
		if(boardList.isEmpty()) {
			new IllegalStateException("목록이 비었습니다");
		}
		List<BoardDto>boardDtos=new ArrayList<BoardDto>();
		for(BoardEntity boardEntity:boardList) {
			BoardDto boardDto=BoardDto.toBoardDto(boardEntity);
			boardDtos.add(boardDto);
		}
		
		return boardDtos; 
	}

	@Override
	public BoardDto boardDetail(Long boardId) {
		System.out.println("게시글 상세 조회");
		BoardEntity boardEntity=dao.findById(boardId);
		if(boardEntity==null) {
			throw new IllegalArgumentException("작성글을 찾을수 없습니다");
		}
		System.out.println(boardId);
		return BoardDto.toBoardDto(boardEntity);
	}

	@Override
	public int boardDelete(Long boardId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardUpdate(BoardDto boardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	
}
