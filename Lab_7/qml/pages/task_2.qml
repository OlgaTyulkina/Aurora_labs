import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {
    id:page2

    property string str: ""

    SilicaFlickable{
        MyListClass{
            id: list_str

        }
        Column{
            spacing: 100
            TextField{
                id: txt
            }
            Label{
                id: label1
                text: "Список: " + str
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
//            Button{
//                text: "размер списка"
//                onClicked: {
//                    console.log()
//                }
//            }

        }
    }
}

