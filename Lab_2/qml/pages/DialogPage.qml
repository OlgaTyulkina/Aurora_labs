import QtQuick 2.0
import Sailfish.Silica 1.0

    Dialog{
        id: dialog
        visible: true
        property int sum: 0

        DialogHeader{
            id: header
            anchors.horizontalCenter: parent.horizontalCenter
            title: "Сложение двух чисел"
            acceptText: "Подтвердить"
            cancelText: "Отменить"
        }

        Column{
            width: parent.width
            anchors.top: header.bottom
            spacing: 10

            Row{
                width: parent.width
                height: 200
                TextField{
                    id: textField1
                    placeholderText: label
                    width: parent.width/2
                    height: 150
                    label: "Ввод 1-го числа"
                    inputMethodHints: Qt.ImhDigitsOnly
                }
                TextField{
                    id: textField2
                    anchors.left: textField1.right
                    placeholderText: label
                    width: parent.width/2
                    height: 150
                    label: "Ввод 2-го числа"
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }

        }

    onAccepted: dialog.sum = parseInt(textField1.text) + parseInt(textField2.text)
    //onRejected: console.log("Вы покинули диалог")
    //onOpened: console.log("Вы открыли диалог")
    //onCanceled: console.log("Exit")

   }


