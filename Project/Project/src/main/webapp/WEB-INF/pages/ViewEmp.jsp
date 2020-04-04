<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <%@ page isELIgnored="false"%>
  <head>
   <link href='<c:url value="/resources/css/sample4.css"></c:url>' rel="stylesheet">
</head>
<body>
  <h1><font face="Lucida Bright" color="#212F3D ">Product List</font></h1>
		  
<table border="7" width="50%">  

<tr><th>Id</th><th>PNAME</th><th>CNAME</th><th>PRICE</th><th>Delete::</th></tr>  
  <!-- emps === model attribute in controller -->
  
   <c:forEach var="emp11" items="${emps}">   
   <tr>  
   <td>${emp11.id}</td>  
   <td>${emp11.productname}</td>  
   <td>${emp11.companyname}</td>      
   <td>${emp11.price}</td>      
        <td>
        <!-- 1.onclick javascript event 2.confirm similar to alert but takes OK CANCEL BUTTONS -->
       <a href="deleteemps/${emp11.id}" onclick="if(!(confirm('Are you sure you want to delete this employee?'))) return false">Delete</a></td>      
   
   </tr>  
   </c:forEach>  
   </table>
   </body>