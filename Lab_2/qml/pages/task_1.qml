import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page_1
    allowedOrientations: Orientation.All
    width: parent.width
    height: parent.height

    Item {
        width:  parent.width
        height: parent.height


               Rectangle  {
                   id: rec1
                    height: 200
                    width: 200
                    color: "red"
                }

                Rectangle  {
                    id: rec2
                    height: 200
                    width: 200
                    anchors.left: rec1.right
                    anchors.verticalCenter: rec1.bottom

                    color: "limegreen"
                }

                Rectangle  {
                    id: rec3
                    height: 200
                    width: 200
                    anchors.left: rec2.horizontalCenter
                    color: "blue"
                    Text {
                        id: sq_text
                        color: "white"
                        anchors.centerIn: parent
                        font.pointSize: 30
                        textFormat: Text.RichText
                        text: qsTr("<b>Квадрат</b>")
                    }

                }

        }
}
