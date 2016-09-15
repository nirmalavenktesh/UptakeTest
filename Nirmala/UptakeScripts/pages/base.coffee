# Base Page Object class. Other Page Objects should extend this class.
class BasePage

  get: ->
  	browser.get "#{browser.baseUrl}"
  	
  getUrl: ->
    browser.getLocationAbsUrl()

exports.BasePage = BasePage