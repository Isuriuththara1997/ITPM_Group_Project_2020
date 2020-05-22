/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 1.0
 */

package sizeComplexity;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class sizeCalculator {

	ArrayList<String> line;
	ArrayList<Integer> csCount;
	ArrayList<Integer> keywordsCount;
	ArrayList<Integer> identifiersCount;
	ArrayList<Integer> operatorsCount;
	ArrayList<Integer> numbersCount;
	ArrayList<Integer> stringsCount;

	String keyword = "(\\bpublic|void\\b|true\\b|else\\b|default\\b|return\\b|null\\b|break\\b|this\\b)";
	String operators = "([+,-,*,/,%,++,--,==,!=,>,<,<=,>=])";
	String number = "\\d+";
	String literals = "\"(.*?)\"";
	String logical1 = "(\\|\\|)";
	String logical2 = "(\\&&)";

	public sizeCalculator(ArrayList<String> lines) {
		this.line = lines;
		csCount = new ArrayList<Integer>(lines.size());
		keywordsCount = new ArrayList<Integer>(lines.size());
		identifiersCount = new ArrayList<Integer>(lines.size());
		operatorsCount = new ArrayList<Integer>(lines.size());
		numbersCount = new ArrayList<Integer>(lines.size());
		stringsCount = new ArrayList<Integer>(lines.size());
	}

	public int operatorsCount(String line) {
		Pattern p1 = Pattern.compile(operators);
		Matcher m1 = p1.matcher(line);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}

	public int keywordCount(String line) {
		Pattern p1 = Pattern.compile(keyword);
		Matcher m1 = p1.matcher(line);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}

	public int numberCount(String line) {
		Pattern p1 = Pattern.compile(number);
		Matcher m1 = p1.matcher(line);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}

	public int literalCount(String line) {
		Pattern p1 = Pattern.compile(literals);
		Matcher m1 = p1.matcher(line);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		return addCount;
	}

	public int logicalCount(String line1, String line2) {
		Pattern p1 = Pattern.compile(logical1);
		Pattern p2 = Pattern.compile(logical2);
		Matcher m1 = p1.matcher(line1);
		Matcher m2 = p2.matcher(line2);

		int addCount = 0;

		while (m1.find()) {

			addCount = addCount + 1;
		}
		while (m2.find()) {
			addCount = addCount + 1;
		}
		return addCount;
	}

	public void calclinebyline() {
		for (int i = 0; i < line.size(); i++) {
			int keywords = keywordCount(line.get(i));
			int operators = operatorsCount(line.get(i));
			int numbers = numberCount(line.get(i));
			int literals = literalCount(line.get(i));
			int logicals = logicalCount(line.get(i), line.get(i));

			keywordsCount.add(keywords);
			operatorsCount.add(operators + logicals);
			numbersCount.add(numbers);
			stringsCount.add(literals);
			identifiersCount.add(null);
			csCount.add(keywords + operators + numbers + literals + logicals);
		}
	}

	public ArrayList<Integer> csCount() {
		calclinebyline();
		return csCount;
	}

	public ArrayList<Integer> keywords() {
		calclinebyline();
		return keywordsCount;
	}

	public ArrayList<Integer> operators() {
		calclinebyline();
		return operatorsCount;
	}

	public ArrayList<Integer> identifiers() {
		calclinebyline();
		return identifiersCount;
	}

	public ArrayList<Integer> numbers() {
		calclinebyline();
		return numbersCount;
	}

	public ArrayList<Integer> strings() {
		calclinebyline();
		return stringsCount;
	}
}
