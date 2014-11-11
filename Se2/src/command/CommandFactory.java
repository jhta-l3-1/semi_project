package command;

import map.*;
import login.*;
import pages.*;

public class CommandFactory {
	
	 private CommandFactory(){}
	 
	 private static CommandFactory instance = new CommandFactory();
	 // ΩÃ±€≈Ê ∆–≈œ
	 public static CommandFactory getInstance(){
		 return instance;
	 }
	 
	 //∆—≈‰∏Æ ∆–≈œ
	 public Command createCommand(String cmd){
		 //∑Œ±◊¿Œ »≠∏È
		 if(cmd.equals("login"))  return new Login();
		 
		 else if(cmd.equals("loginadd"))  return new LoginAdd();
		 
		 else if(cmd.equals("loginadd2"))  return new LoginAdd2();
		 
		 else if(cmd.equals("loginadd3"))  return new LoginAdd3();

		 else if(cmd.equals("mainpage"))  return new MainPage();
		 
		 else if(cmd.equals("map"))  return new Map();
		 
		 return null;
	 }
}
