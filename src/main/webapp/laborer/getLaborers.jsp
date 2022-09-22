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
	String json = "{\"laborers\":[";
	for(Laborer laborer: laborers) {
		json += "{\"laborerId\":" + laborer.getLaborerId() + ",";
		json += "\"name\":\"" + laborer.getName() + "\",";
		json += "\"hireDate\":\"" + laborer.getHireDate() + "\"},";
	}
	json += "]}";
	json = json.replaceAll("},]", "}]");
%>
<%= json %>
<%--
{
	"laborers" : [
		{
			"laborerId": 1,
			"name": "최한석",
			"hireDate": "2022/09/21"		
		},
		{
			"laborerId": 2,
			"name": "한아름",
			"hireDate": "2022/10/21"		
		},
		{
			"laborerId": 3,
			"name": "양승일",
			"hireDate": "2022/10/27"		
		}
	]
}
--%>
