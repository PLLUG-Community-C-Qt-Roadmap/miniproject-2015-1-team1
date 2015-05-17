import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent
    ColumnLayout {
        anchors.fill: parent
        Layout.alignment: Qt.AlignHCenter

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "High Score"
            font.family: "PacFont"
            font.pointSize: 25
            color: "white"
        }

        Grid {
            Layout.alignment: Qt.AlignHCenter
            columns: 2
            spacing: 5
            Rectangle {
                color: "red"
                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Player Name"
                    font.family: "PacFont"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    color: "black"
                }
            }
            Rectangle {
                color: "red"
                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Score"
                    font.family: "PacFont"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    color: "black"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Player 1"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "1000"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Player 2"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "999"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Player 3"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "998"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Player 4"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "997"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "Player 5"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
            Item {

                width: 200
                height: 50
                Text {
                    anchors.fill: parent
                    text: "996"
                    font.family: "Times New Roman"
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                    color: "red"
                }
            }
        }

        MenuButton {
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumHeight: textHeight
            Layout.minimumWidth: textWidth
            text: "Back"

            onBtnClicked: {
                pageLoader.source = "qrc:/MainScreen.qml"
            }
        }

    }
}
