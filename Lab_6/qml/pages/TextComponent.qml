import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: comp
    property var txt
    property string col
    property string butt_col
    Button{
        text: txt.text
        color: col
        backgroundColor: butt_col
    }
}

