import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {
    id: page1

    property int count: 0

    MyCountClass{
        id: cnt
        //text: "My Class Text"
    }
    SilicaFlickable {
        Column {
            //anchors.fill: parent
            PageHeader { title: "Page"}
            Label { text: "Count: " + count }
            Button {
                //width: parent.width
                text: "Увеличить"
                onClicked: {
                    cnt.increaseCount();
                    cnt.printCount();
                    count = cnt.getCount();
                }
            }
            Button {
                //width: parent.width
                text: "Сбросить"
                onClicked: {
                    cnt.resetCount();
                    cnt.printCount();
                    count = cnt.getCount();
                }

            }


            /*
            Button{
                text: "минус"
                onClicked: {
                    cnt.discreaseCount();
                    cnt.printCount();
                    count = cnt.getCount();
                }
            }

            Button{
                text: "^2"
                onClicked: {
                    cnt.sq_Count();
                    cnt.printCount();
                    count = cnt.getCount();
                }
                */
            }
        }
 }



