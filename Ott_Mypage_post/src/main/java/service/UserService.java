package service;

import org.apache.ibatis.session.SqlSession;

import config.DBManager;
import dto.UsersDTO;
import mapper.UsersMapper;

public class UserService {
	private static UserService instance = new UserService();

	private UserService() {		}

	public static UserService getInstance() {
		if (instance == null)
			instance = new UserService();
		return instance;
	}
	
	public UsersDTO selectUserById(String id) {
	    try (SqlSession session = DBManager.getInstance().getSession()) {
	        UsersMapper mapper = session.getMapper(UsersMapper.class);
	        return mapper.selectUserById(id);
	    }
	}

	public int deleteUser(String id) {
		try (SqlSession session = DBManager.getInstance().getSession()) {
			UsersMapper mapper = session.getMapper(UsersMapper.class);
			return mapper.deleteUser(id);
		}

	}

	public int updateUserInfo(UsersDTO dto) {
		try (SqlSession session = DBManager.getInstance().getSession()) {
			UsersMapper mapper = session.getMapper(UsersMapper.class);
			return mapper.updateUserInfo(dto);
		}
	}

}