import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    PageHeader {id: header ; title: "Simple List"}

    ListModel {
        id: dataModel

        ListElement{idx:0;text: "Item #"}
        ListElement{idx:1;text: "Item #"}
        ListElement{idx:2;text: "Item #"}
    }

    Column{
        y: 150
        spacing: 30
        width: parent.width
        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Add item"
            onClicked: dataModel.append({idx:dataModel.rowCount(),text: "Item #" })
        }
        SilicaListView {
            id: sil
            width: parent.width; height: parent.height;
            spacing: 10
            model: dataModel
            delegate: Rectangle {
                width: parent.width; height: 70;
                color: Qt.rgba(Math.random(),Math.random(), Math.random(), 1 )

                    Text {
                        anchors.centerIn: parent
                        text: model.text + model.idx
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            dataModel.remove(index)
                        }
                    }
            }

        }

    }

}
