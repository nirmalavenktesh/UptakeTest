

nodeUrl = require 'url'
path = require 'path'



DEFAULT_ANIMATION_DURATION = 300
DEFAULT_WAIT = 15000

# Load Page "Uptake"
exports.loadPage = (disableAnimation=true) ->
  # Ensure page is loaded before running tests.
  # "Is Angular Ready?" check for the angular-less Sign In page
  browser.ignoreSynchronization = true
  browser.get "#{browser.baseUrl}" 
  browser.wait EC.presenceOf $ '.l-site-header__logo'
  browser.refresh()

exports.waitForAnimation = (time) ->
  # Wait for a browser animation
  browser.sleep time || DEFAULT_ANIMATION_DURATION

exports.waitFor = (fn, options={}) ->
  [_css, time, options] = getOptions options
  title = options.title ? 'function to validate'
  message = options.message ? "Timed out waiting for #{title}"
  browser.wait fn, time, message

exports.globals =  [
  'waitForAnimation'
  'waitFor'
  'waitForLoad'
  
]
