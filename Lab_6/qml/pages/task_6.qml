import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page6
    property int click: 0

    Timer{
        id:tim
        running: false
        interval: 1
        repeat: true
        onTriggered: {
            clock.milisec++;
            if(clock.milisec == 1000){
                clock.sec++;
                clock.milisec = 0;
            }
            if(clock.sec == 60){
                clock.min++;
                clock.sec = 0;
            }
            if(clock.min == 60){
                clock.hours++;
                clock.min = 0;
            }
        }
    }

    StopWatch{
        id: clock
        x: 220
        y: 100
        txt: hours +":"+ min +":"+ sec
    }

    Button{
        id: butt
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: parent
        text: "Запустить/остановить секундомер"
        onClicked: {
            click++;
            if(click % 2 == 1){
                console.log("секундомер запущен")
                tim.running = true
            }

            if(click % 2 == 0){
                console.log("секундомер остановлен")
                tim.running = false
            }

        }
    }
    Label{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: butt.bottom
        text: "Текущее время секундомера:\n" +clock.hours+ " часов " +clock.min+ " минут "
              +clock.sec+ " секунд "
    }
}
