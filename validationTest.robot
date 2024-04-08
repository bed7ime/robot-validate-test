*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test 01 All Input Correct
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Thai Name    ${THVARIABLES1}[name]    ${THVARIABLES1}[lastname]
    Input English Name    ${ENVARIABLES1}[name]    ${ENVARIABLES1}[lastname]
    Select Date of Birth
    Input Person ID    ${PERSONID}[id1]
    Input Password    ${PASSWORDS}[pass1]
    Input Email & Phone    ${PHONE}[phone1]    ${EMAIL}[email2]
    Sleep    10seconds
    Check All Error
    Capture Screenshot
    Close Browser

Test 02 All Input Empty
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Thai Name    ${EMPTY}    ${EMPTY}
    Input English Name    ${EMPTY}    ${EMPTY}
    Input Person ID    ${EMPTY}
    Input Password    ${EMPTY}
    Input Email & Phone    ${EMPTY}    ${EMPTY}
    Sleep    10seconds
    Check All Error2
    Capture Screenshot
    Close Browser

Test 03 English Name & lastname In Thai Input
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Thai Name    ${ENVARIABLES1}[name]    ${ENVARIABLES1}[lastname]
    Sleep    10seconds
    Page Should Contain    ${ERRTHVARIABLES1}[errname]
    Page Should Contain    ${ERRTHVARIABLES1}[errlastname]
    Capture Screenshot
    Close Browser

Test 04 long Name & lastname In Thai Input
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Thai Name    ${THVARIABLES2}[name]    ${THVARIABLES2}[lastname]
    Sleep    10seconds
    Page Should Contain    ${ERRTHVARIABLES2}[errname]
    Page Should Contain    ${ERRTHVARIABLES2}[errlastname]
    Capture Screenshot
    Close Browser
    
Test 05 Thai Name & lastname In English Input
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input English Name    ${THVARIABLES1}[name]    ${THVARIABLES1}[lastname]
    Sleep    10seconds
    Page Should Contain    ${ERRENVARIABLES1}[errname]
    Page Should Contain    ${ERRENVARIABLES1}[errlastname]
    Capture Screenshot
    Close Browser

Test 06 long Name & lastname In English Input
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input English Name    ${ENVARIABLES2}[name]    ${ENVARIABLES2}[lastname]
    Sleep    10seconds
    Page Should Contain    ${ERRENVARIABLES2}[errname]
    Page Should Contain    ${ERRENVARIABLES2}[errlastname]
    Capture Screenshot
    Close Browser

Test 07 Person ID less
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Person ID    ${PERSONID}[id2]
    Sleep    10seconds
    Page Should Contain    ${ERRPERSONID}[errID2]
    Capture Screenshot
    Close Browser

Test 08 Person ID more
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Person ID    ${PERSONID}[id3]
    Sleep    10seconds
    Page Should Contain    ${ERRPERSONID}[errID2]
    Capture Screenshot
    Close Browser

Test 09 Person ID with -
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Person ID    ${PERSONID}[id4]
    Sleep    10seconds
    Page Should Contain    ${ERRPERSONID}[errID2]
    Capture Screenshot
    Close Browser

Test 10 Person ID less
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Person ID    ${PERSONID}[id5]
    Sleep    10seconds
    Page Should Contain    ${ERRPERSONID}[errID1]
    Capture Screenshot
    Close Browser

Test 11 Password All Upper
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Password    ${PASSWORDS}[pass2]
    Sleep    10seconds
    Page Should Contain    ${ERRPASSWORD}[errPass2]
    Capture Screenshot
    Close Browser

Test 12 Password All lower
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Password    ${PASSWORDS}[pass3]
    Sleep    10seconds
    Page Should Contain    ${ERRPASSWORD}[errPass3]
    Capture Screenshot
    Close Browser

Test 13 Password No Number
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Password    ${PASSWORDS}[pass4]
    Sleep    10seconds
    Page Should Contain    ${ERRPASSWORD}[errPass4]
    Capture Screenshot
    Close Browser

Test 14 Password Not 8
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Password    ${PASSWORDS}[pass5]
    Sleep    10seconds
    Page Should Contain    ${ERRPASSWORD}[errPass1]
    Capture Screenshot
    Close Browser

Test 15 Phone with - & Email Wrong
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Email & Phone    ${PHONE}[phone2]    ${EMAIL}[email1]
    Sleep    10seconds
    Page Should Contain    ${ERRPHONE}[errPhone1]
    Page Should Contain    ${ERREMAIL}[errEmail1]
    Capture Screenshot
    Close Browser

Test 16 Phone with . & Email Wrong
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Email & Phone    ${PHONE}[phone3]    ${EMAIL}[email1]
    Sleep    10seconds
    Page Should Contain    ${ERRPHONE}[errPhone2]
    Page Should Contain    ${ERREMAIL}[errEmail1]
    Capture Screenshot
    Close Browser

Test 17 Phone Not a Number & Email Wrong
    Open Browser    ${URL}    ${BROWSER}
    Wait Web
    Input Email & Phone    ${PHONE}[phone4]    ${EMAIL}[email1]
    Sleep    10seconds
    Page Should Contain    ${ERRPHONE}[errPhone3]
    Page Should Contain    ${ERREMAIL}[errEmail1]
    Capture Screenshot
    Close Browser
*** Variables ***
${BROWSER}    Edge
${URL}    https://react-form-for-robot.vercel.app/

&{THVARIABLES1}    name=กิตติพัฒน์    lastname=ชูวงษ์วาลย์
&{THVARIABLES2}    name=กกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกก    lastname=กกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกก

&{ENVARIABLES1}    name=Kittipat    lastname=Choowongwan
&{ENVARIABLES2}    name=kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk    lastname=kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

&{ERRTHVARIABLES1}    errname=กรุณากรอกชื่อ เป็นภาษาไทย    errlastname=กรุณากรอกนามสกุล เป็นภาษาไทย
&{ERRTHVARIABLES2}    errname=ความยาวของชื่อ ยาวเกินไป    errlastname=ความยาวของนามสกุล ยาวเกินไป
&{ERRTHVARIABLES3}    errname=กรุณากรอกชื่อ    errlastname=กรุณากรอกนามสกุล

&{ERRENVARIABLES1}    errname=Please enter your name in English.    errlastname=Please enter your lastname in English.
&{ERRENVARIABLES2}    errname=The length of name is too long.    errlastname=The length of lastname is too long.
&{ERRENVARIABLES3}    errname=Please enter your name.    errlastname=Please enter your lastname.

&{PERSONID}    id1=0000000000000    id2=000000000000    id3=00000000000000    id4=000-000-000-0000    id5=000 000 000 0000

&{ERRPERSONID}    errID1=ไม่ต้องเว้นวรรค    errID2=กรุณากรอกหมายเลขบัตรประชาชนให้ถูกต้อง    errID3=ไม่ต้องใส่อักขระขีด    errID4=กรุณากรอกหมายเลขบัตรประชาชน

&{PASSWORDS}    pass1=Ex000000    pass2=EX000000    pass3=ex000000    pass4=ExExExEx    pass5=1ExEEEX

&{ERRPASSWORD}    errPass1=กรุณาตั้งรหัสผ่านอย่างน้อย 8 ตัวอักษร    errPass2=รหัสผ่านจะต้องมีตัวพิมพ์เล็กอย่างน้อย 1 ตัวอักษร    errPass3=รหัสผ่านจะต้องมีตัวพิมพ์ใหญ่อย่างน้อย 1 ตัวอักษร    errPass4=รหัสผ่านจะต้องมีตัวเลข    errPass5=กรุณากรอกรหัสผ่าน

&{PHONE}    phone1=0000000000    phone2=000-0000000    phone3=0000000000.    phone4=aaaaaaaaaa

&{ERRPHONE}    errPhone1=ไม่ต้องใส่อักขระขีด    errPhone2=ต้องไม่มี .    errPhone3=กรุณากรอกเฉพาะตัวเลข    errPhone4=กรุณากรอกเบอร์มือถือ

&{EMAIL}    email1=654259023    email2=654259023@webmail.npru.ac.th

&{ERREMAIL}    errEmail1=กรุณากรอกอีเมลให้ถูกต้อง    errEmail2=กรุณากรอกอีเมล

${ERRCHECK}    กรุณาคลิกยอมรับ

*** Keywords ***
Input Thai Name
    [Arguments]    ${THNAME}    ${THLASTNAME}
    Input Text    id=fnameTH    ${THNAME}
    Input Text    id=lnameTH    ${THLASTNAME}

Input English Name
    [Arguments]    ${ENNAME}    ${ENLASTNAME}
    Input Text    id=fnameEN    ${ENNAME}
    Input Text    id=lnameEN    ${ENLASTNAME}

Input Person ID
    [Arguments]    ${PERSONID}
    Input Text    id=personID    ${PERSONID}

Input Password
    [Arguments]    ${PASSWORD}
    Input Text    id=passwd    ${PASSWORD}

Input Email & Phone
    [Arguments]    ${PHONE}    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Input Text    id=email    ${EMAIL}

Select Date of Birth
    Select From List By Index    id=date    11
    Select From List By Index    id=month    4
    Select From List By Index    id=year    5

Check All Error
    Page Should Not Contain    ${ERRTHVARIABLES1}[errname]
    Page Should Not Contain    ${ERRTHVARIABLES2}[errname]
    Page Should Not Contain    ${ERRTHVARIABLES3}[errname]
    Page Should Not Contain    ${ERRTHVARIABLES1}[errlastname]
    Page Should Not Contain    ${ERRTHVARIABLES2}[errlastname]
    Page Should Not Contain    ${ERRTHVARIABLES3}[errlastname]
    Page Should Not Contain    ${ERRENVARIABLES1}[errname]
    Page Should Not Contain    ${ERRENVARIABLES2}[errname]
    Page Should Not Contain    ${ERRENVARIABLES3}[errname]
    Page Should Not Contain    ${ERRENVARIABLES1}[errlastname]
    Page Should Not Contain    ${ERRENVARIABLES2}[errlastname]
    Page Should Not Contain    ${ERRENVARIABLES3}[errlastname]
    Page Should Not Contain    ${ERRPERSONID}[errID1]
    Page Should Not Contain    ${ERRPERSONID}[errID2]
    Page Should Not Contain    ${ERRPERSONID}[errID3]
    Page Should Not Contain    ${ERRPERSONID}[errID4]
    Page Should Not Contain    ${ERRPASSWORD}[errPass1]
    Page Should Not Contain    ${ERRPASSWORD}[errPass2]
    Page Should Not Contain    ${ERRPASSWORD}[errPass3]
    Page Should Not Contain    ${ERRPASSWORD}[errPass4]
    Page Should Not Contain    ${ERRPASSWORD}[errPass5]
    Page Should Not Contain    ${ERRPHONE}[errPhone1]
    Page Should Not Contain    ${ERRPHONE}[errPhone2]
    Page Should Not Contain    ${ERRPHONE}[errPhone3]
    Page Should Not Contain    ${ERRPHONE}[errPhone4]
    Page Should Not Contain    ${ERREMAIL}[errEmail2]
    Page Should Not Contain    ${ERREMAIL}[errEmail1]

    # Page Should Not Contain    ${ERRCHECK}

Check All Error2
    Page Should Contain    ${ERRTHVARIABLES3}[errname]
    Page Should Contain    ${ERRTHVARIABLES3}[errlastname]
    Page Should Contain    ${ERRENVARIABLES3}[errname]
    Page Should Contain    ${ERRENVARIABLES3}[errlastname]
    Page Should Contain    ${ERRPERSONID}[errID4]
    Page Should Contain    ${ERRPASSWORD}[errPass5]
    Page Should Contain    ${ERRPHONE}[errPhone4]
    Page Should Contain    ${ERREMAIL}[errEmail2]
    # Page Should Contain    ${ERRCHECK}

Capture Screenshot
    Capture Page Screenshot    ./Screenshot/result-{index}.png

Wait Web
    Wait Until Element Contains    xpath=//*[@id="root"]/div/header    ลงทะเบียน
