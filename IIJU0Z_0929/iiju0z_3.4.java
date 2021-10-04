package db1_gyak3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;

public class Gyak3_4 {
	public static void main(String[] Args){
		Scanner input = new Scanner(System.in);
		String temp = input.nextLine();
		out(temp);
		input.close();
	}
	public static void out(String fnev) {
		String sor;
		try {
			BufferedReader br = new BufferedReader(new FileReader(fnev));
			while ((sor = br.readLine()) != null) {
				System.out.println(sor.toUpperCase());
			}
			br.close();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
	}
}
