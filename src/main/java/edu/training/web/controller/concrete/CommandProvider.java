package edu.training.web.controller.concrete;

import java.util.HashMap;
import java.util.Map;
import edu.training.web.controller.concrete.implement.DoLogIn;
import edu.training.web.controller.concrete.implement.DoLogOut;
import edu.training.web.controller.concrete.implement.DoRegistration;
import edu.training.web.controller.concrete.implement.GoToAdminPage;
import edu.training.web.controller.concrete.implement.GoToInProcessPage;
import edu.training.web.controller.concrete.implement.GoToLogInPage;
import edu.training.web.controller.concrete.implement.GoToMainPage;
import edu.training.web.controller.concrete.implement.GoToProfilePage;
import edu.training.web.controller.concrete.implement.GoToRegistrationPage;
import edu.training.web.controller.concrete.implement.GoToStartPage;

public class CommandProvider {
	
	private Map<CommandName, Command> commands = new HashMap<>();
	
	public CommandProvider() {
		
		commands.put(CommandName.DO_LOG_IN, new DoLogIn());
		commands.put(CommandName.DO_LOG_OUT, new DoLogOut());
		commands.put(CommandName.DO_REGISTRATION, new DoRegistration());
		
		commands.put(CommandName.GO_TO_ADMIN_PAGE, new GoToAdminPage());
		commands.put(CommandName.GO_TO_IN_PROCESS_PAGE, new GoToInProcessPage());
		commands.put(CommandName.GO_TO_LOG_IN_PAGE, new GoToLogInPage());
		commands.put(CommandName.GO_TO_MAIN_PAGE, new GoToMainPage());
		commands.put(CommandName.GO_TO_PROFILE_PAGE, new GoToProfilePage());
		commands.put(CommandName.GO_TO_REGISTRATION_PAGE, new GoToRegistrationPage());
		commands.put(CommandName.GO_TO_START_PAGE, new GoToStartPage());
		
		commands.put(CommandName.NO_SUCH_COMMAND, new NoSuchCommand());

	} 
	
	public Command takeCommand(String userCommand) {
		CommandName commandName;
		Command command;
		
		try {
			commandName = CommandName.valueOf(userCommand.toUpperCase());
			command = commands.get(commandName);
		}catch(IllegalArgumentException | NullPointerException e) {
			command = commands.get(CommandName.NO_SUCH_COMMAND);
		}
		return command;
	}

}
