package inheritance;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class InheritanceMain {
public static void main(String[] args) throws IOException {
		

	String f1 = ("C:\\Users\\Minindu Sudantha\\Desktop\\DaysPerMonth.java");
	FileReader fr = new FileReader(f1);
	BufferedReader br = new BufferedReader(fr);
		
		int i ;
		String lines;
		ArrayList<String> line = new ArrayList<>();
		
		while((lines = br.readLine())!= null) {
			line.add(lines);
			
		}
		
		Inheritance complexity = new Inheritance(line);
		
		ArrayList<Integer> Count = complexity.inheritkeyline();
		
		
		
for(i=0; i < line.size(); i++ ){
			
			System.out.println("" + (i+1) +"" + line.get(i) + "" +Count.get(i)+""+Count.get(i)+""+(Count.get(i) + Count.get(i)));
		
}
		System.out.println(" ");
		System.out.println("Total is = " +complexity.tot());
		

		
	}
}
