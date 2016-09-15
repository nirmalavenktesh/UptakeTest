{BasePage} = require './base'

# Page Object for the home page

class HomePage extends BasePage

  constructor: ->
    #@banner = @el.$ '.l-site-header'
    @menu = $ '.primary-nav__menu'
    @links = @menu.$$ 'a'

  goToLinkApproach: ->
    @links.get(0).click()

  goToLinkPlatform: ->
    @links.get(1).click()

  goToLinkSolutions: ->
    @links.get(2).click()

  goToLinkPeople: ->
    @links.get(3).click()

  goToLinkJoinUs: ->
    @links.get(4).click()

  goToLinkContactUs: ->
    @links.get(5).click()   

  goToLinkBlog: ->
    @links.get(6).click()

exports.HomePage = HomePage