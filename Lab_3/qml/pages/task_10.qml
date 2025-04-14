import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page1

    allowedOrientations: Orientation.All

    TextField{
        id: textField1

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        label: "Поле для ввода номера телефона"
        placeholderText: label

         // валидатор для номера телефона
         validator: RegExpValidator{
                 regExp: /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/
            }

        inputMethodHints: Qt.ImhDialableCharactersOnly

        onTextChanged: {
            if(errorHighlight){
                console.log("Неправильно введены данные");
            }
        }
    }

    TextField{
        id: textField2

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textField1.bottom

        label: "Поле для ввода электронного адреса"
        placeholderText: label

         // валидатор для почты
        validator: RegExpValidator{
             regExp: /^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[a-z]{2,4}$/
        }

        inputMethodHints: Qt.ImhEmailCharactersOnly

        onTextChanged: {
            if(errorHighlight){
                console.log("Неправильно введены данные");
            }
        }
    }

}
