<<<<<<< HEAD
package controller;

public class HandlerMapping {
    private static HandlerMapping instance = new HandlerMapping();

    private HandlerMapping() {}

    public static HandlerMapping getInstance() {
        if (instance == null)
            instance = new HandlerMapping();
        return instance;
    }

    public Controller createController(String command) {
        Controller controller = null;

        switch (command) {
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
            case "mypage_view":
                controller = new MypageController();
                break;
            case "registerView": // 회원가입 페이지
                controller = new MemberInsertViewController();
                break;
            case "register": // 회원가입 처리
                controller = new MemberInsertController();
                break;
            case "logout": // 로그아웃 처리
                controller = new LogoutController();
                break;
            case "mainpage_guide": // 요금 가이드 매핑
                controller = new MainPageGuideController();
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
=======

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

	
	
>>>>>>> 775632f93c79b58f7c1ef567c31a349f253d65aa
}
