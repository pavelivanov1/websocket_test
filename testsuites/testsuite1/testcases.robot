*** Settings ***
Documentation    This is a REST testing training project


Library    WebSocketClient


Resource         resource.robot

#Suite Setup      Open Browser To Login Page
#Suite Teardown   Close All Browsers
#Test Setup       Go To Login Page
#Test Teardown     User logs out



*** Variables ***
${GET SERVER URL}           http://echo.jsontest.com/framework/robot-framework/api/rest
${POST SERVER URL}          http://jsonplaceholder.typicode.com/posts
#${LOGIN PAGE URL}       ${SERVER URL}/login-widget
${BROWSER}              Chrome
${DELAY}                2
#${SIGNUP PAGE URL}      https://free.vidyocloudstaging.com/admin/login.html
${FREEUSER}             ecommerce.freemium@gmail.com
${FREEUSER PASSWORD}    V!dy0433



*** Test Cases ***
Echo
    ${my_websocket}=    WebSocketClient.Connect    ws://echo.websocket.org
    WebSocketClient.Send    ${my_websocket}    Hello
    ${result}=    WebSocketClient.Recv    ${my_websocket}
    Should Be Equal    Hello    ${result}
    WebSocketClient.Close    ${my_websocket}


*** Keywords ***
Provided precondition
    #Setup system under test


Go To Login Page
    #Go To    ${LOGIN PAGE URL}
    #Login Page Is Open