package ninja.squad.cucumber.step;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import ninja.squad.cucumber.page.LoginPage;
import ninja.squad.cucumber.webdriver.DriverFactory;
import org.openqa.selenium.WebDriver;


public class LoginStepDefinitions {
	private WebDriver driver = DriverFactory.getDriver();
	private LoginPage loginPage = new LoginPage(driver);

	@Given("I open the login page")
	public void openLoginPage() {
		loginPage.goTo();
	}

	@When("I enter username {string} and password {string}")
	public void enterUsernameAndPassword(String username, String password) {
		loginPage.enterUsername(username);
		loginPage.enterPassword(password);
	}

	@When("I click the login button")
	public void clickLoginButton() {
		loginPage.clickLoginButton();
	}

	@Then("I should see the homepage")
	public void verifyHomePage() throws InterruptedException {

		//assertTrue(driver.getTitle().contains("Home"));
	}

	@Then("I should see error message")
	public void iShouldSeeErrorMessage() {
	}

	@Given("the user is in the login ninja.squad.cucumber.page")
	public void the_user_is_in_the_login_ninja_squad_cucumber_page() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}
	@When("the user enters invalid username and invalid password")
	public void the_user_enters_invalid_username_and_invalid_password() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}
	@Then("the user is not logged in")
	public void the_user_is_not_logged_in() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}


}
