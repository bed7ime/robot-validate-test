*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}

Input Form 1
    Input Text    id=fnameTH    ${nameInput2}
    Input Text    id=lnameTH    ${lnameInput2}

    Input Text    id=fnameEN    ${nameInput1}
    Input Text    id=lnameEN    ${lnameInput1}

    Select From List By Index    id=date    11
    Select From List By Index    id=month    4
    Select From List By Index    id=year    5

    Input Text    id=personID    ${PersonID1}

    Input Text    id=passwd    ${lnameInput2}

    Input Text    id=phone    ${phone1}
    Input Text    id=email    ${email1}

    Click Element    id=accept
*** Variables ***
${BROWSER}    Chrome

${URL}    react-form-for-robot.vercel.app

${nameInput1}    Kittipat
${nameInput2}    กิตติพัฒน์
${nameInput3}    kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
${nameInput4}    กกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกก

${lnameInput1}    Choowongwan
${lnameInput2}    ชูวงษ์วาลย์
${lnameInput3}    kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
${lnameInput4}    กกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกกก

${errNameTH1}    กรุณากรอกชื่อ เป็นภาษาไทย
${errNameTH2}    ความยาวของชื่อ ยาวเกินไป
${errNameTH3}    กรุณากรอกชื่อ

${errlNameTH1}    กรุณากรอกนามสกุล เป็นภาษาไทย
${errlNameTH2}    ความยาวของนามสกุล ยาวเกินไป
${errlNameTH3}    กรุณากรอกนามสกุล

${errNameEN1}    Please enter your name in English.
${errNameEN2}    The length of name is too long.
${errNameEN3}    Please enter your name.

${errlNameEN1}    Please enter your lastname in English.
${errlNameEN2}    The length of lastname is too long.
${errlNameEN3}    Please enter your lastname.

${PersonID1}    0000000000000
${PersonID2}    000000000000
${PersonID3}    00000000000000
${PersonID4}    000-000-000-0000
${PersonID5}    000 000 000 0000

${errPerson1}    ไม่ต้องเว้นวรรค
${errPerson2}    กรุณากรอกหมายเลขบัตรประชาชนให้ถูกต้อง
${errPerson3}    ไม่ต้องใส่อักขระขีด
${errPerson4}    กรุณากรอกหมายเลขบัตรประชาชน

${Pass1}    EX000000
${Pass2}    ex000000
${Pass3}    ExExExEx
${Pass4}    ExExEx0
${Pass5}    Ex000000

${errPass1}    กรุณาตั้งรหัสผ่านอย่างน้อย 8 ตัวอักษร
${errPass2}    รหัสผ่านจะต้องมีตัวพิมพ์เล็กอย่างน้อย 1 ตัวอักษร
${errPass3}    รหัสผ่านจะต้องมีตัวพิมพ์ใหญ่อย่างน้อย 1 ตัวอักษร
${errPass4}    รหัสผ่านจะต้องมีตัวเลข
${errPass5}    กรุณากรอกรหัสผ่าน

${phone1}    0000000000
${phone2}    000-0000000
${phone3}    0000000000.
${phone4}    aaaaaaaaaa

${errPhone1}    ไม่ต้องใส่อักขระขีด
${errPhone2}    ต้องไม่มี .
${errPhone3}    กรุณากรอกเฉพาะตัวเลข
${errPhone4}    กรุณากรอกเบอร์มือถือ

${email1}    654259023
${email2}    654259023@webmail.npru.ac.th

${errEmail1}    กรุณากรอกอีเมลให้ถูกต้อง
${errEmail2}    กรุณากรอกอีเมล

${errCheck}    กรุณาคลิกยอมรับ

*** Test Cases ***
Input Pass Test
    Open Browser    $URL    $BROWSER