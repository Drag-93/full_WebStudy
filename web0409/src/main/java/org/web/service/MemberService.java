package org.web.service;

import java.util.List;

import org.web.dto.MemberDto;

//@Service
public interface MemberService {

	int memberInsert(MemberDto memberDto);
	
	
	int memberDelete(Long memberId);
	
	
	List<MemberDto> memberList();
	
	
	MemberDto emailChecked(String userEmail);
	
	MemberDto memberDetail(Long memberId);	
	
	//  상품의 재고량이 3000개 이상 남은 상품을 등록한 사람의 이메일을 조회
	List<MemberDto> findByMemberIdAndAmount();
}
