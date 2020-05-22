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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class variableCalculator {

	ArrayList<String> var;
	ArrayList<Integer> compositeVarriables;
	ArrayList<Integer> primitiveVarriable;
	ArrayList<Integer> allVariables;

	String pvariable = "(\\bin|long\\b|double\\b|float\\b|boolean\\b|char\\b)";
	String cvariable = "(\\Array|List\\b|ArrayList\\b|Array\\b)";

	public variableCalculator(ArrayList<String> vars) {
		this.var = vars;
		primitiveVarriable = new ArrayList<Integer>(vars.size());
		compositeVarriables = new ArrayList<Integer>(vars.size());
		allVariables = new ArrayList<Integer>(vars.size());
	}

	public int pvariableCount(String var) {
		Pattern p1 = Pattern.compile(pvariable);
		Matcher m1 = p1.matcher(var);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}

	public int cvariableCount(String var) {
		Pattern p1 = Pattern.compile(cvariable);
		Matcher m1 = p1.matcher(var);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}
	
	public void calCv() {
		int wcdtv = 2;
		int wpdtv = 1;
		int wvs = 1;
		for (int i = 0; i < var.size(); i++) {
			int pvariables = pvariableCount(var.get(i));
			int cvariables = cvariableCount(var.get(i));

			primitiveVarriable.add(pvariables);
			compositeVarriables.add(cvariables);
			allVariables.add(wvs*((pvariables*wpdtv)+(cvariables*wcdtv)));
			
		}
	}
	public ArrayList<Integer> allVariable() {
		calCv();
		return allVariables;
	}

	public ArrayList<Integer> priVariable() {
		calCv();
		return primitiveVarriable;
	}
	public ArrayList<Integer> compVariable() {
		calCv();
		return compositeVarriables;
	}
	
}
