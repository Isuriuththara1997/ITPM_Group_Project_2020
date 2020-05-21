<%@page import="sizeComplexity.sizeComplexityMain"%>
<%@page import="sizeComplexity.sizeCalculator"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="ComplexityControlStructure.ControlStructureCalculation"%>
<%@page import="ComplexityControlStructure.ControlStructureCalculationMain"%>
<%@page import="java.util.ArrayList"%>
<%@page import="InheritanceComplexity.InheritanceComplexity"%>
<%@page import="InheritanceComplexity.InheritanceComplexityMain"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="inheritance.InheritanceMain.java"></script>
<script src="inheritance.Inheritance.java"></script> 
<meta charset="ISO-8859-1">
<title>All Factors</title>
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
<body>
<%
	
//ControlStructureCalculationMain cs1=new ControlStructureCalculationMain();
//String documentName =cs1.getPath();
//control structure

String documentName =  "C:\\Users\\isuri\\Desktop\\ITPM\\ITPM_Group_Project_2020\\ITPM_Final_Group_Project_16\\uploads\\"+request.getParameter("filename");
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
	ArrayList<Integer> Ccspps = complexity.ccsppsrow();

	
	//inheritance
 	String f1 =  "C:\\Users\\isuri\\Desktop\\ITPM\\ITPM_Group_Project_2020\\ITPM_Final_Group_Project_16\\uploads\\"+request.getParameter("filename");
	
 	 FileReader fr = new FileReader(f1);
     BufferedReader br = new BufferedReader(fr);
	
	String lines;
	
	ArrayList<String> line = new ArrayList<>();
	
	while((lines = br.readLine())!= null) {
		line.add(lines);
		
	}
	
	InheritanceComplexity complexityinherit = new InheritanceComplexity(line);
	
	ArrayList<Integer> Counts = complexityinherit.inheritkeyline();
	
	//size
	 	String documentNames =  "C:\\Users\\isuri\\Desktop\\ITPM\\ITPM_Group_Project_2020\\ITPM_Final_Group_Project_16\\uploads\\"+request.getParameter("filename");

		FileReader fileReader = new FileReader(documentNames);
		BufferedReader bufferedReader = new BufferedReader(fileReader);
		
		
		sizeCalculator sizeCalculator = new sizeCalculator(row);
		
		ArrayList<Integer> C = sizeCalculator.ctcsline();
%>
<table>
		
		  <tr>
		    <th>Line Number</th>
		    <th>Source Code</th>
		    <th>Wtc</th>
		    <th>Nc</th>
		    <th>A</th>
		    <th>Ccspps</th>
		    <th>Ccs</th>
		    			<th>Direct Inheritance</th>
						<th>Indirect Inheritance</th>
						<th>Total</th>
						<th>CI</th>
						<th>Cs</th>
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
			    <th><%=Ccspps.get(i) %></th>
			    <th><%=(Count.get(i)+Ccspps.get(i)) %></th>
			    			    <th><%=Counts.get(i) %></th>
			    <th><%=Counts.get(i) %></th>
			   <th><%=(Counts.get(i) + Counts.get(i)) %></th>
			   <th><%=(Counts.get(i) + Counts.get(i)) %></th>
			   <th><%=C.get(i) %></th>
			    
			</tr>
			
	
		<%
		}
		%> 

	</table>
</body>
</html>