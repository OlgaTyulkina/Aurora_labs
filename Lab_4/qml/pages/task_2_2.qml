import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    allowedOrientations: Orientation.All

    Column {
        anchors.fill: parent
        PageHeader{title: "Вторая страница"}
        Button {
            text: "Назад"
            onClicked: pageStack.navigateBack()
        }
    }
}
