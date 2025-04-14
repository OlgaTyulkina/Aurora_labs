import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page7

    allowedOrientations: Orientation.All

    property int prevDepth
    property int pushPages : 0
    property int popPages : 0

    function onDepthChangedfunc(){
        if (typeof prevDepth === "undefined")
            pushPages++;
        else
        {
            if(prevDepth > pageStack.depth){
                popPages++;
            }
            else{
                pushPages++;
            }
        }
        prevDepth = pageStack.depth
        console.log("Added pages = " + pushPages);
        console.log("Removed pages = " + popPages);
    }

    Component.onCompleted: {
        pageStack.onDepthChanged.connect(onDepthChangedfunc)
    }

    Column
    {
        id: column
        width: page7.width
        height: page7.height

        Button
        {
            width: parent.width
            text: qsTr("Перейти на страницу 1")
            onClicked: pageStack.push(Qt.resolvedUrl("task_1.qml"))
        }
        Button
        {
            width: parent.width
            text: qsTr("Перейти на страницу 2")
            onClicked: pageStack.push(Qt.resolvedUrl("task_2.qml"))
        }
        Button
        {
            width: parent.width
            text: qsTr("Перейти на страницу 3")
            onClicked: pageStack.push(Qt.resolvedUrl("task_3.qml"))
        }
        Button
        {
            width: parent.width
            text: qsTr("Перейти на страницу 4")
            onClicked: pageStack.push(Qt.resolvedUrl("task_4.qml"))
        }
        Button
        {
            width: parent.width
            text: qsTr("Перейти на страницу 5")
            onClicked: pageStack.push(Qt.resolvedUrl("task_5.qml"))
        }
        Button
        {
            width: parent.width
            text: qsTr("Перейти на страницу 6")
            onClicked: pageStack.push(Qt.resolvedUrl("task_6.qml"))
        }
    }
}

// если глубина раньше была больше, значит страницу удалили
// присоединить сигнал изменения глубины стека к методу onDepthChangedfunc()
