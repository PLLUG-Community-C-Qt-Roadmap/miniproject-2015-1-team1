import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent
    ColumnLayout {
        anchors.fill: parent
        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            GhostLegend{
                text:"Blinky"
                source:"qrc:/blinky.png"
            }
            GhostLegend{
                text:"Pinky"
                source:"qrc:/pinky.png"
            }
            GhostLegend{
                text:"Inky"
                source:"qrc:/inky.png"
            }
            GhostLegend{
                text:"Clyde"
                source:"qrc:/clyde.png"
            }
        }
        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            RowLayout {
                Repeater{
                    model: 1
                    delegate: logoDelegate
                }
                Text {
                    text: qsTr("200 Pts")
                    color: "white"
                    font.pointSize: 12
                }
            }
            RowLayout {
                Repeater{
                    model:2
                    delegate: logoDelegate
                }
                Text {
                    text: qsTr("400 Pts")
                    color: "white"
                    font.pointSize: 15
                }
            }
            RowLayout {
                Repeater{
                    model:3
                    delegate: logoDelegate
                }
                Text {
                    text: qsTr("800 Pts")
                    color: "white"
                    font.pointSize: 12
                }
            }
            RowLayout {
                Repeater{
                    model:4
                    delegate: logoDelegate
                }
                Text {
                    text: qsTr("1600 Pts")
                    color: "white"
                    font.pointSize: 12
                }
            }
        }
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Item {
                Layout.preferredHeight: point10Txt.height
                Layout.preferredWidth: point10Txt.width + pointSmall.width
                RowLayout {
                    width: point10Txt.width + pointSmall.width
                    Rectangle {
                        id: pointSmall
                        width: 10
                        height: width
                        radius: width / 2.0
                    }

                    TextFont {
                        id: point10Txt
                        text: qsTr("text")
                    }
                }
            }
            Item {
                Layout.preferredWidth: point50Txt.width + pointBig.width
                Layout.preferredHeight: point50Txt.height
                RowLayout {
                    width: point50Txt.width + pointBig.width
                    Rectangle {
                        id: pointBig
                        width: 20
                        height: width
                        radius: width / 2.0
                    }

                    TextFont {
                        id: point50Txt
                        text: qsTr("text")
                    }
                }
            }
        }
        Item{
            Layout.preferredHeight: btnBack.height
            Layout.preferredWidth: btnBack.width
            Layout.alignment: Qt.AlignHCenter
            MenuButton {
                id: btnBack
                height: textHeight
                width: textWidth
                text: "Back"

                onBtnClicked: {
                    pageLoader.source = "qrc:/MainScreen.qml"
                }

            }
        }
    }
    Component {
        id: logoDelegate
        Image {
            source: "qrc:/GhostLogo.png"
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
        }
    }
}

