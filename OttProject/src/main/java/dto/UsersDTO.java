package dto;

public class UsersDTO {
	private String membernum;
	private String id;
	private String name;
	private String email;
	private String birth;
	private String password;
	

	public UsersDTO() {
	}


	public String getMembernum() {
		return membernum;
	}


	public void setMembernum(String membernum) {
		this.membernum = membernum;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

}
