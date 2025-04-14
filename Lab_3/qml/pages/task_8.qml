import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page8

    allowedOrientations: Orientation.All

    Column {
        id: coll1
        anchors.horizontalCenter: parent.horizontalCenter
        Switch {
            id: sw1
            icon.source: "image://theme/icon-l-gps?"
            + (checked ? Theme.highlightColor
               : Theme.primaryColor)
        }
        Label {
            text: "Переключатель: " + (sw1.checked ? "Включён" : "Выключен")
        }
    }

    Column {
        id: coll2
        width: parent.width
        anchors.top: coll1.bottom
        TextSwitch {
            id: sw2
            text: "Переключатель"
            description: "Состояние переключателя: " + (sw2.checked ? "Включён" : "Выключен")
        }
    }

    IconTextSwitch {
        id: sw3
        anchors.top: coll2.bottom
        text: "Переключатель"
        description: "Состояние переключателя: " + (sw3.checked ? "Включён" : "Выключен")
        icon.source: "image://theme/icon-m-gps?" + (checked ? Theme.highlightColor : Theme.primaryColor)
    }

}
