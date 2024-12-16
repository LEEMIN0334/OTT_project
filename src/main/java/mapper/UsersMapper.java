package mapper;

import java.util.Map;

import dto.UsersDTO;

public interface UsersMapper {

	UsersDTO findIdAndPassword(Map<String, String> map);
	
	int deleteUser(String id);

	int updateUserInfo(UsersDTO dto);

	UsersDTO selectUserById(String id);
	
	int insertUser(UsersDTO user); // 회원정보 삽입

}
