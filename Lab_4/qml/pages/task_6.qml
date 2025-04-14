import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page6
    ListModel {
        id: model_list
        ListElement { name: "Сходить в магазин"; date:"20.10.2023";}
        ListElement { name: "Прочитать книгу";date:"21.10.2023";}
        ListElement { name: "Приготовить что-нибудь вкусное"; date:"22.10.2023";}
        ListElement { name: "Посмотреть фильм"; date:"30.10.2023";}
    }
    SilicaListView {
        anchors.fill: parent
        model: model_list
        header: PageHeader { title: "Задачи на неделю" }
        section {
            property: 'date'
            delegate: SectionHeader { text: section }
        }
        delegate: Text { text: name ; color: "pink"}
    }
}
