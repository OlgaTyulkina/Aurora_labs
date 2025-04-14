import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page9

    allowedOrientations: Orientation.All

    Slider {
        id: sl
        width: parent.width
        label: "Ползунок"
        maximumValue: 100
        minimumValue: -100
        value: 10
        stepSize: 1
        valueText: value
    }
    Label {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: sl.bottom
        text: "Текущее значение: " + sl.value
    }
}

