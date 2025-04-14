import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3

    allowedOrientations: Orientation.All

    Button {
        id: butt
        anchors.centerIn: parent

        text: "Кнопка"
        highlightColor: "cyan"

        property int count: 0

        onClicked: {
            butt.count++;
            txt.text = (butt.count % 2 == 0) ? "Отпущена" : "Нажата"
            butt.down = (butt.count % 2 == 0) ? false : true
        }
        Text {
            id: txt
            anchors.top: parent.bottom
            color: "black"
            font.pointSize: 25
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Отпущена"
        }
    }
}
