package ninja.squad.cucumber.webdriver;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;


public class BaseClass {
  
	public WebDriver driver;
	public static ThreadLocal<WebDriver> tlDriver = new ThreadLocal<>();

	public WebDriver init_driver(String browser) {
		System.out.println("browser value is:"+ browser);
		if(browser.equals("chrome")) {
			tlDriver.set(new ChromeDriver());
		}
		else if(browser.equals("firefox")) {
			tlDriver.set(new FirefoxDriver());
		
	}
		else if(browser.equals("safari")) {
			tlDriver.set(new SafariDriver());
		
	}
		else {
			System.out.println("please pass the correct browser value:" + browser);
	

}
		getDriver().manage().deleteAllCookies();
		getDriver().manage().window().maximize();
		return getDriver();
}
	public static synchronized WebDriver getDriver() {
		return tlDriver.get();
	}
}
