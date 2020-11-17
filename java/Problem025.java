package com.inputusername.java.euler;

//TODO: fix
//not efficient at all
public class Problem025 {
	
	public static void main(String[] args) {
		long f1 = (long) 0, f2 = (long) 1;
		while (Long.toString(f1).length() < 1000) {
			long a = (long) f1;
			f2 = f1 + f2;
			f1 = a;
		}
		System.out.println("Result: " + f1);
	}
	
}
