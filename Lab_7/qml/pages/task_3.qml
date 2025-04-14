
import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {
    id:page3

    property string str: ""
    property var objectsArray: []
    property int nElements: 3

    // SilicaFlickable{}

    MyList1Class{
        id: list_str
    }

    ListModel {
        id: myModel

        ListElement {
            name: "el1"
        }
        ListElement {
            name: "el2"
        }
        ListElement {
            name: "el3"
        }
    }


            Column{
                id: col
                spacing: 50


                TextField{
                    id: txt
                }

    //            //            Label{
    //            //                text: "Список: " + str
    //            //                //.containsMouse: true
    //            //
    //            //
    //            //                MouseArea {
    //            //                    id: ma
    //            //                    anchors.fill: parent
    //            //
    //            //                    onClicked: {
    //            //                        if (str != ""){
    //            //                            objectsArray = list_str.countLetters();
    //            //                        }
    //            //                        else {
    //            //                            console.log("Введите слово");
    //            //                        }
    //            //                    }
    //            //                }
    //            //            }



                Button{
                    text: "Добавить новую строку"
                    onClicked: {
                        list_str.addNewStr(txt.text);
                        nElements = nElements + 1
                        myModel.append({name: nElements.toString(), color: "white"})
                        //str = list_str.getAllStr();
                    }
                }
                Button{
                    text: "Удалить последнюю строку"
                    onClicked: {
                        list_str.deleteLastStr();
                        //str = list_str.getAllStr();
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

Item{
    id: item1
    anchors.top: col.bottom
    width: parent.width
    anchors.topMargin: 100


    ListView {
        id: lv

        anchors.fill: parent
        model: myModel
        orientation: ListView.Horizontal
     //   clip: true

        delegate: Row{

            Text {
                text: name + ","
                color: "white"


                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        objectsArray = list_str.countLetters(name);
                        nElements = nElements + 1
                        myModel.append({name: nElements.toString(), color: "white"})
                    }

                }
            }
        }
    }
}

}

