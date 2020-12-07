package chap20.lecture;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex2ServletcontextListener
 *
 */
@WebListener
public class Ex2ServletcontextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex2ServletcontextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("우리 앱 실행 EX2");
    	ServletContext application = sce.getServletContext();
    	String val = application.getInitParameter("my-param1");
    	
    	System.out.println(val);
    }
	
}



