TEMPLATE = aux
TARGET = QtTextFields

DISTFILES = qmldir        \
    BaseTextField.qml     \
    PasswordTextField.qml \
    DecimalTextField.qml  \
    EmailTextField.qml    \
    PhoneTextField.qml    \
    phonecodes.js

unix {
    installPath = $$[QT_INSTALL_QML]$$replace(uri, \\., /)
}

target.path = $$installPath/$$TARGET
target.files = $$DISTFILES

INSTALLS += target
