import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    allowedOrientations: Orientation.All

    Rectangle{
        id: rect1
        color: "steelblue"
        width: 100;
        height: 100
        anchors.horizontalCenter: parent.horizontalCenter

        ParallelAnimation{ // анимации будут выполняться одновременно
            running: true // состояние

            PropertyAnimation{
                loops: Animation.Infinite
                target: rect1
                properties: "y"
                from: 0
                to: 800
                duration: 5000
            }
            PropertyAnimation{
                loops: Animation.Infinite
                target: rect1
                properties: "width"
                from: 100
                to: 450
                duration: 5000
            }
            PropertyAnimation{
                loops: Animation.Infinite
                target: rect1
                properties: "height"
                from: 100
                to: 450
                duration: 5000
            }

        }

    }

}
