
package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import config.DBManager;
import dto.UsersDTO;
import mapper.UsersMapper;

public class OttService {
	private static OttService instance = new OttService();
	private UsersMapper mapper;
	
	private OttService() { try {
        System.out.println("OttService 초기화 시작");
        mapper = DBManager.getInstance().getSession().getMapper(UsersMapper.class);
        System.out.println("OttService 초기화 완료");
    } catch (Exception e) {
        System.out.println("OttService 초기화 실패");
        e.printStackTrace();
        throw e;
    }mapper = DBManager.getInstance().getSession().getMapper(UsersMapper.class);
	}

	public static OttService getInstance() {
		if(instance == null)
			instance = new OttService();
		return instance;
	}

	public UsersDTO login(String id, String password) {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("password", password);
			System.out.println("DBManager 초기화 시작");

			return mapper.findIdAndPassword(map);
		}catch (Exception e) {
			e.printStackTrace();
		return null;
	}
	
	}
	
}
