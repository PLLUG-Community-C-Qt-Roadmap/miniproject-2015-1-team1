import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtMultimedia 5.0
Window {
    id: mainWindow
    visible: true
    width: 600
    height: 600
    Rectangle{
     anchors.fill:parent
     color:"black"
    }

    Video {
        id: video
        width : parent.width
        height : parent.height
        source: "background.avi"
        fillMode: VideoOutput.Stretch
        autoPlay: true
        muted: true
        onStopped: {video.play()}

    }
    Loader {
        id: pageLoader
        anchors.fill: parent
        source: "qrc:/MainScreen.qml"
    }

}
