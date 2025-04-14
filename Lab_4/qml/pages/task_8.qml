import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page8
    ListModel {
        id: model_list
        ListElement { name: "Сходить в магазин"; date:"20.10.2023";}
        ListElement { name: "Прочитать книгу";date:"21.10.2023";}
        ListElement { name: "Прибраться"; date:"22.10.2023";}
        ListElement { name: "Посмотреть фильм"; date:"30.10.2023";}
    }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width; itemWidth: width;
        model: model_list
        delegate: Rectangle {
            width: view.itemWidth;
            height: view.itemHeight;
            color: "transparent"
            border.color: "black"
            Text {
                anchors.centerIn: parent
                font.pixelSize: 40
                color: "pink"
                text: "Дата: " + date + "\nЗадача: " + name
            }
        }
    }
}

