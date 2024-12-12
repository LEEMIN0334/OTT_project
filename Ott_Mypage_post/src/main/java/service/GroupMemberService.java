package service;

import config.DBManager;
import dto.GroupMemberDTO;
import mapper.GroupMemberMapper;

public class GroupMemberService {
	
	private static GroupMemberService instance = new GroupMemberService();
	private GroupMemberMapper mapper;
	
	
	private GroupMemberService() {	
		mapper = DBManager.getInstance().getSession().getMapper(GroupMemberMapper.class);
	}

	
	public static GroupMemberService getInstance() {
		if(instance == null)
			instance = new GroupMemberService();
		return instance;
	}


	public GroupMemberDTO getGroupMemberInfo(String id, String gno, String platformNum) {
		return mapper.getGroupMemberInfo(id, gno, platformNum);
	}

}
