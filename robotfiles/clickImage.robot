*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test to click image
     
    Image click   #TODO: do respective HTML    	
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
	
Image click
    Click Image  bg  
	Wait Until Element Is Visible  bg  timeout=60	 
	