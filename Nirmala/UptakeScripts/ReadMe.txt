Read Me:

You would need 
1) Protractor with selenium - http://www.protractortest.org/#/
 - npm install -g protractor
 -webdriver-manager update
 -webdriver-manager start 
2) Java JDK
3) coffeescript - http://coffeescript.org/ - npm install -g coffee-script
4) Jasmine spec reporter - https://github.com/bcaudan/jasmine-spec-reporter
5) Jasmine framework - http://jasmine.github.io/

to run this automation code. Command to run the code is  protractor protractor.coffee
$ protractor protractor.coffee
Starting selenium standalone server...
[launcher] Running 1 instances of WebDriver
Selenium standalone server started at http://192.168.1.226:57328/wd/hub
Spec started

  Uptake
    ✓ should open Uptake site
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - Approach
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - Platform
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - Solutions
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - People
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - Join Us
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - Blog
WARNING - more than one element found for locator By.cssSelector(".primary-nav__menu") - the first result will be used
    ✓ should open link - Contact Us

Executed 8 of 8 specs SUCCESS in 9 secs.
Shutting down selenium standalone server.
[launcher] 0 instance(s) of WebDriver still running
[launcher] chrome #1 passed

