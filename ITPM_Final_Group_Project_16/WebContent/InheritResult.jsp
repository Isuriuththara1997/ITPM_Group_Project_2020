<%@page import="inheritance.Inheritance"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="inheritance.InheritanceMain.java"></script>
<script src="inheritance.Inheritance.java"></script> 
<meta charset="ISO-8859-1">
<title>Inheritance Result</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
<%


String f1 = ("C:\\Users\\Minindu Sudantha\\Desktop\\DaysPerMonth.java");
FileReader fr = new FileReader(f1);
BufferedReader br = new BufferedReader(fr);
	
	int i ;
	String lines;
	ArrayList<String> line = new ArrayList<>();
	
	while((lines = br.readLine())!= null) {
		line.add(lines);
		
	}
	
	Inheritance complexity = new Inheritance(line);
	
	ArrayList<Integer> Count = complexity.inheritkeyline();

%>
	<h1>Inheritance Results</h1>

	<table>
		<tr>
			<th>Row No</th>
			<th>Code</th>
			<th>Direct Inheritance</th>
			<th>Indirect Inheritance</th>
			<th>Total</th>
			<th>CI</th>
			
		</tr>
		<%
		for(i=0; i < line.size(); i++ ){
			%>
			
			<tr>
				<th><%=(i+1) %></th>
			    <th><%=line.get(i) %></th>
			    <th><%=Count.get(i) %></th>
			    <th><%=Count.get(i) %></th>
			   <th><%=(Count.get(i) + Count.get(i)) %></th>
			   <th><%=(Count.get(i) + Count.get(i)) %></th>

			</tr>
			
	
		<%
		}
		%> 
		

	</table>
</body>
</html>