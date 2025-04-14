import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3
   property var dataModel: [
       { idx: 1, name: "Белый", backgrcolor: "#ffffff", textcolor: "black" },
       { idx: 3, name: "Черный", backgrcolor: "#000000", textcolor: "white" },
       { idx: 2, name: "Синий", backgrcolor: "#0000ff", textcolor: "red" }
   ]
   SilicaListView {
       anchors.fill: parent
       header: PageHeader { title: "Simple List" }
       model: page3.dataModel
       spacing: 10
       delegate: Rectangle {
           width: parent.width
           height: 100
           color: modelData.backgrcolor
           Text {
               anchors.centerIn: parent
               color: modelData.textcolor
               font.pixelSize : 35
               text: modelData.name || "empty text"
           }
       }
   }
}
