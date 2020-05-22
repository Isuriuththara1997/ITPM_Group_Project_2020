/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 2.0
 */

package variableComplexity;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import variableComplexity.variableCalculator;
import variableComplexity.variableCalculatorMain;

public class variableCalculatorMain {
	String path;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public static void main(String[] args) throws IOException {

		variableCalculatorMain complexityMain = new variableCalculatorMain();
		String documentName = complexityMain.getPath();

		FileReader fileReader = new FileReader(documentName);
		BufferedReader bufferedReader = new BufferedReader(fileReader);

		int i;
		String rows;
		ArrayList<String> row = new ArrayList<>();

		while ((rows = bufferedReader.readLine()) != null) {
			row.add(rows);

		}

		variableCalculator variableCalculator = new variableCalculator(row);

		ArrayList<Integer> sizeCount = variableCalculator.allVariable();

		for (i = 0; i < row.size(); i++) {
			System.out.println("  " + (i + 1) + " " + sizeCount.get(i));
			System.out.println("");
		}
	}

}
