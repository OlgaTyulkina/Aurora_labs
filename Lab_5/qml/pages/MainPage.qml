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
                text: qsTr("task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("task_5.qml"))
            }
            MenuItem{
                text: qsTr("task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("task_6.qml"))
            }
            MenuItem {
                text: qsTr("task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("task_7.qml"))
            }
            MenuItem {
                text: qsTr("task 8")
                onClicked: pageStack.push(Qt.resolvedUrl("task_8.qml"))
            }
            MenuItem {
                text: qsTr("task 9")
                onClicked: pageStack.push(Qt.resolvedUrl("task_9.qml"))
            }

        }
 }
}
