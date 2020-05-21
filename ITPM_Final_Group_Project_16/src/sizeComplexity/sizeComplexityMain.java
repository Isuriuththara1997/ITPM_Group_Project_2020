package sizeComplexity;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class sizeComplexityMain {
	
String path;
	
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public static void main(String[] args) throws IOException {
		
		sizeComplexityMain complexityMain = new sizeComplexityMain();
		String documentName = complexityMain.getPath();
		
		FileReader fileReader = new FileReader(documentName);
		BufferedReader bufferedReader = new BufferedReader(fileReader);
		
		int i;
		String rows;
		ArrayList<String> row = new ArrayList<>();
		
		while ((rows = bufferedReader.readLine()) != null) {
			row.add(rows);

		}
		
		sizeCalculator sizeCalculator = new sizeCalculator(row);
		
		ArrayList<Integer> C = sizeCalculator.ctcsline();
		
		for(i = 0; i<row.size(); i++) {
			System.out.println("  " + (i + 1) + " " + C.get(i));
			System.out.println("");
		}
	}

}
