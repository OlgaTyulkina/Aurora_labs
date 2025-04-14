import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3
    Text{
        id: txt
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50
        text: "J-HOOOOOOOOPE"
        font.pointSize: 50
        color: "red"
    }
    ParallelAnimation{
        id: anima
        ColorAnimation{target: txt;properties: "color";to:"#ba55d3";duration: 1000}
        NumberAnimation{target: txt;properties: "y";from:50;to:1200;duration: 1000}
        RotationAnimation{target: txt;from:0;to:180;duration: 1000}
    }
    ParallelAnimation{
        id: anima_reverse
        ColorAnimation{target: txt;properties: "color";to:"red";duration: 1000}
        NumberAnimation{target: txt;properties: "y";from:1200;to:50;duration: 1000}
        RotationAnimation{target: txt;from:180;to:0;duration: 1000}
    }
    MouseArea{
        anchors.fill: txt
        onPressed: anima.running = true; // при нажатии мыши
        onReleased: anima_reverse.running = true; // при отпускании мыши
    }
}
