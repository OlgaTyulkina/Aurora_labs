import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
    Item{
    Video {
        id: video
        width : 500
        height : 300
        source: "totoro.mp4"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                video.play()
            }
        }

        focus: true
        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        Keys.onLeftPressed: video.position = video.position - 5000
        Keys.onRightPressed: video.position = video.position + 5000
    }
    }
}
