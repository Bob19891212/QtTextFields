import QtQuick 2.5
import QtQuick.Controls 1.4

TextField {
    id: emailfield

    function isValid() {
        return /^([a-zA-Z0-9\.\_]+\@[a-zA-Z0-9]+\.[a-z]{2,3})$/.test(emailfield.text);
    }
}
