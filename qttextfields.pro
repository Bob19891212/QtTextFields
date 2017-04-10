TEMPLATE = aux
TARGET = io.gapps.qttextfields
TARGETPATH = /io/gapps/qttextfields

win32 {
	TARGETPATH = $$TARGETPATH$$replace(uri, /, \\.)
}

DISTFILES =                   \
    src/qmldir                \
    src/BaseTextField.qml     \
    src/PasswordTextField.qml \
    src/DecimalTextField.qml  \
    src/EmailTextField.qml    \
    src/PhoneTextField.qml    \
    src/AlphabetTextField.qml \
    src/phonecodes.js

unix {
    installPath = $$[QT_INSTALL_QML]$$replace(uri, \\., /)
}

target.path = $$installPath$$TARGETPATH
target.files = $$DISTFILES

INSTALLS += target
