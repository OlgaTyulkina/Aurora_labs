import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
            MenuItem{
                text: qsTr("task 1")
                onClicked: pageStack.push(Qt.resolvedUrl("task_1.qml"))
            }
            MenuItem{
                text: qsTr("task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("task_2.qml"))
            }
            MenuItem{
                text: qsTr("task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("task_3.qml"))
            }
            MenuItem{
                text: qsTr("task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("task_4.qml"))
            }
            MenuItem{
                text: qsTr("list_model")
                onClicked: pageStack.push(Qt.resolvedUrl("list_model.qml"))
            }
        }

        contentHeight: column.height
/*
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("UI Template")
            }

        }
*/
    }

}
