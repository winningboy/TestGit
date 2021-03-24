package com.test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.db.TestBean;
import com.test.db.TestDAO;

public class TestAction implements Action {
	/* controller ���� Ȯ���� ���� test Action ��ü */

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : TestAction_execute() ȣ�� !");
		
		String nick = request.getParameter("nick");
		
		//DAO ��ü ����
		TestDAO tdao = new TestDAO();
		request.setAttribute("info", tdao.getInfo(nick));
		
		//������ �̵�(forward�� �̵� - �ּҺ��� X , ȭ�麯�� O)
		ActionForward forward = new ActionForward();
		forward.setPath("./test.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
