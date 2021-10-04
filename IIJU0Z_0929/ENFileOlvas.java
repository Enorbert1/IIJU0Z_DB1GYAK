package db1_gyak3;

import java.io.*;

public class ENFileOlvas {

	public static void main(String[] args) throws IOException {
		String[] temp = readFromFile("ersek.txt");

		System.out.println("Adatok szama: " + temp.length);
		for (int i = 0; i < temp.length; i++) {
			System.out.println(i + ". elem: " + temp[i]);
		}
		System.out.println("Osszeg: " + summaInArray(temp));

	}

	public static String[] readFromFile(String file) throws IOException {
		BufferedReader bfr = new BufferedReader(new FileReader(file));
		String szoveg = bfr.readLine();
		bfr.close();
		String[] tArray = szoveg.split(" ");
		return tArray;
	}

	public static int summaInArray(String[] a) throws IOException {
		int sum = 0;
		for (int i = 0; i < a.length; i++) {
			sum += Integer.parseInt(a[i]);
		}
		return sum;
	}

}
