package com.inputusername.java.euler;

public class Problem005 {
	
	public static int LCM(int x, int y) {
		//magic
		return 0;
	}
	
	public static void main(String[] args) {
		int result = 1;
		for (int i = 1; i <= 20; i++) {
			result = LCM(i,result);
		}
		System.out.println("Result: " + result);
	}
	
}