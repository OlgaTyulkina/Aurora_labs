import QtQuick 2.0
import QtQuick.Layouts 1.1
import '../js/GameUtils.js' as GameUtils

GridLayout {
  id: area
  anchors.fill: parent
  anchors.margins: 25
  columns: (width < height) ? 4 : Math.round(repeater.model / 4)
  rowSpacing: 5
  columnSpacing: 5

  property int imageCount: 8
  // кол-во повторений
  property int repeatCount: (repeater.model > imageCount) ? repeater.model / imageCount : 1
  // массив индексов карт (в случ. порядке)
  property variant imageIndexes: GameUtils.generateCardIndexes(imageCount, repeatCount)
  // индексы пары карт
  property int card1: -1
  property int card2: -1

  property int remaining: Math.round(repeater.model / 2)  // кол-во оставшихся карт

  // после нажатия на карту
  function cardClicked(index) {
    var card = repeater.itemAt(index);
    if (!card.flipped) {   // если текущее состояние flipped = false
      card.flipped = true;   // изменяем состояние на true (переворачиаем карту)
      if (card1 === -1) {
        card1 = index;     // присваиваем номер перевернутой карты
      } else {
        card2 = index;   // если уже перевернута, то присваиваем индекс в card2
        area.enabled = false;  // на другие карты в это время нельзя нажимать
        delayTimer.start();    // запустить таймер для проверки пары
      }
    } else {  // если же карта уже перевернута
      card.flipped = false;       // возвращаем её в первоначальное положение
      card1 = -1;
    }
  }

  function validateCards() {
    var state = '';
    // если значения совпали
    if (imageIndexes[card1] === imageIndexes[card2]) {
      state = 'remove';// удаляем пару
      --remaining;
    }
    repeater.itemAt(card1).state = state;
    repeater.itemAt(card2).state = state;
    // устанавливаем значения по умолчанию
    repeater.itemAt(card1).flipped = false;
    repeater.itemAt(card2).flipped = false;
    card1 = -1;
    card2 = -1;
    area.enabled = true;
    if (remaining === 0) {
      //console.log('Game Over!');
        pageStack.push(Qt.resolvedUrl("Final.qml"));
    }
  }

  Timer {
    id: delayTimer
    interval: 1000 //1000
    onTriggered: area.validateCards()  // запустить проверку пары
  }

  // создание карт
  Repeater {
    id: repeater
    model: 16      // 20 карт

    // Вызов компонента Card
    Card {
      id: card
      backImageSource: 'img_' + area.imageIndexes[index] + '.png'

      MouseArea {
        anchors.fill: parent
        onClicked: area.cardClicked(index)
      }
    }
  }
}
