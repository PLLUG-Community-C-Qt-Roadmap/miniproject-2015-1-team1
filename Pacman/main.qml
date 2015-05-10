import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtMultimedia 5.0
Window {
    id: mainWindow
    visible: true
    width: 600
    height: 600

    Loader {
        id: pageLoader
        anchors.fill: parent
        source: "qrc:/MainScreen.qml"
    }
}
