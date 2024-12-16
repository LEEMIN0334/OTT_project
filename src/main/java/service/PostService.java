package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.DBManager;
import dto.PostDTO;
import mapper.PostMapper;

public class PostService {
	private static PostService instance = new PostService();
	private PostMapper mapper;
	
	private PostService() {	
		mapper = DBManager.getInstance().getSession().getMapper(PostMapper.class);
	}

	
	public static PostService getInstance() {
		if(instance == null)
			instance = new PostService();
		return instance;
	}
	
	public int insertPost(PostDTO dto) {
		return mapper.insertPost(dto);
	}
	public int insertGroup(PostDTO dto) {
		return mapper.insertGroup(dto);
	}


	public int insertGroupMember(PostDTO dto) {
		return mapper.insertGroupMember(dto);
	}


	public List<PostDTO> getPostList() {
		try(SqlSession session = DBManager.getInstance().getSession()){
			PostMapper mapper = session.getMapper(PostMapper.class);
			return mapper.getPostList();
		}
	}


<<<<<<< HEAD
	public PostDTO searchpostnum(String postnum) {
=======
	public PostDTO searchpostnum(int postnum) {
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
		try(SqlSession session = DBManager.getInstance().getSession()){
			PostMapper mapper = session.getMapper(PostMapper.class);
			return mapper.searchpostnum(postnum);
		}
	}

}
