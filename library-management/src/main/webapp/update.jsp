<%@page import="com.demo.StudentRegistration "%>
<jsp:useBean id="set" class="com.demo.GetSet"></jsp:useBean>
<jsp:setProperty property="*" name="set"/>

<%

 int i =StudentRegistration .update(set);

response.sendRedirect(" view.jsp ");


%>