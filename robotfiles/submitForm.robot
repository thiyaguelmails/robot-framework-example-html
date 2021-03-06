*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}
     Click Element  link=Login 
	 Wait Until Element Is Visible  //div[@id='i1']  timeout=60
	 Submit Form
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}