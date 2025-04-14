import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page1

    allowedOrientations: Orientation.All

    TextField{
        id: textField

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        label: "Поле для ввода числа"
        placeholderText: label

        inputMethodHints: Qt.ImhDigitsOnly  // только целые числа
    }
}
