import QtQuick 2.5
import QtQuick.Controls 1.4

import "./phonecodes.js" as PhoneCodes

Item {
    id: parentphoneedittext
    width: phoneedittext.width
    height: phoneedittext.height

    property int countryCode: PhoneCodes.USA

    onWidthChanged: phoneedittext.width = parentphoneedittext.width
    onHeightChanged: phoneedittext.height = parentphoneedittext.height

    QtObject {
        id: __private
        property bool deleting: false
    }

    BaseTextField {
        maxLen: 14
        id: phoneedittext
        placeholderText: '+' + PhoneCodes.asString(parentphoneedittext.countryCode)

        onTextChanged: {
            if(phoneedittext.text.length === 1 && !__private.deleting) {
                var tmp = '+' + PhoneCodes.asString(parentphoneedittext.countryCode) + phoneedittext.text;
                phoneedittext.text = tmp;

                __private.deleting = !__private.deleting;
            }

            if(phoneedittext.text.length === phoneedittext.placeholderText.length && __private.deleting) {
                phoneedittext.text = "";
            }

            if(phoneedittext.text.length === 0 && __private.deleting) {
                __private.deleting = !__private.deleting;
            }
        }
    }

    function isValid() {
        return PhoneCodes.isCodeValid(parentphoneedittext.countryCode)
                && /^(\+[0-9]{6,14})$/i.test(phoneedittext.text);
    }
}
