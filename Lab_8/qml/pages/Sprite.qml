import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Image {
                id: img1
                anchors.centerIn: parent
                source: "Idol1.png"
                fillMode: Image.PreserveAspectFit
            }

    SequentialAnimation {
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: img1
                    property: "x"
                    from: 0
                    to: 0
                    duration: 1000/5
                    easing.type: Easing.InOutQuad
                }

                ScriptAction {
                    script: {
                        img1.source =  "Idol2.png"
                    }
                }

                NumberAnimation {
                    target: img1
                    property: "x"
                    from: 0
                    to: 0
                    duration: 1000/4
                    easing.type: Easing.InOutQuad
                }

                ScriptAction {
                    script: {
                        img1.source =  "Idol3.png"
                    }
                }
                NumberAnimation {
                    target: img1
                    property: "x"
                    from: 0
                    to: 0
                    duration: 1000/4
                    easing.type: Easing.InOutQuad
                }

                ScriptAction {
                    script: {
                        img1.source =  "Idol4.png"
                    }
                }
                NumberAnimation {
                    target: img1
                    property: "x"
                    from: 0
                    to: 0
                    duration: 1000/4
                    easing.type: Easing.InOutQuad
                }

                ScriptAction {
                    script: {
                        img1.source =  "Idol5.png"
                    }
                }
                NumberAnimation {
                    target: img1
                    property: "x"
                    from: 0
                    to: 0
                    duration: 1000/4
                    easing.type: Easing.InOutQuad
                }
                ScriptAction {
                    script: {
                        img1.source =  "Idol1.png"
                    }
                }
            }
}
