import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    Rectangle{
            color: "black"
            width: 300;
            height: 300

            Text {
                id: before
                color: "white"
                anchors.centerIn: parent
                font.pointSize: 40
                textFormat: Text.RichText
                text: qsTr("<b>A</b>")
            }

             Rectangle{
                 color: "black"
                 width: parent.width;
                 height: parent.height
                 transform: [Scale{xScale:0.5}, Rotation{angle:40},Translate{x:600;y:50}]

                Text {
                    id: after
                    color: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    transform: Scale{xScale:1.5}
                    font.pointSize: 40
                    textFormat: Text.RichText
                    text: qsTr("<b>B</b>")
                }
            }
        }

    }


