QtTextFields
-------------
qml and qt library that allows you to have common and usefull textfields
in your projects. >= qt5.8

How to install it.
-------------------
```cd /path/to/QtTextField/ && mkdir build && cd build && /path/to/qmake -makefile .. && make install```

How to use it.
--------------
###PasswordTextField
```qml
		.
		.
		.
import QtTextFields 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    PasswordTextField {
        anchors.centerIn: parent
    }
}
```

###EmailTextField
```qml
		.
		.
		.
import QtTextFields 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    EmailTextField {
        anchors.centerIn: parent
    }
}
```

###DecimalTextField
```qml
		.
		.
		.
import QtTextFields 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    DecimalTextField {
        anchors.centerIn: parent
    }
}
```

###PhoneTextField
```qml
		.
		.
		.
import QtTextFields 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    PhoneTextField {
        countryCode: PhoneCodes.VEN
        anchors.centerIn: parent
    }
}
```

License.
--------
[GPLv3](./LICENSE.md) ![gplv3](./img/gplv3.png)
