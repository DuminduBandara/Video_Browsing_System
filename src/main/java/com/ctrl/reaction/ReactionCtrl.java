package com.ctrl.reaction;

import java.io.FileNotFoundException;
import java.io.FileReader;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class ReactionCtrl {
	
	public static void main(String [] args) {
		ScriptEngine engine = new ScriptEngineManager().getEngineByName("nashorn");
		try {
			engine.eval("print('Welcome')");
			engine.eval(new FileReader("JS/test.js"));
			Invocable invocable = (Invocable)engine;
			invocable.invokeFunction("sumofNum", 10, 20);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ScriptException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int sumofNum(int x, int y) {
		return x + y;
	}
	 

}
