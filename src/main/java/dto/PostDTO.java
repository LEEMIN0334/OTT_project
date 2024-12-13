package dto;

public class PostDTO {
	private int postnum;
	private String id;
	private String platformnum;
	private String postdate;
	private String postdata;
	private int sharenum;
	private int nownum;
	private String ottid;
	private String ottpassword;
	

	public PostDTO() {
	}

	public int getPostnum() {
		return postnum;
	}

	public int setPostnum(int postnum) {
		return this.postnum = postnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPlatformnum() {
		return platformnum;
	}

	public void setPlatformnum(String platformnum) {
		this.platformnum = platformnum;
	}

	public String getPostdate() {
		return postdate;
	}

	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}

	public String getPostdata() {
		return postdata;
	}

	public void setPostdata(String postdata) {
		this.postdata = postdata;
	}

	public int getNownum() {
		return nownum;
	}

	public void setNownum(int nownum) {
		this.nownum = nownum;
	}

	public String getOttid() {
		return ottid;
	}

	public void setOttid(String ottid) {
		this.ottid = ottid;
	}

	public int getSharenum() {
		return sharenum;
	}

	public void setSharenum(int sharenum) {
		this.sharenum = sharenum;
	}

	public String getOttpassword() {
		return ottpassword;
	}

	public void setOttpassword(String ottpassword) {
		this.ottpassword = ottpassword;
	}
	
	
}
