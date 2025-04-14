import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page5

    allowedOrientations: Orientation.All

    DatePicker{
        id: date1
        anchors.verticalCenter: parent.verticalCenter
        daysVisible: true
        weeksVisible: true
        monthYearVisible: true
        // отображения выбранной даты в консоли (обработчик сигнала изменения свойства dateText)
        onDateTextChanged: console.log("Выбрана дата: " + date1.dateText)
    }
}

