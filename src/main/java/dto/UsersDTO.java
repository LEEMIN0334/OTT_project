package dto;

public class UsersDTO {
	private String id;
	private String name;
	private String email;
	private String birth;
	private String password;
	private String account;
	
	
	public UsersDTO() { }
	
	public UsersDTO(String id, String name, String email, String birth, String password, String account) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.birth = birth;
		this.password = password;
		this.account = account;
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
	
	public String getAccount() {
	    return account;
	}

	public void setAccount(String account) {
	    this.account = account;
	}

	
	
}
