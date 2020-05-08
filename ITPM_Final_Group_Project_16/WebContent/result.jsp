<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="ComplexityControlStructure.ControlStructureCalculation"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
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
table,th,td{
border: 1px solid black;
}


</style>
</head>
<body>
<%
	String documentName = "C:\\Users\\isuri\\Desktop\\abc.txt";
	FileReader document = new FileReader(documentName);
	BufferedReader bufferedreader = new BufferedReader(document);
	
	String rows;

	ArrayList<String> row = new ArrayList<>();
	
	while((rows = bufferedreader.readLine())!= null) {
		row.add(rows);

	}
	
	ControlStructureCalculation complexity = new ControlStructureCalculation(row);
	
	ArrayList<Integer> Count = complexity.cntrolrow();
	ArrayList<Integer> WTC = complexity.wtcrow();
	ArrayList<Integer> NC = complexity.ncrow();

%>

	<table>
		
		  <tr>
		    <th>Line Number</th>
		    <th>Source Code</th>
		    <th>Wtc</th>
		    <th>Nc</th>
		    <th>Ccs</th>
		  </tr>
		
		<%
		for(int i = 0; i < row.size(); i++) {
		
		%>
	
			<tr>
				<th><%=(i+1) %></th>
			    <th><%=row.get(i) %></th>
			    <th><%=WTC.get(i) %></th>
			    <th><%=NC.get(i) %></th>
			    <th><%=Count.get(i) %></th>
			</tr>
			
	
		<%
		}
		%> 
	</table>
</body>
</html>