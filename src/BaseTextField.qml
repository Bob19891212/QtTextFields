import QtQuick 2.5
import QtQuick.Controls 1.4

TextField {
    id: basetextfield
    property int maxLen: -1

    onTextChanged: {
        if(!(basetextfield.maxLen <= -1 || basetextfield.text.length <= basetextfield.maxLen)) {
            basetextfield.text = basetextfield.text.slice(0, basetextfield.text.length - 1);
        }
    }
}
