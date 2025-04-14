import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page5
    property string txt1 : ""
    Column {
        PageHeader{}
        Button {
            text: "Вызов диалогого окна"
            onClicked: {

                var dialog_time = pageStack.push("Sailfish.Silica.TimePickerDialog",{hour: 0, minute: 0})
                dialog_time.accepted.connect(function(){
                    txt1 = dialog_time.timeText
                })

            }
        }
        Label {text: "Текстовое поле для времени"}
        Text {
            id: tx
            text: "" + txt1
            color: "pink"
        }
    }
}
