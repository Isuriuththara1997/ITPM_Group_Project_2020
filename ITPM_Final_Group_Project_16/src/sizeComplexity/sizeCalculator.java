package sizeComplexity;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class sizeCalculator {

	ArrayList<String> line;
	ArrayList<Integer> ctcsCount;

	String keyword = "(\\bpublic|void\\b|true\\b|else\\b|default\\b|return\\b|null\\b|break\\b|this\\b)";
	String operators = "([+,-,*,/,%,++,--,==,!=,>,<,<=,>=])";
	String number = "\\d+";
	String literals = "\"(.*?)\"";
	String logical1 = "(\\|\\|)";
	String logical2 = "(\\&&)";

	public sizeCalculator(ArrayList<String> lines) {
		this.line = lines;
		ctcsCount = new ArrayList<Integer>(lines.size());
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

	public int calcline(String lines) {
		int keywords = keywordCount(lines);
		int operators = operatorsCount(lines);
		int numbers = numberCount(lines);
		int literals = literalCount(lines);
		int logicals = logicalCount(lines, lines);

		return (keywords + operators + numbers + literals + logicals);

	}

	public void calclinebyline() {
		for (int i = 0; i < line.size(); i++) {
			int keywords = keywordCount(line.get(i));
			int operators = operatorsCount(line.get(i));
			int numbers = numberCount(line.get(i));
			int literals = literalCount(line.get(i));
			int logicals = logicalCount(line.get(i), line.get(i));

			ctcsCount.add(keywords + operators + numbers + literals + logicals);
		}
	}

	public ArrayList<Integer> ctcsline() {
		calclinebyline();
		return ctcsCount;
	}

	public int calcCtcs() {
		int totalctcs = 0;
		int i;
		for (i = 0; i < ctcsCount.size(); i++) {
			totalctcs = totalctcs + ctcsCount.get(i);
		}

		return totalctcs;
	}

}
