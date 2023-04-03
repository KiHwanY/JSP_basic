package member.action;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.ResourceBundle;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.action.Action;



public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Action> commandMap;
	
	public void init(ServletConfig config) throws ServletException{
		loadProperties("member/properties/MemberCommand.properties");
	}
  
    private void loadProperties(String filePath) {
		commandMap = new HashMap<String,Action>();
		
		ResourceBundle rb = ResourceBundle.getBundle(filePath);
		Enumeration<String> actionEnum = rb.getKeys();
		
		while(actionEnum.hasMoreElements()) {
			
			String command = actionEnum.nextElement();
			String className = rb.getString(command);
			
			try {
				Class actionClass = Class.forName(className);
				Action actionInstance =(Action)actionClass.newInstance();
				
				if(className.equals("member.action.MemberFormChangeAction")) {
					MemberFormChangeAction mf = (MemberFormChangeAction)actionInstance;
					mf.setCommand(command);
				}
				
				commandMap.put(command, actionInstance);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	public MemberController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
