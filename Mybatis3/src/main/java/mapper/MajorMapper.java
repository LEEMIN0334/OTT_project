package mapper;

import java.util.List;
import java.util.Map;

import dto.MajorDTO;

public interface MajorMapper {
	
	List<MajorDTO> selectAllMajor();
	List<MajorDTO> selectMajorList(String[] arr);
	List<MajorDTO> searchMajor(Map<String, Object> map);
	List<MajorDTO> searchMajor2(Map<String, Object> map);

}
