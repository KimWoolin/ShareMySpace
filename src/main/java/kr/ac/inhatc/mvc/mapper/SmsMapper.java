package kr.ac.inhatc.mvc.mapper;

import java.util.HashMap;
import java.util.List;

import kr.ac.inhatc.mvc.dto.SmsDto;

public interface SmsMapper {
	public String getName() throws Exception;
	List<?> selectSubjectList(String name) throws Exception;
	List<SmsDto> selectSubjectList2(String name) throws Exception;
	
	public HashMap selectSubjectOne(int no) throws Exception;
	
	public int registSubject(HashMap<String, String> map) throws Exception;
	
	public int modifyBoardDetail(HashMap<String, String> map) throws Exception;
	
	public int deleteBoardDetail(int no) throws Exception;

}

