import QtQuick 2.5
import QtQuick.Controls 1.4

BaseTextField {
    id: alphabettextfield

    onTextChanged: {
        if(!(/^([a-zA-Z])$/i).test(alphabettextfield.text[alphabettextfield.text.length - 1])) {
            alphabettextfield.text = alphabettextfield.text.slice(0, alphabettextfield.text.length - 1);
        }
    }

    function isValid() {
        return /^([a-zA-Z]+)$/i.test(alphabettextfield.text);
    }
}
