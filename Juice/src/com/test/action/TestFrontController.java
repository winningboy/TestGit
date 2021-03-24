package com.test.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.test") //url ����(�����ּ� ����)
public class TestFrontController extends HttpServlet {
	
	/* ����ѷ� : �𵨰� ���� �������� -> ���� */

	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("TestFrontController-doProcess()");
		
		System.out.println("\n\n 1. �����ּ� ���");
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();

		String command = requestURI.substring(contextPath.length());
		System.out.println("command : " + command);
		System.out.println("\n 1. �����ּ� ���");

		
		System.out.println("\n 2. �����ּ� ����");
		Action action = null;
		ActionForward forward = null;
		
		//("/�̵� �� ���� �ּ�")
		if(command.equals("/Main.test")){
			//������ �̵�
			forward = new ActionForward();
			
			//("./�̵� �� ���� �ּ�")
			forward.setPath("./test.jsp");
			
			// false - forward�� �̵�(�ּ� ����x, ȭ�� ���� O)
			forward.setRedirect(false);
		} else if(command.equals("/getInfo.test")){
			//Action ��ü
			action = new TestAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println("\n 2. �����ּ� ����");
		

		System.out.println("\n 3. ������ �̵�");
		if (forward != null) {
			if (forward.isRedirect()) {		//�̵������� ������� ������ �̵�
				//true
				response.sendRedirect(forward.getPath());
			} else {
				//false
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}
		}
		System.out.println("\n 3. ������ �̵�");
	}
	
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	    System.out.println("TestFrontController-doGet()");
	    doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("TestFrontController-doPost()");
		doProcess(request, response);
		
	}
}
