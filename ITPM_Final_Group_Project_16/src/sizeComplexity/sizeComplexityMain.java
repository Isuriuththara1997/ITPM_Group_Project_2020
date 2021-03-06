/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 1.0
 */

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

		sizeComplexityMain sizecomplexityMain = new sizeComplexityMain();
		String documentName = sizecomplexityMain.getPath();

		FileReader fileReader = new FileReader(documentName);
		BufferedReader bufferedReader = new BufferedReader(fileReader);

		String rows;
		ArrayList<String> row = new ArrayList<>();

		while ((rows = bufferedReader.readLine()) != null) {
			row.add(rows);

		}

		sizeCalculator sizeCalculator = new sizeCalculator(row);

		ArrayList<Integer> sizeCount = sizeCalculator.csCount();

		for (int i = 0; i < row.size(); i++) {
			System.out.println("  " + (i + 1) + " " + sizeCount.get(i));
			System.out.println("");
		}
	}

}
