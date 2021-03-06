*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test to choose cancel in alert box

    Pass a fail  #TODO:create alert with cancel

Test to choose ok in alert box

    Choose ok in alert box	
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}

Pass a fail
    Choose Cancel On Next Confirmation 		
	Click Element  id=b1 	
	Confirm Action
	
Choose ok in alert box
    Choose Ok On Next Confirmation 		
	Click Element  id=b1 	
	Confirm Action