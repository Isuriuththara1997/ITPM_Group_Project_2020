package ComplexityControlStructure;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ControlStructureCalculation {



	String conditionalC = "(if\\s*)";
	String iterativeC = "(for\\s*)|(while\\s*)|(do\\s*)";
	String switchC = "(switch\\s*)";
	String caseC = "(case\\s*)";
	
	ArrayList<String> row;
	ArrayList<Integer> Count;
	ArrayList<Integer> WTC;
	ArrayList<Integer> NC;

	public ControlStructureCalculation(ArrayList<String> rows) {
		this.row = rows;
		Count = new ArrayList<Integer>(rows.size());
		WTC = new ArrayList<Integer>(rows.size());
		NC = new ArrayList<Integer>(rows.size());
	}


	public int conditionalCcount(String row) {
		Pattern pattern = Pattern.compile(conditionalC);
		Matcher matcher = pattern.matcher(row);

		int conditionalCCount = 0;

		while (matcher.find()) {

			conditionalCCount = conditionalCCount + 2;
		}
		return conditionalCCount;
	}

	public int iterativeCcount(String row) {
		Pattern pattern = Pattern.compile(iterativeC);
		Matcher matcher = pattern.matcher(row);

		int iterativeCCount = 0;

		while (matcher.find()) {

			iterativeCCount = iterativeCCount + 3;
		}
		return iterativeCCount;
	}

	public int switchCcount(String row) {
		Pattern pattern = Pattern.compile(switchC);
		Matcher matcher = pattern.matcher(row);

		int switchCCount = 0;

		while (matcher.find()) {

			switchCCount = switchCCount + 2;
		}
		return switchCCount;
	}

	public int caseCcount(String row) {
		Pattern pattern = Pattern.compile(caseC);
		Matcher matcher = pattern.matcher(row);

		int caseCCount = 0;

		while (matcher.find()) {

			caseCCount = caseCCount + 1;
		}
		return caseCCount;
	}

	//

	public int getWtcc(String row) {
		Pattern p1 = Pattern.compile(conditionalC);
		Matcher m1 = p1.matcher(row);
		
		int weight1 = 0;

		if (m1.find()) {

			weight1 = 2;
		}

		return weight1;
	}
	public int getWtci(String row) {
	
		Pattern p2 = Pattern.compile(iterativeC);
		Matcher m2 = p2.matcher(row);

		int weight2 = 0;
		
		 if (m2.find()) {
			weight2 = 3;
		}

		return weight2;
	}
	public int getWtcs(String row) {
		
		Pattern p3 = Pattern.compile(switchC);
		Matcher m3 = p3.matcher(row);

		int weight3 = 0;

	   if (m3.find()) {
			weight3 = 2;
		}

		return weight3;
	}
	public int getWtccase(String row) {		
		Pattern p4 = Pattern.compile(caseC);
		Matcher m4 = p4.matcher(row);
		
		int weight4 = 0;

		if (m4.find()) {
			weight4 = 1;
		}
		return weight4;
	}


    public int getNC(String row){
        
    	List<String> cc = Arrays.asList("if", "for", "while", "do", "switch", "case");

        String[] t = row.split("[ ()\\[\\]]");
        int nc = 0;
        for (String tk : t){
            if(cc.contains(tk)){
                nc ++;
            }
        }
        return nc; 
    }

	//
	public void calculateLineByLine() {
		int i;
		for (i = 0; i < row.size(); i++) {
			int conditionalccount = conditionalCcount(row.get(i));
			int iterativeccount = iterativeCcount(row.get(i));
			int switchccount = switchCcount(row.get(i));
			int caseccount = caseCcount(row.get(i));
			int weight1 = getWtcc(row.get(i));
			int weight2 = getWtci(row.get(i));
			int weight3 = getWtcs(row.get(i));
			int weight4 = getWtccase(row.get(i));
		
			int nc = getNC(row.get(i));
			
			WTC.add(weight1+weight2+weight3+weight4);
			
		
			
			NC.add(nc);
			
			Count.add(conditionalccount + iterativeccount + switchccount + caseccount);
		}
	}


	public ArrayList<Integer> cntrolrow() {
		calculateLineByLine();
		return Count;
	}
//
	public ArrayList<Integer> wtcrow() {
		calculateLineByLine();
		return WTC;
	}
	public ArrayList<Integer> ncrow() {
		calculateLineByLine();
		return NC;
	}

}
