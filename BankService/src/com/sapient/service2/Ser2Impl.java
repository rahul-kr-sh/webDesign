package com.sapient.service2;

public class Ser2Impl implements ISer2 {

	@Override
	public double calcCompund(double p, int n, float r) {
		
		return p * Math.pow(1 +r/100, n) -p;

	}

}
