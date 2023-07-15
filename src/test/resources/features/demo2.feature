Feature:  Login page demo
  Background:
     * configure driver = { type: 'chrome', closeBrowser: false, addOptions: ["--remote-allow-origins=*"], windowSize: 'maximize' }

  Scenario: login practicetestautomation page demo case

    Given driver 'https://practicetestautomation.com/practice-test-login/'
    And input("#username", 'student')
    And input("#password", "Password123")
    And waitFor("//button[@id='submit']").click()
    * waitFor("//img[@alt='Practice Test Automation']").click()
    When driver "body > div:nth-child(10) > div:nth-child(1) > section:nth-child(2) > div:nth-child(1) > div:nth-child(1) > article:nth-child(1) > div:nth-child(1)"
    * def actualText = text("body > div:nth-child(10) > div:nth-child(1) > section:nth-child(2) > div:nth-child(1) > div:nth-child(1) > article:nth-child(1) > div:nth-child(1)").trim()
    And match actualText == 'Hello'
