package db1_gyak3;

import java.io.*;

public class Auto implements Serializable {
	private static final long serialVersionUID = 1L;
	String rsz;
	String tipus;
	int ar;

	public Auto(String r, String t, int a) {
		this.rsz = r;
		this.tipus = t;
		this.ar = a;
	}

	public void hf4() {
		Auto[] autoim = { new Auto("R11", "Opel", 333), new Auto("R12", "Fiat", 233), new Auto("R14", "Skoda", 364) };
		try {
			ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
			for (Auto auto : autoim) {
				kifile.writeObject(auto);
			}
			kifile.close();
		} catch (Exception ee) {
			ee.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		System.out.println("Ok");
	}

	public void hf5() {
		Auto ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (Auto) kifile.readObject();
						if (ma.ar > 300) {
							System.out.println("rendszam= " + ma.rsz);
						}
					}
				} catch (EOFException e) {
					ma = null;
				}
				kifile.close();
			}
		} catch (Exception ee) {
			ee.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		System.out.println("OK2");

	}
}