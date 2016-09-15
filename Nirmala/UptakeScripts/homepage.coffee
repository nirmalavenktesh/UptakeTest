{HomePage} = require './pages/homepage'

describe 'Uptake', ->
  beforeAll ->
   browser.ignoreSynchronization = true
   @homepage = new HomePage

  it 'should open Uptake site', ->  	
   url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/"

  it 'should open link - Approach', -> 
   @homepage.goToLinkApproach()
	 url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/approach/"

  it 'should open link - Platform', -> 
   @homepage.goToLinkPlatform()
	 url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/platform/"  

  it 'should open link - Solutions', -> 
   @homepage.goToLinkSolutions()
	 url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/solutions/"  

  it 'should open link - People', -> 
   @homepage.goToLinkPeople()
	 url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/people/"  

  it 'should open link - Join Us', -> 
   @homepage.goToLinkJoinUs()
	 url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/jobs/" 

  it 'should open link - Blog', -> 
   @homepage.get()   
   @homepage.goToLinkBlog()
	 url = browser.getCurrentUrl()
   expect(url).toEqual "http://uptake.com/ourblog/" 

  it 'should open link - Contact Us', -> 
   @homepage.get()   
   @homepage.goToLinkContactUs()
   expect(($ '.header__contact__container').isPresent()).toBe true

    
    

