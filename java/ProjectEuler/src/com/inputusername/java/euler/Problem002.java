package com.inputusername.java.euler;

public class Problem002 {
	
	public static void main(String[] args) {
		int sum = 0;
		int f1 = 0, f2 = 1;
		while (f1 < 4000000) {
			int a = f2;
			f2 = f1 + f2;
			f1 = a;
			
			if (f1 % 2 == 0) {
				sum += f1;
			}
		}
		
		System.out.println("Result: " + sum);
	}
	
}
