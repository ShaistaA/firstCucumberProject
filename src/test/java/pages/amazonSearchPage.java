package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilites.Driver;

public class amazonSearchPage {

	
	public amazonSearchPage() {
		PageFactory.initElements(Driver.getDriver(), this);
	}
	
	@FindBy (xpath = "//span[text()='Sort by:']")
	public WebElement amazonPageSortbyText;
	
	@FindBy (xpath = "//span[contains(text(), 'results for')]/following-sibling::span[2]")
	public WebElement searchResult;
	
	
}
