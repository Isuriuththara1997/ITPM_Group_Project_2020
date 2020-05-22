/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 3.0
 */



package methodsComplexity;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import methodsComplexity.*;

public class MethodCalculatorMain {

	String path;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public static void main(String[] args) throws IOException {

		MethodCalculatorMain complexityMain = new MethodCalculatorMain();
		String documentName = complexityMain.getPath();

		FileReader fileReader = new FileReader(documentName);
		BufferedReader bufferedReader = new BufferedReader(fileReader);

		String rows;
		ArrayList<String> row = new ArrayList<>();

		while ((rows = bufferedReader.readLine()) != null) {
			row.add(rows);

		}

		
		  MethodCalculator methodCalculator = new MethodCalculator(row);
		  
		  ArrayList<Integer> MethodCount = methodCalculator.allmethods();
		  
		  for (int i = 0; i < row.size(); i++) { System.out.println("  " + (i + 1) +
		  " " + MethodCount.get(i)); System.out.println(""); }
		 
	}
}
