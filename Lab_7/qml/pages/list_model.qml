import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {

    property int nElements: 1
    property var namesArray: []
    property var objectsArray: []
    property string exp2find: " "
    property string newName: ""
    property int nEl2Del: 0

    MyList1Class{
        id: list_str
    }

    ListModel {
        id: myModel

        ListElement {
            name: ""
        }
    }

    Column{
        id: col
        spacing: 50


        TextField{
            id: txt
        }

        Button{
            text: "Добавить новую строку"
            onClicked: {

                newName = txt.text;

                if (nElements > 1)
                {
                    nElements = nElements + 1;
                    myModel.append({name: ",", color: "white"});
                    nEl2Del = 1;
                }

                var tempStr = newName;

                if (tempStr.search(exp2find)>-1)
                {
                    namesArray = newName.split(' ');
                    for (var i = 0; i < namesArray.length; i++)
                    {
                        newName = namesArray[i];

                        if (i < namesArray.length-1)
                        {
                            newName = newName + " ";
                        }

                        nElements = nElements + 1;
                        myModel.append({name: newName, color: "white"});

                    }
                    nEl2Del = nEl2Del + 2;
                }
                else
                {
                    nEl2Del = nEl2Del + 1;
                    nElements = nElements + 1;
                    myModel.append({name: newName, color: "white"});
                }
}

                //str = list_str.getAllStr();
            }

        Button{
            text: "Удалить последнюю строку"
            onClicked: {
                    myModel.remove(nElements-nEl2Del, nEl2Del);
                    nElements = nElements - nEl2Del;
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

    Item
    {
        id: item1
        anchors.top: col.bottom
        width: parent.width
        anchors.topMargin: 100
        //clip: true

        ListView {
            id: lv
            anchors.fill: parent
            //clip: true
            model: myModel
            orientation: ListView.Horizontal

            delegate: Row{
                Text {
                    text: name
                    color: "white"

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            objectsArray = list_str.countLetters2(name);

                            //nElements = nElements + 1
                            //newName = name+"new"
                            //myModel.append({name: newName, color: "white"})
                        }

                    }
                }
            }
        }
    }
}
