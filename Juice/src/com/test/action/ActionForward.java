package com.test.action;

public class ActionForward {
	/* �������� �̵������� �����ϴ� ��ü
	 * ���� : path(�ּ�) | isRedirect(�̵���� 2����)
	 * true - sendRedirect() ������� �̵� (�ּ�,ȭ�� ����O)
	 * false - forward() ������� �̵� (�ּ� ����x, ȭ�� ���� O)
	 * */
		
	private String path;
	private boolean isRedirect; //�̵����-2����
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
