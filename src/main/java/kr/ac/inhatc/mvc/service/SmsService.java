package kr.ac.inhatc.mvc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.ac.inhatc.mvc.mapper.SmsMapper;

@Service
public class SmsService {

	@Autowired
	SmsMapper sms;
	
	public List<?> selectSubjectList() throws Exception{
		return sms.selectSubjectList("");
	}
	
	public List<?> selectSubjectList2(String searchKeyword) throws Exception{
		return sms.selectSubjectList2(searchKeyword);
	}
	
	public int registSubject(HashMap<String, String> map) throws Exception{
		return sms.registSubject(map);
	}
	
	public HashMap selectSubjectOne(int no) throws Exception{
		return sms.selectSubjectOne(no);
	}
	
	public int modifyBoardDetail(HashMap<String,String> map) throws Exception{
		return sms.modifyBoardDetail(map);
	}
	
	public int deleteBoardDetail(int no) throws Exception{
		return sms.deleteBoardDetail(no);
	}
}
