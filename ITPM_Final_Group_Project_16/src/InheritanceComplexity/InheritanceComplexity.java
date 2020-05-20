package InheritanceComplexity;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class InheritanceComplexity {

	String keyword1 = "extends";
	String keyword2 = "implements";

	
	ArrayList<String> line;
	ArrayList<Integer> key;

	public InheritanceComplexity(ArrayList<String> lines) {
		this.line = lines;
		key = new ArrayList<Integer>(lines.size());
	}


	public int extendsKey(String line) {
		Pattern p = Pattern.compile(keyword1);
		Matcher m = p.matcher(line);

		int extendskey = 0;

		while (m.find()) {

			extendskey++;
		}
		return extendskey;
	}

	public int implementsKey(String line) {
		Pattern p = Pattern.compile(keyword2);
		Matcher m = p.matcher(line);

		int implementskey = 0;

		if (m.find()) {

			implementskey = implementskey + 2;
		}
		return implementskey;
	}

	
	

	public void calc() {
		int i;
		for (i = 0; i < line.size(); i++) {
			int extendsKeys = extendsKey(line.get(i));
			int implementsKeys = implementsKey(line.get(i));

			key.add(extendsKeys + implementsKeys);
		}
	}


	public ArrayList<Integer> inheritkeyline() {
		calc();
		return key;
	}
	public int tot() {
		int total = 0;
		int i;
		for(i = 0; i < key.size(); i++) {
			total = total + key.get(i);
		}
		
		return total;
	}
	
	
}


