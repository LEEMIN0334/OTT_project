package mapper;

import java.util.List;

import dto.PostDTO;

public interface PostMapper {

	int insertPost(PostDTO dto);

	int insertGroup(PostDTO dto);

	int insertGroupMember(PostDTO dto);

	List<PostDTO> getPostList();

<<<<<<< HEAD
	PostDTO searchpostnum(String postnum);
=======
	PostDTO searchpostnum(int postnum);
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
	
}
