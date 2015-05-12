import QtQuick 2.4
import QtQuick.Layouts 1.1

RowLayout {
    id: root
    property string text
    property string source
    Image {
        id: blinkyImg
        source: root.source
        Layout.preferredHeight: 40
        Layout.preferredWidth: 40
    }
    TextFont {

        text: root.text
        font.pointSize: 12
    }
}

