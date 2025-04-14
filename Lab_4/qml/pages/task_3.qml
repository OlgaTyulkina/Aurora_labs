import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3
    property string txt1 : ""  // получим из свойства dialog_text.txt
    property string full_text: "" + txt1  // получим из свойства dialog_text.saved_text
    Column {
        PageHeader{}
        Button {
            text: "Вызов диалогого окна"
            onClicked: {
                var dialog_text = pageStack.push(Qt.resolvedUrl("dialog_text.qml"),{saved_text: full_text})
                dialog_text.accepted.connect(function(){
                    txt1 = dialog_text.txt
                })
            }
        }
        Label {text: "Текстовое поле"}
        Text {   // нередактируемое текстовое поле
            id: tx
            text: "" + txt1
            color: "pink"
        }
    }
}
