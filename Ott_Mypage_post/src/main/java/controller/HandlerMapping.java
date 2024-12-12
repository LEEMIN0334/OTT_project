
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
		case "loginView":
			controller = new LoginViewController();
			break;
		case "login":
			controller = new LoginController();
		break;
		case "Main":
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
		case "write_post_view": 
			controller = new writePostViewController();
			break;
		case "write_post": 
			controller = new writePostController();
			break;
		case "list_post": 
			controller = new listPostController();
			break;			
		case "mypage_view":
			controller = new MypageController();
		}
		return controller;
	}

	
	
}
