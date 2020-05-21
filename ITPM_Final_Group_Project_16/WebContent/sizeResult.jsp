<%@page import="sizeComplexity.sizeCalculator"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="sizeComplexity.*"%>
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
tr:nth-child(even){background-color: rgb(175,255,255);}

th {
  background-color: dodgerblue;
  color: white;
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
	
	//ControlStructureCalculation complexity = new ControlStructureCalculation(row);
	sizeCalculator calculator = new sizeCalculator(row);
	
	ArrayList<Integer> C = calculator.ctcsline();

%>
<table>
		
		  <tr>
		    <th>Line Number</th>
		    <th>Source Code</th>
		    
		    <th>Cs</th>
		  </tr>
		
		<%
		for(int i = 0; i < row.size(); i++) {
		
		%>
	
			<tr>
				<td><%=(i+1) %></td>
			    <td><%=row.get(i) %></td>
			    
			    
			    <td><%=C.get(i) %></td>
			    
			    
			</tr>
			
	
		<%
		}
		%> 
	</table>
</body>
</html>

</body>
</html>