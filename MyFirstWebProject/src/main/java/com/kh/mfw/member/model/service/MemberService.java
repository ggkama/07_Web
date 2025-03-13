package com.kh.mfw.member.model.service;

import com.kh.mfw.member.model.dao.MemberDAO;
import com.kh.mfw.member.model.dto.MemberDTO;
	
	/*
	 * 로그인 - DB에가서 SELECT절에 사용자가 입력한 아이디와 비밀번호를
	 * 조건절에 사용해서 조회를하는 절차를 의미
	 * 
	 * ID나 PW가 틀려서 로그인에 실패할 수 있는 경우를 생각
	 * 
	 * ID,PW 입력시 입력 조건이 맞지않으면 DB에 갈필요 X
	 * 유효성검사(Validation)를 서비스단에서 함
	 */

public class MemberService {

	public MemberDTO login(MemberDTO member) {
		
		
		MemberDTO loginMember = new MemberDAO().login(member);
		return loginMember;
		
		
	}
	
	public int signUp(MemberDTO member) {
		
		int result = new MemberDAO().checkId(member.getMemberId());
		
		if(result > 0) {
			return result;
		}
		
		new MemberDAO().signUp(member);
		return result;
		
		
	}
	
}
