<%@page import="sizeComplexity.sizeComplexityMain"%>
<%@page import="sizeComplexity.sizeCalculator"%>
<%@page import="variableComplexity.variableCalculator"%>
<%@page import="variableComplexity.variableCalculatorMain"%>
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
tr:nth-child(even){background-color: rgb(175,255,255);}

th {
  background-color: dodgerblue;
  color: white;
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
		
		
		sizeCalculator calculator = new sizeCalculator(row);

		ArrayList<Integer> csCount = calculator.csCount();
		ArrayList<Integer> keywords = calculator.keywords();
		ArrayList<Integer> identifiers = calculator.identifiers();
		ArrayList<Integer> operators = calculator.operators();
		ArrayList<Integer> numbers = calculator.numbers();
		ArrayList<Integer> literals = calculator.strings();
		
		//variables
		String documentNamev = "C:\\Users\\isuri\\Desktop\\ITPM\\ITPM_Group_Project_2020\\ITPM_Final_Group_Project_16\\uploads\\"+request.getParameter("filename");
	FileReader documentv = new FileReader(documentName);
	BufferedReader bufferedreaderv = new BufferedReader(document);
	
			variableCalculator variableCalculator = new variableCalculator(row);
	
	ArrayList<Integer> cvCount = variableCalculator.allVariable();
	ArrayList<Integer> npdtv = variableCalculator.priVariable();
	ArrayList<Integer> ncdtv = variableCalculator.compVariable();
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
			<th>Nkw</th>
			<th>Nid</th>
			<th>Nop</th>
			<th>Nnv</th>
			<th>Nsl</th>
			<th>Cs</th>
			
			<th>Wvs</th>
			<th>Npdtv</th>
			<th>Ncdtv</th>
			<th>Cv</th>
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
			    
			   <td><%=Counts.get(i) %></td>
			    <td><%=Counts.get(i) %></td>
			   <td><%=(Counts.get(i) + Counts.get(i)) %></td>
			   <td><%=(Counts.get(i) + Counts.get(i)) %></td>
			   
			<td><%=keywords.get(i)%></td>
			<td><%=identifiers.get(i)%></td>
			<td><%=operators.get(i)%></td>
			<td><%=numbers.get(i)%></td>
			<td><%=literals.get(i)%></td>
			<td><%=csCount.get(i)%></td>
			
			<td>1</td>
			<td><%=npdtv.get(i) %></td>
			<td><%=ncdtv.get(i) %></td>
			<td><%=cvCount.get(i) %></td>
			    
			</tr>
			
	
		<%
		}
		%> 

	</table>
</body>
</html>