TEMPLATE = aux
TARGET = QtTextFields

DISTFILES =                   \
    src/qmldir                \
    src/BaseTextField.qml     \
    src/PasswordTextField.qml \
    src/DecimalTextField.qml  \
    src/EmailTextField.qml    \
    src/PhoneTextField.qml    \
    src/phonecodes.js

unix {
    installPath = $$[QT_INSTALL_QML]$$replace(uri, \\., /)
}

target.path = $$installPath/$$TARGET
target.files = $$DISTFILES

INSTALLS += target
