import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    initialPage: Component {
        Page {

            Button{
                text: "Суммировать"
                color: "azure"
                backgroundColor: "steelblue"
                highlightColor: "cyan"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                // при нажатии откроется диалоговое окно
                onClicked: {
                    var dialogForSum = pageStack.push(Qt.resolvedUrl("DialogPage.qml"))
                    dialogForSum.accepted.connect(function(){
                        console.log("Результат суммирования равен = " + dialogForSum.sum)
                    })
                }
            }
}
}
}
