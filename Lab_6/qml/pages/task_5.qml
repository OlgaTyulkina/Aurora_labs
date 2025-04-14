import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page5
    Item {
        id: text_comp
        x:220
        y:440
        TextComponent{
            col: "magenta"
            txt: Text{text: "Какой-то текст"}
            butt_col: "skyblue"
        }
    }
}
