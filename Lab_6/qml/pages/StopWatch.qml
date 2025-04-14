import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: tick
    property int milisec: 0
    property int sec: 0
    property int min: 0
    property int hours: 0
    property string txt

    width: size
    height: size

    property int size: 300              // size of the watch in pixel
    property real lineWidth: 5          // width of the line
    property string colorEmptyLine: "white"
    property string colorLine: "red"

    onSecChanged: canvas.requestPaint()

    Canvas{
        id: canvas
        anchors.fill: parent

        onPaint: {
            var ctx = getContext("2d")
            var x = width / 2
            var y = height / 2
            var start = -0.5 * Math.PI
            var end = start + Math.PI * (parent.sec / 30)
            var arcRadius = (width / 2) - parent.lineWidth / 2
            ctx.reset()

            ctx.beginPath();
            ctx.arc(x, y, arcRadius, start, start + 2 * Math.PI, false)
            ctx.lineWidth = tick.lineWidth
            ctx.strokeStyle = colorEmptyLine
            ctx.stroke()

            ctx.beginPath();
            ctx.arc(x, y, arcRadius, start, end, false)
            ctx.lineWidth = tick.lineWidth
            ctx.strokeStyle = colorLine
            ctx.stroke()
        }

        Text {
            id: time
            anchors.centerIn: parent
            text: txt
            color: "white"
        }
    }


//    Rectangle{
//        id: rec1
//        width: parent.size
//        height: parent.size
//        color: "transparent"
//        border.color: "white"
//        border.width: tick.lineWidth
//        radius: width*0.5
//        Text {
//            id: time
//            anchors.centerIn: parent
//            text: txt
//            color: "white"
//        }
//    }

}
