import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    PageHeader { title: "ConfigurationGroup" }

    ConfigurationGroup {
        id: conf_gr
        path: "/ "
    }
    Column {
        width: parent.width
        y: 200
        TextField {
            id: txt_f
            placeholderText: "enter smth"
            text: ""
        }
        Button {
             width: parent.width
             text: "save val1"
             onClicked: {
                 var saved_val_1 = txt_f.text
                 conf_gr.setValue("val1", saved_val_1);
                 console.log("current value 1 = " + conf_gr.value("val1") /*+ " " + saved_val_1*/)
             }
         }
        TextSwitch {
            id: txt_sw
            text: "Switch"
            description: "description"
            onCheckedChanged: {
                var saved_val_2 = txt_sw.checked ? "Die" : "Live"
                conf_gr.setValue("val2", saved_val_2);
                console.log("current value 2 = " + conf_gr.value("val2") /*+ " " + saved_val_2*/)
            }
        }

    }
}

