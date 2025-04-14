import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    allowedOrientations: Orientation.All

    Text{
        id: txt
        text: "Вы прошли игру!"
        anchors.centerIn: parent
        font.family: "Helvetica"
        font.pointSize: 65 //20
        color: "skyblue"
        style: Text.Outline;
        styleColor: "white"
    }

//    SequentialAnimation{
//        id: anima
//        onStopped: {running = true;}
//        PropertyAnimation{ target: txt; properties: "font.pointSize"; to:"65"; duration: 500 }
//    }
//    Component.onCompleted: {anima.running = true}

    Button {
    id: but
    text: "Начать сначала"
    color: "pink"

    anchors {
        topMargin: 40
        top: txt.bottom
        horizontalCenter: parent.horizontalCenter
    }

    highlightBackgroundColor: "lightpink"
    onClicked: {
            pageStack.push(Qt.resolvedUrl("main.qml"));
    }
    }

}



