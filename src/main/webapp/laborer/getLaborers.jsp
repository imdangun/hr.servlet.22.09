<%@ page language='java' contentType='application/json; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='com.my.hr.service.LaborerService' %>
<%@ page import='com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='java.util.List' %>

<%!
	LaborerService laborerService = new LaborerServiceImpl();
%>
<%
	List<Laborer> laborers = laborerService.getLaborers();
	String json = "[";
	for(Laborer laborer: laborers) {
		json += "{\"laborerId\":" + laborer.getLaborerId() + ",";
		json += "\"name\":\"" + laborer.getLaborerName() + "\",";
		json += "\"hireDate\":\"" + laborer.getHireDate() + "\"},";
	}
	json += "]";
	json = json.replaceAll("},]", "}]");
%>
<%= json %>
<%--
[
    {
        "laborerId": 1,
        "name": "최한석",
        "hireDate": "2022-10-05"
    },
    {
        "laborerId": 24,
        "name": "한아름",
        "hireDate": "2022-11-11"
    },
    {
        "laborerId": 25,
        "name": "양승일",
        "hireDate": "2022-11-03"
    }
]
--%>
