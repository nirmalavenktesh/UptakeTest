
fs = require 'fs'
http = require 'http'
path = require 'path'

JasmineSpecReporter = require 'jasmine-spec-reporter'
testUtil = require './util/test-util'
# The directory where selenium webdriver and chromedriver.
SELENIUM_DIR = process.env['SELENIUM_DIR'] ||
  '/Users/nvenktesh/.nvm/versions/node/v0.12.15/lib/node_modules/protractor/selenium/'
  
exports.config =
  baseUrl: "http://uptake.com/"
  seleniumServerJar: path.join SELENIUM_DIR,
    'selenium-server-standalone-2.47.1.jar'
  chromeDriver: path.join SELENIUM_DIR, 'chromedriver'

  # Capabilities to be passed to the webdriver instance.
  capabilities:
    browserName: process.env.browser or 'chrome'

  # Spec patterns are relative to the directory of protractor.coffee
  specs: [
    'homepage.coffee'
  ]
  framework: 'jasmine2'
  
  # Options to be passed to Jasmine-node.
  jasmineNodeOpts:
    showColors: true
    defaultTimeoutInterval: 30000
    isVerbose: true
    print: ->
  
  onPrepare: -> 
        global.EC = protractor.ExpectedConditions
        jasmine.getEnv().addReporter new JasmineSpecReporter
        testUtil.globals
        testUtil.loadPage()

  