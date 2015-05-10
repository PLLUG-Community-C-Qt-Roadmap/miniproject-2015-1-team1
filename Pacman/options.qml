import QtQuick 2.4
import QtQuick.Window 2.2

Rectangle {
    anchors.fill: parent
    color: "black"

    Rectangle{
        width: 100
        height: 100
        color: "red"
        MenuButton {

            text: "Back"
            onBtnClicked: {
                pageLoader.source = "qrc:/MainScreen.qml"
            }

        }
    }
}

