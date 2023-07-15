Feature: Amazon website test

  Background:
   # * configure driver = { type: 'msedge', closeBrowser: false, addOptions: ["--remote-allow-origins=*"], windowSize: 'maximize' }
 * karate.configure('driver', { type: 'chrome', startMaximized: true , addOptions: ["--remote-allow-origins=*"]});


  Scenario: testing ui automation
    Given driver 'https://www.amazon.in/'
    And driver.maximize()
    * def dms = driver.dimensions
    * print dms
    And input("//input[@id='twotabsearchtextbox']", 'headphone')
    And waitUntil('document.readyState == "complete"')
    And click('#nav-search-submit-button')
    And waitUntil('document.readyState == "complete"')
    And script('scroll(0, 400);')
    And waitFor("//span[contains(text(),'boAt Rockerz 450 Batman Edition Bluetooth On Ear H')]").click()
    And waitUntil('document.readyState == "complete"')
    When switchPage(1)
    And script('scroll(0, 500);')
    And waitFor('#add-to-cart-button').visible
    And waitFor('#add-to-cart-button').click()
    And waitFor("//body/div[@class='attach-dss-modal-layer']/div[@id='attach-desktop-sideSheet']/div[3]/div[1]/div[1]/div[3]/div[1]/div[2]/div[3]/span[1]/span[1]/input[1]").click()
    * print driver.url
    * def titlep = driver.title
    * print titlep
    Then match titlep == "Amazon Sign In"








