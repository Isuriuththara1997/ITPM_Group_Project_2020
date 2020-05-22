/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 3.0
 */

package methodsComplexity;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MethodCalculator {

	ArrayList<String> method;
	ArrayList<Integer> arrmethods;
	
	String methods = "(\\bin|public\\b|return\\b)";
	
	public MethodCalculator(ArrayList<String> method) {
		this.method = method;
		arrmethods = new ArrayList<Integer>(method.size());
	}
	
	public int methodCount(String var) {
		Pattern p1 = Pattern.compile(methods);
		Matcher m1 = p1.matcher(var);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}
	
	public void methodCal() {
		for (int i = 0; i < method.size(); i++) {
			int methods = methodCount(method.get(i));

			arrmethods.add(methods);
			
		}
	}
	public ArrayList<Integer> allmethods() {
		methodCal();
		return arrmethods;
	}
}
