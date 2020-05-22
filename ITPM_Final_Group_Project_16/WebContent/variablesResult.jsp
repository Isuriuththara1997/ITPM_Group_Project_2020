<!-- 
SLIIT ID : IT18020236
@author : Y.R.S Nadeeshani
@version : 2.0 
-->

<%@page import="sizeComplexity.sizeCalculator"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="variableComplexity.*"%>
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

table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>

	<%
	
//ControlStructureCalculationMain cs1=new ControlStructureCalculationMain();
//String documentName =cs1.getPath();

String documentName = "C:\\Users\\isuri\\Desktop\\ITPM\\ITPM_Group_Project_2020\\ITPM_Final_Group_Project_16\\uploads\\"+request.getParameter("filename");
	FileReader document = new FileReader(documentName);
	BufferedReader bufferedreader = new BufferedReader(document);
	
	String rows;

	ArrayList<String> row = new ArrayList<>();
	
	while((rows = bufferedreader.readLine())!= null) {
		row.add(rows);

	}
	
	variableCalculator variableCalculator = new variableCalculator(row);
	
	ArrayList<Integer> cvCount = variableCalculator.allVariable();
	ArrayList<Integer> npdtv = variableCalculator.priVariable();
	ArrayList<Integer> ncdtv = variableCalculator.compVariable();
%>
	<table>

		<tr>
			<th>Line Number</th>
			<th>Source Code</th>
			<th>Wvs</th>
			<th>Npdtv</th>
			<th>Ncdtv</th>
			<th>Cv</th>
		</tr>

		<%
		for(int i = 0; i < row.size(); i++) {
		
		%>

		<tr>
			<th><%=(i+1) %></th>
			<th><%=row.get(i) %></th>
			<th>1</th>
			<th><%=npdtv.get(i) %></th>
			<th><%=ncdtv.get(i) %></th>
			<th><%=cvCount.get(i) %></th>
		</tr>


		<%
		}
		%>
	</table>
</body>
</html>

</body>
</html>