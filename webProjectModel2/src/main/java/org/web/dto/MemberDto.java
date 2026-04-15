package org.web.dto;

import java.time.LocalDateTime;

import org.web.constraint.Role;
import org.web.entity.MemberEntity;

public class MemberDto {
	private Long memberId; 
    private String userEmail; 
    private String userPw;
    private String userName;
    private int age; 
    private Role role; 
    private LocalDateTime createTime;
    private LocalDateTime updateTime;
public MemberDto() {
	// TODO Auto-generated constructor stub
}

    
	public MemberDto(Long memberId, String userEmail, String userPw, String userName, int age, Role role,
		LocalDateTime createTime, LocalDateTime updateTime) {
	super();
	this.memberId = memberId;
	this.userEmail = userEmail;
	this.userPw = userPw;
	this.userName = userName;
	this.age = age;
	this.role = role;
	this.createTime = createTime;
	this.updateTime = updateTime;
}


	//Entity -> Dto
	
	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserPw() {
		return userPw;
	}


	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}


	public LocalDateTime getCreateTime() {
		return createTime;
	}


	public void setCreateTime(LocalDateTime createTime) {
		this.createTime = createTime;
	}


	public LocalDateTime getUpdateTime() {
		return updateTime;
	}


	public void setUpdateTime(LocalDateTime updateTime) {
		this.updateTime = updateTime;
	}


	@Override
	public String toString() {
		return "MemberDto [memberId=" + memberId + ", userEmail=" + userEmail + ", userPw=" + userPw + ", userName="
				+ userName + ", age=" + age + ", role=" + role + ", createTime=" + createTime + ", updateTime="
				+ updateTime + "]";
	}


	public static MemberDto toMemberDto(MemberEntity memberEntity) {
		MemberDto memberDto = new MemberDto();
		memberDto.setMemberId(memberEntity.getMemberId());
		memberDto.setUserEmail(memberEntity.getUserEmail());
		memberDto.setUserPw(memberEntity.getUserPw());
		memberDto.setUserName(memberEntity.getUserName());
		memberDto.setAge(memberEntity.getAge());
		memberDto.setRole(memberEntity.getRole());
		memberDto.setCreateTime(memberEntity.getCreateTime());
		memberDto.setUpdateTime(memberEntity.getUpdateTime());
		
		return memberDto;
	}
	
    
}
