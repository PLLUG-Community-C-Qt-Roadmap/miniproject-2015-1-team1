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
                frameX: 193
                frameY: 65
            }
            GhostLegend{
                text:"Pinky"
                frameX: 193
                frameY: 98
            }
            GhostLegend{
                text:"Inky"
                frameX: 193
                frameY: 131
            }
            GhostLegend{
                text:"Clyde"
                frameX: 193
                frameY: 164
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
            spacing: 10
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

                    Text {
                        id: point10Txt
                        color: "white"
                        font.pointSize: 20
                        text: qsTr("10 Pts")
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

                    Text {
                        id: point50Txt
                        color: "white"
                        font.pointSize: 20
                        text: qsTr("50 Pts")
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
//        Image {
//            source: "qrc:/Images/Images/sprite.png"
//            Layout.preferredHeight: 40
//            Layout.preferredWidth: 40
//        }
        AnimatedSprite{

            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            source: "qrc:/Images/Images/sprite.png"
            frameX: 129
            frameY: 35
            frameHeight:28
            frameWidth:32
            running: true
            frameCount:2
            frameDuration: 200
            interpolate: false

        }
    }
}

