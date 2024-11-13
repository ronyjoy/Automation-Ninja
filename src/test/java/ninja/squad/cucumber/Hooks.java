package ninja.squad.cucumber;

import java.util.Properties;

import io.cucumber.java.AfterAll;
import ninja.squad.cucumber.webdriver.DriverFactory;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import ninja.squad.cucumber.utils.ConfigReader;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import ninja.squad.cucumber.webdriver.BaseClass;

public class Hooks {
	private WebDriver driver;


	@After
	@AfterAll
	public void tearDown() {
		// Quit the driver after each scenario
		// Comment out DriverFactory.quitDriver(); to reuse the browser
		DriverFactory.quitDriver();
	}
  

}
		



