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
		 
		 else if(cmd.equals("mainpage"))  return new MainPage();
		 
		 else if(cmd.equals("map"))  return new Map();
		 
		 return null;
	 }
}
