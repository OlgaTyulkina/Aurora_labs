import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4

    allowedOrientations: Orientation.All

    ValueButton {
        id: valButt
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        label: "Число нажатий"
        description: "Отображает число нажатий"
        value: valButt.count

        property int count: 0

        onClicked: {
            valButt.count++;
        }
    }
}

