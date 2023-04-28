package step_definitions;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.AmazonHomePage;
import pages.amazonSearchPage;
import utilites.BrowserUtils;
import utilites.Driver;

public class amazonSearchCriteria {

	AmazonHomePage ahomepage = new AmazonHomePage();
	BrowserUtils utils = new BrowserUtils();
	amazonSearchPage search = new amazonSearchPage();
	
	@Given("I am on amazon home page")
	public void i_am_on_amazon_home_page() {
		Driver.getDriver().get("https://www.amazon.com/");
		String homepageTitle = Driver.getDriver().getTitle();
		Assert.assertEquals(homepageTitle, "Amazon.com. Spend less. Smile more.");
	}
	@When("I search {string}")
	public void i_search(String testdata) throws InterruptedException {
		Thread.sleep(1000);
		ahomepage.searchField.sendKeys(testdata);
	}
	@When("click search")
	public void click_search() {
		ahomepage.searchButton.click();
	}
	@Then("I should see {string} as search result")
	public void i_should_see_as_search_result(String testdata) {
		utils.waitUntilElementVisible(search.amazonPageSortbyText);
		
		System.out.println(search.searchResult.getText());
		Assert.assertEquals(utils.textOfSearchCriteria(), testdata);
		
		
		

		
		
		

		
		
	
		
		
	}
}
