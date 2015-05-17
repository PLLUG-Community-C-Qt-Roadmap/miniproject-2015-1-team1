import QtQuick 2.4
import QtQuick.Layouts 1.1

RowLayout {
    id: root
    property string text
    property int frameX
    property int frameY

    AnimatedSprite{

        id: animImg
        source: "qrc:/Images/Images/sprite.png"
        Layout.preferredHeight: 40
        Layout.preferredWidth: 40
        frameX: root.frameX
        frameY: root.frameY
        frameHeight:28
        frameWidth:32
        running: true
        frameCount:2
        frameDuration: 200
        interpolate: false



    }
    TextFont {

        text: root.text
        font.pointSize: 12
    }
}

