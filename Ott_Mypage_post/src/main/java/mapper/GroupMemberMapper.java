package mapper;

import dto.GroupMemberDTO;

public interface GroupMemberMapper {

	GroupMemberDTO getGroupMemberInfo(String id, String gno, String platformNum);

}
