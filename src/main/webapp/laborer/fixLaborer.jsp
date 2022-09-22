<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='com.my.hr.service.LaborerService' %>
<%@ page import='com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='com.my.hr.domain.Laborer' %> <%-- 추가 --%>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>
<%!
	LaborerService laborerService = new LaborerServiceImpl();
%>
<%	
	String laborerId = request.getParameter("laborerId");
	String name = request.getParameter("name");
	String hireDate = request.getParameter("hireDate");	
	
	laborerService.fixLaborer(new Laborer(
			Integer.parseInt(laborerId),
			name, 
			LocalDate.parse(hireDate, DateTimeFormatter.ISO_DATE)));		
%>