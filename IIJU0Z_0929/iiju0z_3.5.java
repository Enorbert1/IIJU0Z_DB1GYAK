package db1_gyak3;

import java.io.*;

public class Gyak3_5 {
	public static void main (String[] Args) {
		copyFromFileToAnother("horny.txt", "2horny2function.txt");
		
	}
	public static void copyFromFileToAnother(String fnevbe, String fnevki) {
		String line;
		String[] k1 = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"};
		String[] k2= {"egy", "ketto", "harom", "negy", "ot", "hat", "hét", "nyolc", "kilenc", "nulla"};
		try {
			BufferedReader br = new BufferedReader(new FileReader(fnevbe));
			BufferedWriter bw = new BufferedWriter(new FileWriter(fnevki));
			while((line = br.readLine())!= null) {
				for(int i = 0; i< 10; i++) {
					line = line.replace(k1[i], k2[i]);
				}
				bw.write(line);
				bw.newLine();
			}
			br.close();
			bw.close();
			System.out.println("Ok");
		}catch (Exception ee){
			ee.printStackTrace();
			
		}
	}
}
