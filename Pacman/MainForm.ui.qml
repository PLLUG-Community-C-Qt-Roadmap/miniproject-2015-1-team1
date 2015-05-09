import QtQuick 2.4

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360
    color: "green"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }
}
