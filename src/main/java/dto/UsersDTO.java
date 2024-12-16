package dto;

public class UsersDTO {
	private String id;
	private String name;
	private String email;
	private String birth;
	private String password;
<<<<<<< HEAD
	private String account;
	
=======
	private String Account;
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
	
	public UsersDTO() { }
	
	public UsersDTO(String id, String name, String email, String birth, String password, String account) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.birth = birth;
		this.password = password;
<<<<<<< HEAD
		this.account = account;
=======
		Account = account;
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
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
<<<<<<< HEAD
	
	public String getAccount() {
	    return account;
	}

	public void setAccount(String account) {
	    this.account = account;
	}

=======
	public String getAccount() {
		return Account;
	}
	public void setAccount(String account) {
		Account = account;
	}
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
	
	
}
