package com.sapient.js;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

public class Demo1 {

	public static void main(String[] args) {
		ScriptEngineManager mgr=new ScriptEngineManager();
		ScriptEngine jsEngine=mgr.getEngineByName("javascript");
		try{
			jsEngine.eval("print('Hello, world!')");
			jsEngine.eval("print(parseInt('5') + parseInt('10'))");
			
			
		}catch(Exception e){
			
		}

	}

}
