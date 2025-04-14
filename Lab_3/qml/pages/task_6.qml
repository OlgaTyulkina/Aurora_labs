import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page6

    allowedOrientations: Orientation.All

    Item {
        height: timePick.height
        width: timePick.width

        TimePicker {
            id: timePick
            anchors.centerIn: parent
            onTimeTextChanged: console.log("Выбрано время  " + timePick.timeText)
        }
        Label{
            id: tm
            anchors.centerIn: timePick
            text: timePick.timeText

        }

    }

}
