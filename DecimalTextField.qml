import QtQuick 2.5
import QtQuick.Controls 1.4

BaseTextField {
    id: decimalfield

    onTextChanged: {
        if(!(/^([0-9])$/i).test(decimalfield.text[decimalfield.text.length - 1])) {
            decimalfield.text = decimalfield.text.slice(0, decimalfield.text.length - 1);
        }
    }

    function isValid() {
        return /^([0-9]+)$/.test(decimalfield.text);
    }
}
