import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem{
                text: qsTr("task 1")
                onClicked: pageStack.push(Qt.resolvedUrl("CanvasHouse.qml"))
            }
            MenuItem{
                text: qsTr("task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("Sprite.qml"))
            }
            MenuItem{
                text: qsTr("task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("Tap.qml"))
            }
            MenuItem{
                text: qsTr("task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("Fountain.qml"))
            }
            MenuItem{
                text: qsTr("task_5")
                onClicked: pageStack.push(Qt.resolvedUrl("audio_task.qml"))
            }
            MenuItem{
                text: qsTr("task_6")
                onClicked: pageStack.push(Qt.resolvedUrl("video_task.qml"))
            }
        }
    }
}
