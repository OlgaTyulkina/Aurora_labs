import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2

    allowedOrientations: Orientation.All

    Column {
        anchors.fill: parent
        PageHeader {
            title: "Первая страница"
        }
        Button {
            text: "Прикрепить страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("task_2_2.qml"))
        }
        Button {
            text: "Открепить страницу"
            onClicked: pageStack.popAttached()
        }
    }
}
