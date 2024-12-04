package mapper;

import dto.UsersDTO;

public interface memberInfoMapper {

	int insertMember(UsersDTO dto);

	UsersDTO selectUserById(String id);

}
