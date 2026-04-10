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

}
