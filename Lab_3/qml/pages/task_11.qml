import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page11

    allowedOrientations: Orientation.All

  Column{
      width: parent.width

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
        id: l1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: sl.bottom
        text: "Текущее значение: " + sl.value
    }


  IconTextSwitch {
      id: sw
      checked: true

      anchors.top: l1.bottom
      text: "Переключатель"
      description: "Состояние переключателя: " + (sw.checked ? "Включён" : "Выключен")
      icon.source: "image://theme/icon-m-gps?" + (checked ? Theme.highlightColor : Theme.primaryColor)

      onClicked:
               sw.checked ? sl.enabled = true : sl.enabled = false

  }
}
}
