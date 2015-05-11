import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3

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
            Layout.alignment: Qt.AlignCenter
            Layout.minimumHeight: parent.height - logoImg.height
            Layout.maximumWidth: parent.width - parent.width/3

            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Enter your name : "
                }
                Item { Layout.fillWidth: true }
                TextEdit{
                    font: pacfont.name
                    text: "PackPlayer"
                    color: "white"
                    focus: true
                }
            }

            Item { Layout.fillHeight: true }
            RowLayout{
                MenuButton {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Back"
                    onBtnClicked: {
                        pageLoader.source = "qrc:/MainScreen.qml"
                    }
                }

                Item { Layout.fillWidth: true }
                MenuButton {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Okey"
                    }
                }
            }
        }
    }

