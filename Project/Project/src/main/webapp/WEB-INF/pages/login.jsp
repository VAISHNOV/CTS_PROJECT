<!-- EL IMPLICIT OBJECT::pageContext.request.contextPath
(http://localhost:8080/SpringHibIntegra)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<head>
   <link href='<c:url value="/resources/css/sample.css"></c:url>' rel="stylesheet">

</head>

<body>
	<form:form id="form1" name="form1" modelAttribute="product" method="post" action="login">
		<center><table width="350" height="350" border="0" align="center">
			<tr>
				<td width="520">&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
		  			<center><h1><font face="Lucida Bright" color="#F0F3F4 ">CUSTOMER LOGIN</font></h1>
		  			</center>
						<table width="59" border="0" align="center">
							<tr>
								<td colspan="8">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							<td colspan="8" style="color: red"><c:if
									test="${not empty result}">${result}</c:if></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td width="50">&nbsp;</td>
								<td width="114">Username</td>
								<td colspan="17"><label> 
<form:input type="text"	name="txt_username" id="txt_username" style=" width : 159px;" path="username" />
								</label></td>
								<td width="131">&nbsp;</td>
							</tr>
							<tr></tr><tr></tr>
							<tr>
							</tr>
							<tr>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td>Password</td>
								<td colspan="17"><label> 
<form:input type="password" name="txt_password" id="txt_password" style=" width : 160px;" path="password" />
								</label></td>
								<td>&nbsp;</td>
							</tr>
							<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
							<tr>
							
							<tr></tr>
							<td>&nbsp;</td>
	              <td><a href="${pageContext.request.contextPath}/callproj">RegisterHere??</a></td>
							<td colspan="11"><label> 
				
								<td width="109"><label></label></td>
								<td width="73"><label> 
                        <input type="submit" name="btn_login" id="btn_login" value="Login" />
								</label></td>
							</tr>
						</table>
					</fieldset></td>
			</tr>
		</table></center>
	</form:form>
</body>
</html>