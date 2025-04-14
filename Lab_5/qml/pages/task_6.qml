import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    id: page6
    PageHeader {id: header ; title: "Data Base"}
    property var db

    Item{
        Component.onCompleted: {
            db = LocalStorage.openDatabaseSync("Notes","1.0"/*,"DataBase Notes",100000*/)
            db.transaction(function(tx) {
                        tx.executeSql("CREATE TABLE IF NOT EXISTS Notes
                                       (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                        txt_note TEXT)");
                    })
            update_notes_list()
        }
    }
    Column{
        id:col
        spacing: 50
        y: 150
        width: parent.width
        Button{
            id:butt
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить заметку"
            onClicked: {
               //console.log("работает")
               add_note(txt.text)
               update_notes_list()
            }
        }
        TextField{
            id:txt
            width: parent.width
            color: "white"
            placeholderText: "введите текст заметки"
        }
        SilicaListView{
            id:notes_list
            model: ListModel{id: list}
            anchors.top: col.bottom
            //anchors.topMargin: 200
            height: 1000
            orientation:  Qt.Vertical
            spacing: 10
            delegate: Rectangle{
                width: page6.width
                height: 80
                border.width: 2
                color: "transparent"
                border.color: "skyblue"
                Text{
                    text: note
                    color: "skyblue"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        delete_note(model.id)
                        update_notes_list()
                    }
                }
            }
            VerticalScrollDecorator{flickable: notes_list}
        }
    }
    function get_notes(callback) {
        db.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM Notes;");
            callback(result.rows);
        });
    }
    function add_note(txt_note) {
        db.transaction(function(tx) {
           tx.executeSql("INSERT INTO Notes (txt_note) VALUES(?);", [txt_note]);
        });
        console.log("Добавлена заметка: " + txt_note)
    }
    function update_notes_list() {
        list.clear();
        get_notes(function(notes) {
            for (var i = 0; i < notes.length; i++) {
                var note = notes.item(i);
                list.append({ id: note.id,/*checked:"",*/ note: note.txt_note });
            }
        });
    }
    function delete_note(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM Notes WHERE id = ?;", [id]);
        });
    }
}

