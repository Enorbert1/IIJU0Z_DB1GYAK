package db1_gyak3;

import java.util.*;
import java.io.*;

public class ENFileIr {

	public static void main(String[] args) throws IOException {
		writeToFile(inputDataToWrite(), "ersek.txt");
	}

	public static int readIntFromKb() {
		Scanner input = new Scanner(System.in);
		int temp = 0;
		boolean hiba = true;
		while (hiba) {
			if (input.hasNextInt()) {
				temp = input.nextInt();
			} else {
				System.out.println("Nem jo, ujra!");
				input.next();
				continue;
			}
			hiba = false;

		}
		return temp;
	}

	public static List<Integer> inputDataToWrite() throws IOException {
		System.out.println("Hany adatot szeretnel felvinni? ");
		int adatcounter = readIntFromKb();
		List<Integer> templist = new ArrayList<Integer>();
		for (int i = 0; i < adatcounter; i++) {
			System.out.println(i + ". adat: ");
			templist.add(readIntFromKb());
		}
		return templist;
	}

	public static void writeToFile(List<Integer> a, String file) throws IOException {
		BufferedWriter bfw = new BufferedWriter(new FileWriter(file, true));
		System.out.println("Adatok kiirasa: " + file + " allomanyba.");
		for (int i = 0; i < a.size(); i++) {
			System.out.println(a.get(i));
			bfw.append(String.valueOf(a.get(i)) + " ");
		}
		bfw.close();
	}
}
