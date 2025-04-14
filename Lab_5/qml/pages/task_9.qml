import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    PageHeader { title: "ConfigurationValue" }

    ConfigurationValue {
        id: val1
        key: "/ "   // название ключа
        value: "/ "  // значение конфигурации
    }

    ConfigurationValue {
        id: val2
        key: "/ "
        value: "/ "
    }
    Column {
        width: parent.width
        y: 200
        TextField {
            id: txt_log
            placeholderText: "enter login"
            text: ""
        }
        TextField {
            id: txt_p
            placeholderText: "enter password"
            text: ""
        }
        Button {
             width: parent.width
             text: "save val1"
             onClicked: {
                 var saved_val_1 = txt_log.text + " " + txt_p.text
                 val1.value = saved_val_1
                 console.log("current value 1 = " + val1.value)
             }
         }
        TextSwitch {
            id: txt_sw
            text: "Switch"
            description: "description"
            onCheckedChanged: {
                var saved_val_2 = txt_sw.checked ? "Не сохранено" : "Сохранено"
                if (saved_val_2 === "Не сохранено")
                    val2.value = ""
                console.log("current value 2 = " + val2.value)
            }
        }

    }

}


