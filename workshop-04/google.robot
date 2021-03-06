*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหาข้อมูล
    เปิด Google Chrome เข้าลิงก์ www.google.co.th
    พิมพ์ keyword Stitch ที่ต้องการค้นหา
    กดค้นหา
    กดเข้า link แรกที่เจอ เพื่อดูข้อมูล
    ปิด Browser


*** Keywords ***
เปิด Google Chrome เข้าลิงก์ www.google.co.th
    Open Browser    http://www.google.com    chrome
พิมพ์ keyword Stitch ที่ต้องการค้นหา
    Input Text      q      stitch
กดค้นหา
    Press Keys      q      RETURN
กดเข้า link แรกที่เจอ เพื่อดูข้อมูล
    # Page Should Contain     รูปภาพสำหรับ stitch
    # Click Link      //*[@id="rso"]/div[1]/div/div[1]/a/h3
    Click Element   //*[@id="rso"]/div[1]/div/div[1]/a/h3
    # Click Element    class:r
# ปิด Browser
#     Close Browser