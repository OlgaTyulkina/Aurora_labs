import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page10
    ListModel {
        id: model_list
        ListElement { name: "The Beatles" }
        ListElement { name: "Pink Floyd" }
        ListElement { name: "Queen" }
        ListElement { name: "The Rolling Stones" }
        ListElement { name: "Metallica" }
        ListElement { name: "The Velvet Underground" }
    }

    SilicaListView {
        anchors.fill: parent
        model: model_list
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                anchors.horizontalCenter: parent.horizontalCenter
                text: name + " #" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                id: contmenu
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    text: "Legends"
                    onClicked: console.log("выбран элемент " + text + " с индексом элемента списка " +  index)
                }
                MenuItem {
                    text: "The best bands ever"
                    onClicked: console.log("выбран элемент " + text + " с индексом элемента списка " + index)
                }
            }

        }
        VerticalScrollDecorator {}
    }
}

