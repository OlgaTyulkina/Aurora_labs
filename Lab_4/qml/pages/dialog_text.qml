import QtQuick 2.0
import Sailfish.Silica 1.0


Dialog {
    property string txt: txField.text
    property string saved_text: ""

    Column {
        width: parent.width
        spacing: Theme.paddingMedium

        DialogHeader { } // для отображения 2 кнопок

        TextField {
            id: txField
            width: parent.width
            text: "" + saved_text
        }
    }
}
