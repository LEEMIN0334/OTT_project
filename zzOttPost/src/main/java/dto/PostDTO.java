package dto;

public class PostDTO {

	private String title;
	private String content;
	private String totalMembers;
	private String postNum;
	private String name;

	
	public String getPostNum() {
		return postNum;
	}
	public void setPostNum(String postNum) {
		this.postNum = postNum;
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
	public String getTotalMembers() {
		return totalMembers;
	}
	public void setTotalMembers(String totalMembers) {
		this.totalMembers = totalMembers;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
