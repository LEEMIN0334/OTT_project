package dto;

public class GroupMemberDTO {
	private String gno;
	private String id;
	private String platformNum;

	public String getGno() {
		return gno;
	}

	public void setGno(String gno) {
		this.gno = gno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPlatformNum() {
		return platformNum;
	}

	public void setPlatformNum(String platformNum) {
		this.platformNum = platformNum;
	}

	@Override
	public String toString() {
		return "GroupMemberDTO [gno=" + gno + ", id=" + id + ", platformNum=" + platformNum + "]";
	}

}