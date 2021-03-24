package com.test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.db.TestBean;
import com.test.db.TestDAO;

public class TestAction implements Action {
	/* controller 연결 확인을 위한 test Action 객체 */

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : TestAction_execute() 호출 !");
		
		String nick = request.getParameter("nick");
		
		//DAO 객체 생성
		TestDAO tdao = new TestDAO();
		request.setAttribute("info", tdao.getInfo(nick));
		
		//페이지 이동(forward로 이동 - 주소변경 X , 화면변경 O)
		ActionForward forward = new ActionForward();
		forward.setPath("./test.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
