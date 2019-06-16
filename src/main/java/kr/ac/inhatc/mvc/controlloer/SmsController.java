package kr.ac.inhatc.mvc.controlloer;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.management.MalformedObjectNameException;
import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.dsig.Transform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inhatc.mvc.dto.SmsDto;
import kr.ac.inhatc.mvc.service.SmsService;

@Controller
public class SmsController {
	
	@Autowired
	SmsService smsService;

	@RequestMapping("/main")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		return mv;
	}
	
	@RequestMapping("/review")
	public ModelAndView review() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review");
		
		return mv;
	}
	
	@RequestMapping("/create")
	public ModelAndView create() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("create");
		
		return mv;
	}
	
	@RequestMapping("/read")
	public ModelAndView read() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("read");
		
		return mv;
	}
	
	@RequestMapping("/selectSubjectList") //DB 전체 글 목록
	public ModelAndView selectSubjectList() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("subjectList",smsService.selectSubjectList());
		mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping("/selectSubjectList2") // 조건 검색
	public ModelAndView selectSubjectList2(String searchKeyword) throws Exception{
		ModelAndView mv= new ModelAndView();
		mv.addObject("subjectList",smsService.selectSubjectList2(searchKeyword));
		mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping("/boardDetail.do") // 글읽기
	public ModelAndView boardDetail(int no)throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.addObject("detailBoard",smsService.selectSubjectOne(no));
		mv.setViewName("read");
		return mv;
	}
	
	@RequestMapping("/boardDetail") // 수정할 글
	public ModelAndView boardDetaildo(int no)throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.addObject("detailBoard",smsService.selectSubjectOne(no));
		mv.setViewName("update");
		return mv;
	}
	
	@RequestMapping("/registSubject") //글작성
	public ModelAndView registSubject(String id,
				String type, String address, String reservation, String title, String contents) throws Exception{
		
		java.util.Date today = new java.util.Date();
		SimpleDateFormat from= new SimpleDateFormat("yyyy-MM-dd");
		String date = from.format(today);
		
		HashMap<String, String> hashMap = new HashMap<String, String>();		
		hashMap.put("id",id);
		hashMap.put("date",date);
		hashMap.put("type",type);
		hashMap.put("address",address);
		hashMap.put("reservation",reservation);
		hashMap.put("title",title);
		hashMap.put("contents",contents);
		smsService.registSubject(hashMap);
		return selectSubjectList();
	}
	
	
	@RequestMapping("/modifyBoardDetail.do") //글 수정
	public ModelAndView modifyBoardDetail(int no,String id,String type, 
			String address, String reservation, String title, String contents) throws Exception{
		HashMap<String, String> hashMap = new HashMap<String, String>();
		String num =  Integer.toString(no);
		hashMap.put("no",num);
		hashMap.put("id",id);
		hashMap.put("type",type);
		hashMap.put("address",address);
		hashMap.put("reservation",reservation);
		hashMap.put("title",title);
		hashMap.put("contents",contents);
		smsService.modifyBoardDetail(hashMap);
		return boardDetail(no);
	}

	
	@RequestMapping("/deleteBoardDetail.do") //글 삭제
	public ModelAndView deleteBoardDetail(int no) throws Exception{
		smsService.deleteBoardDetail(no);
		return selectSubjectList();
	}
	
}
