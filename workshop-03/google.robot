*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหาข้อมูล
    เปิด Google Chrome เข้าลิงก์ www.google.co.th
    พิมพ์ keyword Stitch ที่ต้องการค้นหา
    กดค้นหา
    ปิด Browser

*** Keywords ***
เปิด Google Chrome เข้าลิงก์ www.google.co.th
    Open Browser    http://www.google.com    chrome
พิมพ์ keyword Stitch ที่ต้องการค้นหา
    Input Text      q      stitch
    Press Keys      q      ENTER
กดค้นหา
    Click Element   class:r
ปิด Browser
    Close Browser