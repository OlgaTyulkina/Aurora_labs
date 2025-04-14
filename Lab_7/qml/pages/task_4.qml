
import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {
    id:page3

    property string str: ""
    property var objectsArray: []

    ListModel {
        id: dataModel
        ListElement { idx: 1; name: "Белый"; backgrcolor: "#ffffff"; textcolor: "black" }
    }

        SilicaListView {
            id: sil
            anchors.top: txt.bottom
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



//    SilicaGridView {
//        delegate: Item {
//            width: list.cellWidth
//            height: list.cellHeight
//            Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
//        }
//    }


    SilicaFlickable{

        MyList1Class{
            id: list_str
        }

        Column{
            spacing: 100
            TextField{
                id: txt
            }

            Label{
                text: "Список: " + str
                //.containsMouse: true


                MouseArea {
                    id: ma
                    anchors.fill: parent

                    onClicked: {
                        if (str != ""){
                            objectsArray = list_str.countLetters();
                        }
                        else {
                            console.log("Введите слово");
                        }
                    }
                }
            }


            Button{
                text: "Добавить новую строку"
                onClicked: {
                    list_str.addNewStr(txt.text);
                    str = list_str.getAllStr();
                }
            }
            Button{
                text: "Удалить последнюю строку"
                onClicked: {
                    list_str.deleteLastStr();
                    str = list_str.getAllStr();
                }
            }

            Label{
                id: label2
                text: "Кол-во гласных: " + objectsArray[0]
            }
            Label{
                id: label3
                text: "Кол-во согласных: " + objectsArray[1]
            }
            Label{
                id: label4
                text: "Кол-во цифр: " + objectsArray[2]
            }


        }
    }
}

