package dto;

public class MemberDto {
	private Long memberId;
	private String userEmail;
	private String userName;
	private int age;
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public MemberDto(Long memberId, String userEmail, String userName, int age) {
		super();
		this.memberId = memberId;
		this.userEmail = userEmail;
		this.userName = userName;
		this.age = age;
	}

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

	@Override
	public String toString() {
		return "MemberDto [memberId=" + memberId + ", userEmail=" + userEmail + ", userName=" + userName + ", age="
				+ age + "]";
	}
	
}
