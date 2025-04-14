import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page1

    allowedOrientations: Orientation.All

    Column {
        anchors.fill: parent
        spacing: 10
        PageHeader {
            id: head
            title: "Страница"
        }

        Button{
            text: "Назад"
            onClicked: {
                pageStack.pop()
            }
        }
        Button {
            text: "Вперед"
            onClicked: {
                pageStack.push(Qt.resolvedUrl("task_1.qml"))
            }
        }
        Text{
            text: "Глубина стека: " + pageStack.depth
            color: "azure"
        }
    }
}

