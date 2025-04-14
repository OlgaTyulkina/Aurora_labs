import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page7

    allowedOrientations: Orientation.All

    ComboBox{
        id: comb
        label: "Выпадающий список"
        menu: ContextMenu {
            MenuItem{text: "1ая строка списка"}
            MenuItem{text: "2ая строка списка"}
            MenuItem{text: "3ая строка списка"}
            MenuItem{text: "4ая строка списка"}
            MenuItem{text: "5ая строка списка"}
        }
    onCurrentIndexChanged: console.log("Вы изменили выбор на строку с индексом [" + currentIndex + "]. Она содержит следующий текст: " + value)
    }

}
