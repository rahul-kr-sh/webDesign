package com.sapient.js;

import java.io.FileNotFoundException;
import java.io.FileReader;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class Demo2 {

	public static void main(String[] args) {
		
		
		
		try {
			ScriptEngineManager mgr=new ScriptEngineManager();
			ScriptEngine jsEngine=mgr.getEngineByName("javascript");
			jsEngine.eval(new FileReader("nashornDemo.js"));
			
			Invocable invocable=(Invocable)jsEngine;
			
			Object result=invocable.invokeFunction("multiply", 10,2);
			System.out.println(result);
			
		} catch (FileNotFoundException | ScriptException | NoSuchMethodException e) {
			
			e.printStackTrace();
		}

	}

}
