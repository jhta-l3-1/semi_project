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
		 
		 //마이페이지 화면
		 else if(cmd.equals("mainpage"))  return new MainPage();
		 
		 
		 //맵 화면
		 else if(cmd.equals("map"))  return new Map();
		 else if(cmd.equals("mapadd"))  return new MapAdd();
		 else if(cmd.equals("mapsearch"))  return new MapSearch();
		 
		 return null;
	 }
}
