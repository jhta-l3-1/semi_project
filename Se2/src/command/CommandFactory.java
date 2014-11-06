package command;

import map.*;
import login.*;
import pages.*;

public class CommandFactory {
	
	 private CommandFactory(){}
	 
	 private static CommandFactory instance = new CommandFactory();
	 // 싱글톤 패턴
	 public static CommandFactory getInstance(){
		 return instance;
	 }
	 
	 //팩토리 패턴
	 public Command createCommand(String cmd){
		 //로그인 화면
		 if(cmd.equals("login"))  return new Login();
		 
		 else if(cmd.equals("mainpage"))  return new MainPage();
		 
		 else if(cmd.equals("map"))  return new Map();
		 
		 return null;
	 }
}
