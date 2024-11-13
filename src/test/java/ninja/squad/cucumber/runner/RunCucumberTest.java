package ninja.squad.cucumber.runner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "ninja.squad.cucumber.step",
        tags = "@wip",
        plugin = {"pretty", "html:target/cucumber-reports.html"}
)
public class RunCucumberTest {
}
