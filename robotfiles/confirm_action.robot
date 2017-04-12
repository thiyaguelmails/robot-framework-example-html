*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test to confirm the alert window 

	Click Element  id=b1
	
	${message}=  Confirm Action 	
	Should Be Equal 	${message} 	I am an alert box!

Test to choose cancel in alert box
    Choose Cancel On Next Confirmation 		
	Click Element  id=b1 	
	Confirm Action 		
		 
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}

