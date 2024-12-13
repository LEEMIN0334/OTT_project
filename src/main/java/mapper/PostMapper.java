package mapper;

import java.util.List;

import dto.PostDTO;

public interface PostMapper {

	int insertPost(PostDTO dto);

	int insertGroup(PostDTO dto);

	int insertGroupMember(PostDTO dto);

	List<PostDTO> getPostList();

	PostDTO searchpostnum(int postnum);
	
}
