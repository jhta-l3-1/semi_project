package command;

import map.*;
import login.*;
import pages.*;

public class CommandFactory {
	
	 private CommandFactory(){}
	 
	 private static CommandFactory instance = new CommandFactory();
	 // �̱��� ����
	 public static CommandFactory getInstance(){
		 return instance;
	 }
	 
	 //���丮 ����
	 public Command createCommand(String cmd){
		 //�α��� ȭ��
		 if(cmd.equals("login"))  return new Login();
		 
		 else if(cmd.equals("loginadd"))  return new LoginAdd();
		 
		 else if(cmd.equals("loginadd2"))  return new LoginAdd2();
		 
		 else if(cmd.equals("loginadd3"))  return new LoginAdd3();

		 else if(cmd.equals("mainpage"))  return new MainPage();
		 
		 else if(cmd.equals("map"))  return new Map();
		 
		 return null;
	 }
}
