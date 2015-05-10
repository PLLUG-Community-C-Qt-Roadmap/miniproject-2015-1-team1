import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 200
    height: 200
    FontLoader{
        id: pacfont
        source: "qrc:/PACFONT.TTF"
    }
    Rectangle{
        Text{
            font.family: "pacfont"
           text: "ss"
        }
    }
}
