package Adaptador;

import java.io.File;
import java.io.IOException;
import java.time.Duration;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class AdaptadorSelenium {

	private WebDriver driver = null;
	private static AdaptadorSelenium adaptador = null;
	
	public static AdaptadorSelenium getInstance(String navegador) {
		synchronized (AdaptadorSelenium.class) {
			try {
				if(adaptador == null) {				
					adaptador = new AdaptadorSelenium(navegador);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return adaptador;
	}
	
	public AdaptadorSelenium(String navegador) {
		if(navegador.equals("Chrome")) {
			System.setProperty("webdriver.chrome.driver", "./chromedriver.exe");
			driver = new ChromeDriver();
		}else if(navegador.equals("Firefox")) {
			System.setProperty("webdriver.gecko.driver", "./geckodriver.exe");
			driver = new FirefoxDriver();
		}
		driver.manage().window().maximize();
		driver.manage().deleteAllCookies();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
	}
	
	public void abrirURL(String url) {
		driver.get(url);
	}
	
	public void cerrarDriver() {
		driver.quit();
	}

	public void tomarEvidencia(String ruta) throws IOException {
		TakesScreenshot srcShot = ((TakesScreenshot)driver);
		File srcFile = srcShot.getScreenshotAs(OutputType.FILE);
		File destFile = new File(ruta);
		FileUtils.copyFile(srcFile, destFile);
	}

	public void actionsClick(By localElement) {
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
		WebElement element = wait.until(ExpectedConditions.elementToBeClickable(localElement));
		element.click();
	}

	public void textInputActions(By localElement, String text) {
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(30));
		WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(localElement));
		element.sendKeys(text);
	}

	public String getTextActions(By localElement) {
		WebElement element = driver.findElement(localElement);
		return element.getText();
	}

	public void selectOptions(By localElement, String typeSelect, String value) {
		Select select = new Select(driver.findElement(localElement));
		if(typeSelect.equals("texto")) {
			select.selectByVisibleText(value);
		}else if(typeSelect.equals("value")){
			select.selectByValue(value);
		}
	}
	public WebElement findElementById(String id) {
		return driver.findElement(By.id(id));
	}

	public  WebElement findElementByText(String text){
		return  driver.findElement(By.linkText(text));
	}

	public WebElement findElementByClass(String classU) {
		return driver.findElement(By.className(classU));
	}

	public WebElement findElement(String element) {
		return driver.findElement(By.cssSelector(element));
	}
	public WebElement findElementXpath(String element) {
		return driver.findElement(By.xpath(element));
	}
	public  WebElement findCssSelector(String cssSelector) {
		return driver.findElement(By.cssSelector(cssSelector));
	}
	public  WebElement findTagName(String tag) {
		return driver.findElement(By.tagName(tag));
	}

	public String getElementTextById(String id) {
		return driver.findElement(By.id(id)).getText();
	}
}
