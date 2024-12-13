package service;


import config.DBManager;
import dto.PostDTO;
import dto.UsersDTO;
import mapper.UserMapper;

public class UserService {
	private static UserService instance = new UserService();
	private UserMapper mapper;
	
	
	private UserService() {	
		mapper = DBManager.getInstance().getSession().getMapper(UserMapper.class);
	}

	
	public static UserService getInstance() {
		if(instance == null)
			instance = new UserService();
		return instance;
	}

	public int deleteUser(String id) {
		return mapper.deleteUser(id);
	}


	public int updateUserInfo(UsersDTO dto) {
		return mapper.updateUserInfo(dto);
	}


	

	

	
	
	
}