import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtMultimedia 5.0

Item {
    anchors.fill: parent
    FontLoader{
        id: pacfont
        source: "qrc:/PACFONT.TTF"
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
    ColumnLayout {
        anchors.fill: parent
        anchors.topMargin: 100
        anchors.bottomMargin: 100
        Item{
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumHeight: logoTxt.height
            Layout.minimumWidth: logoTxt.width
            Text{
                id: logoTxt
                color: "yellow"
                text:"Pacman"
                font.family: "pacfont"
                font.pointSize: 70
            }
        }

        ColumnLayout{
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumHeight: parent.height - logoTxt.height
            MenuButton {
                Layout.alignment: Qt.AlignHCenter
                Layout.minimumHeight: textHeight
                Layout.minimumWidth: textWidth
                text: "New Game"
            }
            MenuButton {
                Layout.alignment: Qt.AlignHCenter
                Layout.minimumHeight: textHeight
                Layout.minimumWidth: textWidth
                text: "Options"
                onBtnClicked:{
                    pageLoader.source = "qrc:/options.qml"
                }
            }
            MenuButton {
                Layout.alignment: Qt.AlignHCenter
                Layout.minimumHeight: textHeight
                Layout.minimumWidth: textWidth
                text: "Legend"
            }
            MenuButton {
                Layout.alignment: Qt.AlignHCenter
                Layout.minimumHeight: textHeight
                Layout.minimumWidth: textWidth
                text: "High Score"
            }
            MenuButton {
                Layout.alignment: Qt.AlignHCenter
                Layout.minimumHeight: textHeight
                Layout.minimumWidth: textWidth
                text: "Quit"
                onBtnClicked: {
                    Qt.quit()
                }
            }

        }

    }
}

