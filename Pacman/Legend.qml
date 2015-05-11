import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.3



Rectangle {
    anchors.fill: parent
    color: "transparent"

    Grid {
        anchors.fill: parent
        columns: 2
        spacing: 5
        Rectangle {
            color: "red"
            width: 150
            height: 50
            Text {
                anchors.fill: parent
                text: "Hello World1"
                font.family: "Times New Roman"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 13
                color: "green"
            }
        }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
        Rectangle { color: "red"; width: 150; height: 50 }
    }


        MenuButton {

            text: "Back"

            onBtnClicked: {
                pageLoader.source = "qrc:/MainScreen.qml"
            }

        }

}
