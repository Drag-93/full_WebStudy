package jspStudy;

public class JavaBean {
	private String userId;
	private String userPw;
	private String title;
	private String content;
	public JavaBean() {
		// TODO Auto-generated constructor stub
	}
	public JavaBean(String userId, String userPw, String title, String content) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.title = title;
		this.content = content;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "JavaBean [userId=" + userId + ", userPw=" + userPw + ", title=" + title + ", content=" + content + "]";
	}
	
	
}
