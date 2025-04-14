import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page1

    allowedOrientations: Orientation.All

        Button{
            text: "Начать игру"
            anchors.centerIn: parent
            color: "pink"
            highlightBackgroundColor: "lightpink"
            onClicked: {
                pageStack.push(Qt.resolvedUrl("main.qml"))
            }
        }
}
