package ninja.squad.cucumber.page;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {
    private WebDriver driver;

    // Constructor
    public LoginPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    // Page elements
    @FindBy(id = "id_username")
    private WebElement usernameField;

    @FindBy(id = "id_password")
    private WebElement passwordField;

    @FindBy(xpath = "//input[@type='submit' and @value='Login']")
    private WebElement loginButton;

    // Page actions
    public void enterUsername(String username) {
        usernameField.sendKeys(username);
    }

    public void enterPassword(String password) {
        passwordField.sendKeys(password);
    }

    public void clickLoginButton() {
        loginButton.click();
    }

    public void goTo() {
        driver.get("https://dsportalapp.herokuapp.com/login"); // URL of the login page
    }
}
