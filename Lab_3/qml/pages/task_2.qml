import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2

    allowedOrientations: Orientation.All

    Button {
        id: butt
        anchors.centerIn: parent
        text: "Кнопка"
        highlightColor: "azure" // цвет нажатой кнопки
        highlightBackgroundColor : "blue"

        onClicked: {
            //console.log("Вы нажали кнопку")
            butt.down = true // кнопка нажата
        }
    }
}

