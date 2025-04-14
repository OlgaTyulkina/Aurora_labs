import QtQuick 2.0
import QtQuick.Layouts 1.1

// Определение компонента Card
Item {
  id: card
  // располагать карты на весь экран
  Layout.fillWidth: true
  Layout.fillHeight: true

  property alias backImageSource: backImage.source
  property alias flipped: flipable.flipped
  property alias state: flipable.state

  Flipable {
    id: flipable
    anchors.fill: parent

    property bool flipped: false  // положение по умолч.

    // передняя сторона карты
    front: Rectangle {
      anchors.fill: parent
      color: 'pink'
      radius: 12
      border.width: 2
      border.color: '#FF1493'

      Image {
        anchors { fill: parent; centerIn: parent }
        fillMode: Image.PreserveAspectFit   // масштабирование изображения при анимации
        source: "new_icon.png"
      }
    }

    // обратная сторона карты
    back: Rectangle {
      anchors.fill: parent
      color: 'pink'
      radius: 12
      border.width: 2
      border.color: '#FF1493'

      Image {
        id: backImage
        width: parent.width - 25
        height: parent.height - 25
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
      }
    }

    transform: Rotation {
      id: rotation
      origin.x: flipable.width / 2
      origin.y: flipable.height / 2
      axis.x: 0; axis.y: 1; axis.z: 0  // вращение относительно оси Y
      angle: 0  // угол по умолч.
    }

    // возможные состояния карты
    states: [
      State {
        name: 'back'
        // поворот карты на 180 градусов
        PropertyChanges { target: rotation; angle: 180 }
        when: flipable.flipped  // когда изменяется состоние flipped (flipped = true/false, false/true)
      },
      State {
        name: 'remove'
        PropertyChanges {
          target: card
          visible: false   // при удалении карты, она перестает отображаться
        }
      }
    ]

    // Когда элемент переходит из состояния "back" в состояние по умолчанию,
    // функция NumberAnimation анимирует угол между его старым и новым значениями (изменяет угол за 350 мс)
    transitions: Transition {  // переход между значениями свойств
      NumberAnimation { target: rotation; property: 'angle'; duration: 250 }
    }
  }
}
