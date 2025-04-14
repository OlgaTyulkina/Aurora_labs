import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4
    property string txt1 : ""
    Column {
        PageHeader{}
        Button {
            text: "Вызов диалогого окна"
            onClicked: {
                var dialog_date = pageStack.push("Sailfish.Silica.DatePickerDialog",{date: new Date()})
                dialog_date.accepted.connect(function(){
                    txt1 = dialog_date.dateText

                })

            }
        }
        Label {text: "Текстовое поле для даты"}
        Text {
            id: tx
            text: "" + txt1
            color: "pink"
        }
    }
}
