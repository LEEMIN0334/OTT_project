package service;

import java.util.List;

import config.DBManager;
import dto.BoardMemberDTO;
import mapper.BoardMamberMapper;

public class BoardMemberService {
	private static BoardMemberService instance 
		= new BoardMemberService();
	private BoardMamberMapper mapper;
	
	public BoardMemberService() {
		mapper = DBManager.getInstance().getSession()
				.getMapper(BoardMamberMapper.class);
	}
	
	public static BoardMemberService getInstance() {
		if(instance == null)
			instance = new BoardMemberService();
		return instance;
	}

	public List<BoardMemberDTO> selectNameMember(String name) {
		return mapper.selectNameMember(name);
	}

	public int deleteMember(String id) {
		return mapper.deleteMember(id);
	}
	
}
