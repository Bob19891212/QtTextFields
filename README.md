QtTextFields
-------------
qml and qt library that allows you to have common and usefull textfields
in your projects. >= qt5.8

How to install it.
-------------------
*using git*
```git clone https://github.com/d-gapps/QtTextFields.git && cd QtTextField/ && mkdir build && cd build && /path/to/qmake -makefile .. && make install```

How to use it.
--------------
*PasswordTextField*
```qml
		.
		.
		.
import io.gapps.qttextfields 1.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    PasswordTextField {
    	id: password
        anchors.centerIn: parent
	placeholderText: "password"
    }
    
    CheckBox {
        id: checkbox
        anchors.left: password.right
        anchors.leftMargin: 30
        anchors.top: password.top

        onCheckedChanged: {
            if(checkbox.checked)
                password.showPassword()
            else
                password.hidePassword()
        }
    }
    
    EmailTextField {
    	id: email
	text: "leoxnidas.c.14@gmail.com"
	placeholderText: "email"
        anchors.top: password.bottom
	anchors.topMargin: 10
    }
    
    AlphabetTextField {
    	id: alpha
	placeholderText: "words"
        anchors.top: email.bottom
	anchors.topMargin: 10
    }
    
    DecimalTextField {
    	id: decimal
	placeholderText: "numbers"
        anchors.top: alpha.bottom
	anchors.topMargin: 10
    }
    
    PhoneTextField {
    	id: phone
        anchors.top: decimal.bottom
	anchors.topMargin: 10
	countryCode: PhoneCodes.USA
    }
    
    Component.onCompleted: {
    	console.log(email.isValid())
	console.log(password.isValid())
	console.log(alpha.isValid())
	console.log(email.isValid())
	console.log(phone.isValid())
    }
}
```

License.
--------
[GPLv3](./LICENSE.md) ![gplv3](./img/gplv3.png)
