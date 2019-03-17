***Settings***
Library    Selenium2Library

***Variables***
${Home URL}	   http://localhost/index.php
${Login URL}    http://localhost/login.php
${BROWSER}	Chrome

***Testcases***
Open Browser
	Open Browser    ${Home URL}    ${BROWSER}
TS_login_001
	Go to    ${Login URL}
	Set Selenium Speed    0.5
	Input Text    username    adminUS
	Input Text    password    admin001
	Click Button    login
	Location Should Be    ${Home URL}
	Page Should Contain    adminUS
TS_login_002
	Go to    ${Login URL}
	Set Selenium Speed    0.5
	Input Text    username    adminUS
	Input Text    password    admin000
	Click Button    login
	Location Should Be    ${Login URL}
	Page Should Contain    Invalid username or password.
TS_login_003
	Go to    ${Login URL}
	Set Selenium Speed    0.5
	Input Text    username    adminUS
	Click Button    login
	Location Should Be    ${Login URL}
	Page Should Contain    Please input password.
TS_login_004
	Go to    ${Login URL}
	Set Selenium Speed    0.5
	Input Text    password    admin000
	Click Button    login
	Location Should Be    ${Login URL}
	Page Should Contain    Please input username.