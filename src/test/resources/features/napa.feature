#import configuration.KarateUIUtils



Feature: Napaonline.com testing

  Background:

    #* configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] }
      # * call read('config.js')
    * def d = Java.type('drivers.DriverClass')
    * def baseUrl = 'https://www.napaonline.com/'
    * def driver = 'chrome'
    * def ui = Java.type('configuration.KarateUIUtils')
     #DriverClass.createDriver(driver, baseUrl)
    # * def dc = Java.type('drivers.DriverClass')


   # * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"], options: {} }
  #  * karate.configure('driver', { implicitWait: 5000 })

    #* def driverOptions = { type: 'chrome', addOptions: ["--remote-allow-origins=*"], options: { implicitWait: 5000 } }
   # * configure driver = driverOptions

   # * def baseUrl = Java.type('configuration.KarateUIUtils').getBaseUrl()

   # * def waitTime = Java.type('configuration.KarateUIUtils').getWaitTime()
   # * karate.configure('driver', { implicitWait: 5000 })


  Scenario: Searching a product

   # Given driver baseUrl
    Given d.createDriver(driver, baseUrl)
   # And driver.maximize()
    And print baseUrl

      # click on adding new vehicle
    #And click("//div[contains(text(),'Add New Vehicle')]")
    And ui.clickNewVehicle


      # adding new vehicle & selecting model
   # * delay(3000)
   # And waitFor("//div[contains(text(),'Auto/Light Trucks')]"+ "{ timeout: '#(waitTime)' }").click()
    #And karate.waitFor(configuration.KarateUIUtils.getWaitTime())
    And waitFor("//div[contains(text(),'Auto/Light Trucks')]").click()
    And waitFor("//div[@data-value='Medium/Heavy Duty']").click()

      # selecting year
   # * delay(3000)
    And waitFor("//div[@class='geo-option-name'][normalize-space()='Year']").click()

   # * delay(3000)
    And waitFor("//div[@data-value='2020']").click()

      #selecting make
   # * delay(3000)
    And waitFor("//body[1]/header[1]/div[2]/div[1]/div[1]/div[5]/geo-header-garage[1]/div[1]/div[3]/div[2]/div[1]/geo-identify-vehicle[1]/div[1]/div[2]/div[3]/div[2]/div[1]").click()
    * delay(3000)
    And waitForAny("//div[@data-value='Blue Bird']").click()

      #selecting model
    * delay(3000)
    And waitFor("//div[@class='geo-option-name'][normalize-space()='Model']").click()
    * delay(3000)
    And waitFor("//div[@data-value='3_166_21_2020']").click()

      # clicking confirm button
   # * delay(3000)
    And waitFor("//button[@type='button']").click()

      #search brake pad
    And waitFor('#geo-inputText')
    And input('#geo-inputText', 'brake pad')

    And waitFor("//button[@aria-label='submit']" ).click()

      # adding product to cart
   # * delay(5000)
    And waitFor("//div[@class='geo-productpod-middle-invatc tablet-desktop']//button[@id='ADEAD8528']").click()
    * delay(5000)
    And waitFor("//a[@class='nol-button blue mobile-fullWidth marg-xsv-top-sm marg-xsv-bot-xs view-cart standard-text font-normal-text rounded-box']").click()

      #confirming item is added to cart
   # * delay(5000)
    * def actualQuantity = text("//div[@class='my-menu-icon-number']").trim()
    And match actualQuantity == '1'

    # increasing quantity by 1
    #* delay(3000)
    And script('scroll(0, 500);')
   # * delay(3000)
    And clear("#quantity_0-UnFit")
   # * delay(3000)
    And input("#quantity_0-UnFit", '2')
   # Then click("//body/main[contains(@data-currency-iso-code,'USD')]/div[contains(@class,'nol-wrapper')]/div[contains(@class,'napa-main-content')]/div[contains(@class,'nol-ui')]/div[contains(@class,'nol-row')]/div[contains(@class,'ncol-xs-12 ncol-sm-12 ncol-md-12')]/div[contains(@class,'box box-xpad-both nol-content-outer nol-order-items-wrapper')]/div[contains(@class,'nol-row')]/div[contains(@class,'')]/div[contains(@class,'checkout-button-wrapper pad-xsv-vrt-md sticky-checkout-mobile')]/div[contains(@class,'nol-ui')]/div[contains(@class,'nol-row middle-md center-md middle-xs center-xs pad-xsv-hrz-md pad-smv-hrz-none')]/div[contains(@class,'ncol-xs-6 ncol-sm-11 ncol-md-11 cart-checkout-button marg-xsv-bot-sm pad-xsv-vrt-none')]/a[1]")

    #asserting the updated price

   # * def updatedPrice = text("#quantity_0-UnFit").trim()
   # And match updatedPrice == '2'

    And print driver.url
    And print driver.title



