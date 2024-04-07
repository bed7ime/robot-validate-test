*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test 01
    Open Browser    ${URL}    ${BROWSER}
    Input Thai Name    ${THVARIABLES1}[name]    ${THVARIABLES1}[lastname]
    Input English Name    ${ENVARIABLES1}[name]    ${ENVARIABLES1}[lastname]
    Select Date of Birth
    Input Person ID    ${PERSONID}[id1]
    Input Password    ${PASSWORDS}[pass1]
    Input Email & Phone    ${PHONE}[phone1]    ${EMAIL}[email2]
    Select Checkbox    id=accept
    Click Button    id=submit-btn
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

&{PASSWORDS}    pass1=Ex000000    pass2=EX000000    pass3=ex000000    pass4=ExExExEx    pass5=ExExEx0

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