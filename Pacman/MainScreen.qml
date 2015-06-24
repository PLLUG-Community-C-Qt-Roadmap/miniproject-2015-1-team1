import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtMultimedia 5.0

Item {

    anchors.fill: parent
    FontLoader{
        id: pacfont
        source: "qrc:/Font/Font/pacfont.ttf"
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
                source: "qrc:/Images/Images/logo.png"
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
                onBtnClicked:{
                    pageLoader.source ="qrc:/newGame.qml"
                }
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
                onBtnClicked:{
                    pageLoader.source = "qrc:/Legend.qml"
                }

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

