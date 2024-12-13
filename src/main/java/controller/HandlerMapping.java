
package controller;


public class HandlerMapping {
	private static HandlerMapping instance = new HandlerMapping();

	private HandlerMapping() {	}

	public static HandlerMapping getInstance() {
		if(instance == null)
			instance = new HandlerMapping();
		return instance;
	}
	
	public Controller createController(String command) {
		Controller controller = null;
		
		switch(command) {
		case "ottloginView":
			controller = new LoginViewController();
			break;
		case "login":
			controller = new LoginController();
		break;
		case "ottMain":
			controller = new MainController();
			break;
		case "userUpdate":
			controller = new UserInfoUpdateController();
			break;
		case "userDelete":
			controller = new UserInfoDeleteController();
			break;
		case "groupView":
			controller = new GroupViewController();
			break;
		case "insertGroupAndPost":
			controller = new InsertGroupAndPostController();
			break;
		case "insertpostview":
			controller = new insertpostviewController();
			break;
		case "postlistview":
			controller = new postlistviewController();
			break;
		case "postView":
			controller = new postViewController();
			break;
		case "insertgroupmember":
			controller = new insertgroupmemberController();
			break;
			
		}
		return controller;
	}

	
	
}
