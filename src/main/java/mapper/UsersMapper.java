package mapper;

import java.util.List;
import java.util.Map;

import dto.UsersDTO;

public interface UsersMapper {

	UsersDTO findIdAndPassword(Map<String, String> map);
}
