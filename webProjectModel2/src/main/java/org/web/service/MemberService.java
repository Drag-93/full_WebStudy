package org.web.service;

import java.util.List;

import org.web.dto.MemberDto;

public interface MemberService {

	MemberDto emailChecked(String email);

	int memberInsert(MemberDto memberDto);

	int memberUpdate(MemberDto memberDto);

	int memberDelete(Long memberId);

	List<MemberDto> memberList();

	MemberDto memberDetail(Long memberId);
	//  상품의 재고량이 3000개 이상 남은 상품을 등록한 사람의 이메일을 조회
	List<MemberDto> findByMemberIdAndAmount();

	//로그인
	MemberDto loginFn(String userEmail, String userPw);
}
