import QtQuick 2.5
import QtQuick.Controls 1.4


BaseTextField {
    id: textfield

    property int hideInterval: 1000

    QtObject {
        id: __private
        property bool showPassword: false
        property string realText: ''
    }

    Timer {
        running: false
        id: passwordFieldTimer
        interval: textfield.hideInterval
        onTriggered: {
            if(textfield.text.length > 0)
                textfield.text = textfield.text.slice(0, textfield.text.length -1) + '*';
        }
    }

    onTextChanged: {
        if(textfield.text[textfield.text.length - 1] !== '*' &&
           (textfield.text.length >= __private.realText.length )) {

            if(__private.realText.length - 1 < textfield.text.length - 1)
                __private.realText += textfield.text[textfield.text.length - 1];

            else if(__private.realText.length - 1 > textfield.text.length - 1)
                __private.realText = __private.realText.slice(0, textfield.text.length - 1);

        } else {
            if(__private.realText.length - 1 > textfield.text.length - 1) {
                __private.realText = __private.realText.slice(0, textfield.text.length);
            }
        }

        if(!__private.showPassword) {
            var len = textfield.text.length;
            if(len > 1) {
                var tmpA = textfield.text.slice(0, len - 1);
                var tmpB = '';

                for(var i = 0; i < tmpA.length; i++)
                    tmpB += '*';

                tmpB += textfield.text[textfield.text.length - 1];
                textfield.text = tmpB;
            }

            if(passwordFieldTimer.running)
                passwordFieldTimer.restart()
            else
                passwordFieldTimer.start()
        }
    }

    function showPassword() {
        __private.showPassword = true;
        var tmp = textfield.text;
        textfield.text = __private.realText;
        __private.realText = tmp;

        if(passwordFieldTimer.running)
            passwordFieldTimer.stop()
    }

    function hidePassword() {
       __private.showPassword = false;
        var tmp = textfield.text;
        var passHided = '';

        for(var i = 0; i < __private.realText.length; i++)
            passHided += '*';

        textfield.text = passHided;
        __private.realText = tmp;

        if(passwordFieldTimer.running)
            passwordFieldTimer.stop()
    }

    function isValid() {
        if(__private.showPassword)
            return /^([a-zA-Z0-9{}#,!_@\/\\\(\)\[\]\:\;\.\|\`\$\=\+\-\*\^\?\&\~\%\"\']+)$/i.test(textfield.text);
        else
            return /^([a-zA-Z0-9{}#,!_@\/\\\(\)\[\]\:\;\.\|\`\$\=\+\-\*\^\?\&\~\%\"\']+)$/i.test(__private.realText);
    }
}
