import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page9
    property string txt1 : ""

    SilicaListView {

        PullDownMenu {

            MenuItem {
                text: "Зеленая миля"
                onClicked: {txt1 = text}
            }
            MenuItem {
                text: "Побег из Шоушенка"
                onClicked: {txt1 = text}
            }
            MenuLabel { text: qsTr("Верхнее меню") }
        }
        PushUpMenu {

            MenuLabel { text: qsTr("Нижнее меню") }
            MenuItem {
                text: "Список Шиндлера"
                onClicked: {txt1 = text}
            }
            MenuItem {
                text: "Бойцовский клуб"
                onClicked: {txt1 = text}
            }
        }

        anchors.fill: parent
        header: PageHeader { title: "Меню" }

    }

    Label {
        id: lb
        anchors.centerIn: parent
        text: "Текстовое поле для элемента:"
    }
    Text {
        anchors.top: lb.bottom
        anchors.horizontalCenter: lb.horizontalCenter
        id: tx
        text: "" + txt1
        color: "red"
        font.bold: true
    }
}
