import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4
    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        LightSignal{
            id: red_c
        }
        LightSignal{
            id: yellow_c
        }
        LightSignal{
            id: green_c
        }
    }
    SequentialAnimation{
        id: anima
        onStopped: {running = true;}
        PropertyAnimation{ target: red_c; properties: "color";to:"red"; duration: 500 }
        PropertyAnimation { target: red_c; properties: "color";to:"black"; duration: 100 }
        PropertyAnimation { target: yellow_c; properties: "color";to:"yellow"; duration: 500 }
        PropertyAnimation { target: yellow_c; properties: "color";to:"black"; duration: 100 }
        PropertyAnimation { target: green_c; properties: "color";to:"green"; duration: 500 }
        PropertyAnimation{ target: green_c; properties: "color";to:"black"; duration: 100 }
    }
    Component.onCompleted: {anima.running = true}
}
