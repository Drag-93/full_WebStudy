package org.web.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.web.dao.MemberDao;
import org.web.dto.MemberDto;
import org.web.entity.MemberEntity;
import org.web.service.MemberService;

public class MemberServiceImpl implements MemberService {

	
	private final MemberDao dao=MemberDao.getInstance();
	
	
	@Override
	public MemberDto emailChecked(String userEmail) {

		MemberEntity memberEntity = dao.findByUserEmail(userEmail);

		if (memberEntity != null) {
			throw new IllegalArgumentException("아이디가 존재합니다!");
		}
		return MemberDto.toMemberDto(memberEntity);
	}

	@Override
	public int memberInsert(MemberDto memberDto) {
		//1.이메일 체크 
		MemberEntity memberEntity = dao.findByUserEmail(memberDto.getUserEmail());		
		if (memberEntity != null) {
			throw new IllegalArgumentException("이미 이베일이 존재합니다!");
		}
		// 2. 이메일이 없으면 회원가입 진행
		int rs = dao.save(MemberEntity.toInsertMemberEntity(memberDto));
		
		if (rs != 1) {
            throw new IllegalStateException("회원가입 실패");
        }
		return rs;
	}

	@Override
	public int memberDelete(Long memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberDto> memberList() {

		List<MemberEntity> memberEntities = dao.findAll();

		if (memberEntities.isEmpty()) {
			throw new IllegalStateException("조회할 목록이 없습니다!");
		}

		return memberEntities.stream()
				.map(MemberDto::toMemberDto)
				.collect(Collectors.toList());
	}
	
	@Override
	public MemberDto memberDetail(Long memberId) {
		
		MemberEntity memberEntity = dao.findById(memberId);

		if (memberEntity == null) {
			throw new IllegalArgumentException("아이디가 존재하지 않습니다!");
		}
		return MemberDto.toMemberDto(memberEntity);
	}

	@Override
	public List<MemberDto> findByMemberIdAndAmount() {
		// TODO Auto-generated method stub
		return null;
	}

}
