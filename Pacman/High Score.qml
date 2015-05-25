import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent
    ListModel {
        id: listScore
        ListElement {name: "Player 1"; score: "999"}
        ListElement {name: "Player 2"; score: "998"}
        ListElement {name: "Player 3"; score: "997"}
        ListElement {name: "Player 4"; score: "996"}
        ListElement {name: "Player 5"; score: "995"}
    }
    Component {
        id: scoreDelegate
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 150
            Text {
                text: name;
                font.pointSize: 16
                color: "yellow"
            }
            Text {
                text: score;
                font.bold: true
                font.pixelSize: 20
                color: "yellow"
            }
        }
    }
    ColumnLayout {
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 75
        spacing: 50
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "High Score"
            font.family: "PacFont"
            font.pointSize: 30
            color: "white"
        }
        ListView {
            id:scoreListView
            model: listScore
            delegate: scoreDelegate
            width: parent.width
            height: parent.height
            spacing: 25
        }
    }
    MenuButton {
        x: 270
        y: 500
        text: "Back"
        onBtnClicked: {
            pageLoader.source = "qrc:/MainScreen.qml"
        }
    }
}
