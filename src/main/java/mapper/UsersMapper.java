package mapper;

<<<<<<< HEAD
=======
import java.util.List;
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
import java.util.Map;

import dto.UsersDTO;

public interface UsersMapper {

	UsersDTO findIdAndPassword(Map<String, String> map);
<<<<<<< HEAD
	
	int deleteUser(String id);

	int updateUserInfo(UsersDTO dto);

	UsersDTO selectUserById(String id);
	
	int insertUser(UsersDTO user); // 회원정보 삽입

=======
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
}
