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

    ColumnLayout {
        anchors.fill: parent
        anchors.topMargin: 50
        anchors.bottomMargin: 150
        Item{
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumHeight: logoImg.height
            Layout.minimumWidth: logoImg.width
            Image{
                id: logoImg
                source: "qrc:/logo.png"
            }
        }

        ColumnLayout{
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumHeight: parent.height - logoImg.height

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
                onBtnClicked:{
                    pageLoader.source = "qrc:/High Score.qml"
                }
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

