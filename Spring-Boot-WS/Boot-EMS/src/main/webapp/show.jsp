<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
</head>
<center>
<a href="employee">AddEmployee</a><br><br>
<table border=1>
<tr>
<td>EmployeeNumber</td>
<td>EmployeeName</td>
<td>Salary</td>
<td>DeptNumber</td>
<td>Action On Row</td>
</tr>
</tr>
<c:if test="${not empty data}">
<c:forEach items="${data}" var="ob">
<tr>
<tr>
<td>${ob.empNo}</td>
<td>${ob.empName}</td>
<td>${ob.empSalary}</td>
<td>${ob.deptNo}</td>
<td><a href="updatedata?id=${ob.empNo}">update</a>|<a href="delete?id=${ob.empNo}">Delete</a></td>
</tr>

</c:forEach>
</c:if>
</table><br>
<a href="index.jsp">Back To Home</a><br>
</center>
</html>