<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="ComplexityControlStructure.ControlStructureCalculation"%>
<%@page import="ComplexityControlStructure.ControlStructureCalculationMain"%>
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
	
	ControlStructureCalculation complexity = new ControlStructureCalculation(row);
	
	ArrayList<Integer> Count = complexity.cntrolrow();
	ArrayList<Integer> WTC = complexity.wtcrow();
	ArrayList<Integer> NC = complexity.ncrow();
	ArrayList<Integer> Ccspps = complexity.ccsppsrow();

%>
<div id="HTMLtoPDF">
<h1>Ccs = (Wtcs * NC) + Ccspps</h1>
<h1>(Wtcs * NC) = A</h1>
<h1>Ccs = A + Ccspps</h1>
<h4>Ccs = Complexity of a program statement with a control structure</h4>
<h4>Wtcs = Weight due to control structure type</h4>
<h4>NC = Number of conditions in the control structure</h4>
<h4>Ccspps = Control structure complexity of the previous program statement. Hence, 
always the value of Ccspps would be zero for control structures which reside at the first nesting level or outer most nesting level.</h4>
<!--     <div class="col-sm-2"> -->
<!--       <button class=" btn btn-danger" (click)="print()"><i class="fa fa-print" style="margin-right: 10px;"></i>Summary Control Structure</button> -->
<!--     </div> -->
<button href="#" onclick="HTMLtoPDF()" style="color: red">Download PDF</button>	
    </br>
    </br>
	<table>
		
		  <tr>
		    <th>Line Number</th>
		    <th>Source Code</th>
		    <th>Wtc</th>
		    <th>Nc</th>
		    <th>A</th>
		    <th>Ccspps</th>
		    <th>Ccs</th>
		  </tr>
		
		<%
		for(int i = 0; i < row.size(); i++) {
		
		%>
	
			<tr>
				<td><%=(i+1) %></td>
			    <td><%=row.get(i) %></td>
			    <td><%=WTC.get(i) %></td>
			    <td><%=NC.get(i) %></td>
			    <td><%=Count.get(i) %></td>
			    <td><%=Ccspps.get(i) %></td>
			    <td><%=(Count.get(i)+Ccspps.get(i)) %></td>
			    
			</tr>
			
	
		<%
		}
		%> 
	</table>
</div>


	<script src="js/jspdf.js"></script>
	<script src="js/jquery-2.1.3.js"></script>
	<script src="js/pdfFromHTML.js"></script>
</body>
</html>