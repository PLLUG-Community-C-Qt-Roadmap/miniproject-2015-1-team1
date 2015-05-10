import QtQuick 2.4
import QtQuick.Window 2.2
import QtMultimedia 5.0
Window {
    id: mainWindow
    visible: true
    width: 600
    height: 600
    FontLoader{
        id: pacfont
        source: "qrc:/PACFONT.TTF"
    }

    Video {
        id: video
        width : mainWindow.width
        height : mainWindow.height
        source: "background.avi"
        fillMode: VideoOutput.Stretch
        autoPlay: true
        muted: true
        onStopped: {video.play()}

    }


}
