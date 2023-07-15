package configuration;

import drivers.DriverClass;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class KarateUIUtils extends DriverClass {
    public static Logger logger =  LogManager.getLogger(KarateUIUtils.class);

    private @FindBy(how = How.XPATH, using = "//div[contains(text(),'Add New Vehicle')]")
    WebElement newVehicle;
    private @FindBy(how = How.XPATH, using = "//div[contains(text(),'Auto/Light Trucks')]")
    WebElement lightTruck;
    private @FindBy(how = How.XPATH, using = "//div[@data-value='Medium/Heavy Duty']")
    WebElement heavyDuty;
    private @FindBy(how = How.XPATH, using = "//div[@class='geo-option-name'][normalize-space()='Year']")
    WebElement year;
    private @FindBy(how = How.XPATH, using = "//div[@data-value='2020']")
    WebElement spYear;
    private @FindBy(how = How.XPATH, using = "//body[1]/header[1]/div[2]/div[1]/div[1]/div[5]/geo-header-garage[1]/div[1]/div[3]/div[2]/div[1]/geo-identify-vehicle[1]/div[1]/div[2]/div[3]/div[2]/div[1]")
    WebElement make;
    private @FindBy(how = How.XPATH, using = "//div[@data-value='Blue Bird']")
    WebElement blueBird;
    private @FindBy(how = How.XPATH, using = "//div[@class='geo-option-name'][normalize-space()='Model']")
    WebElement model;
    private @FindBy(how = How.XPATH, using = "//div[@data-value='3_166_21_2020']")
    WebElement spModel;
    private @FindBy(how = How.XPATH, using = "//button[@type='button']")
    WebElement button;
    private @FindBy(id = "geo-inputText")
    WebElement textInput;
    private @FindBy(how = How.XPATH, using = "//button[@aria-label='submit']")
    WebElement submit;
    private @FindBy(how = How.XPATH, using = "//div[@class='geo-productpod-middle-invatc tablet-desktop']//button[@id='ADEAD8528']")
    WebElement addCart;
    private @FindBy(how = How.XPATH, using = "//a[@class='nol-button blue mobile-fullWidth marg-xsv-top-sm marg-xsv-bot-xs view-cart standard-text font-normal-text rounded-box']")
    WebElement goCart;
    private @FindBy(how = How.XPATH, using = "//div[@class='my-menu-icon-number']")
    WebElement actualQuantity;
    private @FindBy(id = "#quantity_0-UnFit")
    WebElement newQuantity;


    public static String getBaseUrl() {
        logger.info("baseurl is  https://www.napaonline.com" );
        return "https://www.napaonline.com/";
    }

    public void clickNewVehicle() {
        logger.info("waiting for the element and click");
        waitForWebElementAndClick(newVehicle);
    }



}



