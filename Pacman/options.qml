import QtQuick 2.4
import QtQuick.Window 2.2

Rectangle {
    anchors.fill: parent
    color: "transparent"


        MenuButton {

            text: "Back"
            onBtnClicked: {
                pageLoader.source = "qrc:/MainScreen.qml"
            }

        }

}

