package org.web.service.impl;


import java.util.ArrayList;
import java.util.List;

import org.web.dao.MemberDao;
import org.web.dto.MemberDto;
import org.web.entity.MemberEntity;
import org.web.service.MemberService;


public class MemberServiceImpl implements MemberService{
	/*
	//DI
	//=====생성자로 MemberDao 주입=====
	private final MemberDao dao;
	
	private MemberServiceImpl(MemberDao dao) {
		this.dao=dao;
	}
	//=====생성자로 MemberDao 주입=====
	*/
	
	private final MemberDao dao =MemberDao.getInstance();
	
	@Override
	public MemberDto emailChecked(String email) {
		System.out.println("이메일 체크");
		MemberEntity memberEntity=dao.findByEmail(email);
		
		if(memberEntity!=null) {
			throw new IllegalArgumentException("중복된 이메일");
		}else {
			System.out.println("가입 가능한 이메일");
		}
		return MemberDto.toMemberDto(memberEntity);
	}
		
		
	@Override
	public int memberInsert(MemberDto memberDto) {
		System.out.println("회원가입");
		//회원 체크
		MemberEntity memberEntity=dao.findByEmail(memberDto.getUserEmail());
		
		if(memberEntity!=null) {
			throw new IllegalArgumentException("중복된 이메일");
		}
		
		//회원가입 실행
		MemberEntity memberEntity2=MemberEntity.toInsertMemberEntity(memberDto);
		int rs=dao.save(memberEntity2);
		if(rs==1) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패");
		}
		return rs;
	}

	@Override
	public int memberUpdate(MemberDto memberDto) {
		System.out.println("회원 정보 수정");
		//회원 유무 확인
		MemberEntity memberEntity =dao.findById(memberDto.getMemberId());
		if(memberEntity==null) {
			throw new IllegalArgumentException("가입된 회원이 아님");
		}
		//정보 수정 실행
		MemberEntity memberEntity2=MemberEntity.toUpdateMemberEntity(memberDto);
		
		int rs=dao.saveUpdate(memberEntity2);
		if(rs==1) {
			System.out.println("정보 수정 완료");
		}else {
			System.out.println("정보 수정 실패");
		}
		return rs;
	}

	@Override
	public int memberDelete(Long memberId) {
		System.out.println("회원 탈퇴");
		//회원 유무 확인
		MemberEntity memberEntity =dao.findById(memberId);
		if(memberEntity==null) {
			throw new IllegalArgumentException("가입된 회원이 아님");
		}
		//회원 탈퇴 실행
		int rs=dao.delete(memberId);
		if(rs==1) {
			System.out.println("회원 탈퇴 성공");
		}else {
			System.out.println("회원 탈퇴 실패");
		}
		return rs;
	}


	@Override
	public List<MemberDto> memberList() {
		System.out.println("회원 목록 조회");
		List<MemberEntity> memberEntities=dao.findAll();
		if(memberEntities.isEmpty()) {
			throw new IllegalArgumentException("가입된 회원 정보가 없습니다");
		}
		List<MemberDto> memberDtos=new ArrayList<MemberDto>();
		for(MemberEntity memberEntity : memberEntities) {
			MemberDto memberDto=MemberDto.toMemberDto(memberEntity);
			memberDtos.add(memberDto);
		}
		
		return memberDtos;
	}

	@Override
	public MemberDto memberDetail(Long memberId) {
		System.out.println("회원 상세 조회");
		MemberEntity memberEntity=dao.findById(memberId);
		System.out.println(memberEntity);
		if(memberEntity==null) {
			throw new IllegalArgumentException("가입된 회원이 아님");
		}
		
		return MemberDto.toMemberDto(memberEntity);
	}

}

