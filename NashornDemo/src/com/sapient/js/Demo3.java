package com.sapient.js;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;

public class Demo3 {

	public  String sayHello(String args) {
		
		return "Hello " + args;
	}
	
public static String getDate() {
		DateTimeFormatter df= DateTimeFormatter.ofPattern("dd/MMMM/yyyy");
		return LocalDate.now().format(df);
	}
}
