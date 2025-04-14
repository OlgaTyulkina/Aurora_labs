import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property string txt_rec: txt.text
    property string txt_col: txt_c.text
    property string bg_col: bg_c.text

    Column {
        width: parent.width
        spacing: Theme.paddingMedium
        DialogHeader { }
        TextField {
            id: txt
            width: parent.width
            text: ""
            placeholderText: "текст прямоугольника"
        }
        TextField{
            id: txt_c
            width: parent.width
            text: ""
            placeholderText: "цвет текста прямоугольника"
        }
        TextField{
            id: bg_c
            width: parent.width
            text: ""
            placeholderText: "цвет фона прямоугольника"
        }
    }
}
