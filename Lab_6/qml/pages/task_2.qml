import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    Column{
        id: column

        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle {
            id: red_c
            width: 150
            height: 150
            color: "black"
            border.color: "black"
            border.width: 2
            radius: width*0.5
        }
        Rectangle {
            id: yellow_c
            width: 150
            height: 150
            color: "black"
            border.color: "black"
            border.width: 2
            radius: width*0.5
        }
        Rectangle {
            id: green_c
            width: 150
            height: 150
            color: "black"
            border.color: "black"
            border.width: 2
            radius: width*0.5
        }
    }

    SequentialAnimation{
        id: anima
        onStopped: {running = true;}
        PropertyAnimation{ target: red_c; properties: "color";to:"red"; duration: 500 }
        PropertyAnimation { target: red_c; properties: "color";to:"black"; duration: 100 }
        PropertyAnimation { target: yellow_c; properties: "color";to:"yellow"; duration: 500 }
        PropertyAnimation { target: yellow_c; properties: "color";to:"black"; duration: 100 }
        ParallelAnimation{
            PropertyAnimation { target: green_c; properties: "color";to:"green"; duration: 500 }
            NumberAnimation{target: ic; properties: "x";from: 0;to:600;duration: 500}
        }
        PropertyAnimation{ target: green_c; properties: "color";to:"black"; duration: 100 }
    }
    Component.onCompleted: {anima.running = true}
    Icon{
        id: ic
        source: "image://theme/icon-m-people"
        y:500
    }

}
