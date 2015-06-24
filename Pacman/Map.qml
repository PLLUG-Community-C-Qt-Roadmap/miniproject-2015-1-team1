import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    id: root
    width: 600
    height: 600
    visible: true

    Rectangle{
        id: background
        color: "black"
        anchors.fill: parent

    }

    property int playerIndex: 0
    property real playerRow: 0
    property real playerColumn: 0
    property int pacmanway:0

    Item {
        id: content
        anchors.fill: parent
        focus: true

        Repeater {
            id: repeater
            model: mapModel
            delegate: objectDelegate

        }
        Keys.onUpPressed: {
            mapModel.moveObjectUp(playerIndex, playerRow - 1)
            pacmanway = 3
        }
        Keys.onDownPressed: {
            mapModel.moveObjectDown(playerIndex, playerRow + 1)
            pacmanway = 1
        }
        Keys.onLeftPressed: {

            mapModel.moveObjectLeft(playerIndex, playerColumn - 1)
            pacmanway = 2
        }
        Keys.onRightPressed: {

            mapModel.moveObjectRight(playerIndex, playerColumn + 1)
            pacmanway = 0
        }
    }
    function chooseX(typeRole)
    {
        switch(typeRole)
        {
        case 0 :
        case 1 : return 32
        case 2 :
        case 3 :
        case 4 :
        case 5 :
        case 6 :
        case 7 :
        case 8 : return 0
        default: return -1
        }
    }

    function chooseY(typeRole)
    {
        switch(typeRole)
        {
        case 1 :
        case 2 : return 0
        case 0:
        case 3: return 32
        case 4:
            switch(pacmanway)
            {
                case 0: return 32
                case 1: return 0
                case 2: return 64
                case 3: return 96
            }
            break;
        case 5: return 96
        case 6: return 128
        case 7: return 160
        case 8: return 64

        default: return -1
        }
    }

    Component {
        id: objectDelegate
        AnimatedSprite {
            source: typeRole < 4 ? "qrc:/Images/Images/MapSprite.png" : typeRole === 4 ? "qrc:/Images/Images/PacmanMoveSprite.png" : "qrc:/Images/Images/sprite.png"
            x: xRole
            y: yRole
            width: widthRole
            height: heigthRole

            frameX:chooseX(typeRole)
            frameY:chooseY(typeRole)

            frameHeight:32
            frameWidth:32
            running: true
            frameCount: typeRole < 4 ? 1 : typeRole === 4 ? 4 : 8
            frameDuration: typeRole === 4 ? 50 : 200
            interpolate: false
            onXChanged: {
                if (typeRole === 4) {
                    playerColumn = x / widthRole
                }
            }
            onYChanged: {
                if (typeRole === 4) {
                    playerRow = y / heigthRole
                }
            }
            z: typeRole === 4 ? 100 : 0
        }

    }
}
