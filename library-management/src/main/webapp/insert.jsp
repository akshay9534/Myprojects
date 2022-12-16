<%@ page import="com.demo.StudentRegistration"%>

<jsp:useBean id="u" class="com.demo.GetSet"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%


int i=StudentRegistration.insert(u);

if(i>0){
 out.print("<h1>record inserted</h1>");
}
else{
	 out.print("<h1>record not inserted</h1>");
}
%>