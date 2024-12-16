package mapper;

import dto.UsersDTO;

public interface UserMapper {

	int deleteUser(String id);

	int updateUserInfo(UsersDTO dto);

	UsersDTO selectUserById(String id);

}
