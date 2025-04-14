import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
        ListElement { idx: 1; name: "Белый"; backgrcolor: "#ffffff"; textcolor: "black" }
        ListElement { idx: 2; name: "Черный"; backgrcolor: "#000000"; textcolor: "white" }
        ListElement { idx: 3; name: "Синий"; backgrcolor: "#0000ff"; textcolor: "red" }
    }

        SilicaListView {
            id: sil
            anchors.fill: parent
            header: PageHeader { title: "Simple List" }
            model: dataModel
            spacing: 10
            delegate: Rectangle {
                width: parent.width
                height: 100
                color: backgrcolor

                Text {
                    anchors.centerIn: parent
                    text: name
                    color: textcolor
                    font.pixelSize : 35
                }
            }
        }
        property string txt_rect: ""
        property string txt_color: ""
        property string bg_color: ""

    Button{
        y: 1000
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Выбор параметров прямоугольника"
        onClicked: {
            var dialog_rect = pageStack.push(Qt.resolvedUrl("dialog_rect.qml"))
            dialog_rect.accepted.connect(function(){
                txt_rect = dialog_rect.txt_rec;
                txt_color = dialog_rect.txt_col;
                bg_color = dialog_rect.bg_col;
            })
        }
    }
    Button{
        y: 1100
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Добавление прямоугольника"
        onClicked: {
            dataModel.append({idx:dataModel.rowCount()+1,
                              name: txt_rect,
                              backgrcolor:bg_color,
                              textcolor: txt_color})
        }
    }
}
