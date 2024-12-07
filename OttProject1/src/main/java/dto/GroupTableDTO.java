package dto;

public class GroupTableDTO {

	private String gno;
	private String groupname;
	private String ottservice;
	private String paynum;
	private String ottaccount;
	
	
	public GroupTableDTO() {
	}

	public String getOttaccount() {
		return ottaccount;
	}

	public void setOttaccount(String ottaccount) {
		this.ottaccount = ottaccount;
	}

	public String getGno() {
		return gno;
	}

	public void setGno(String gno) {
		this.gno = gno;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getottservice() {
		return ottservice;
	}

	public void setottservice(String ottservice) {
		this.ottservice = ottservice;
	}

	public String getPaynum() {
		return paynum;
	}

	public void setPaynum(String paynum) {
		this.paynum = paynum;
	}
	
	
	
}
