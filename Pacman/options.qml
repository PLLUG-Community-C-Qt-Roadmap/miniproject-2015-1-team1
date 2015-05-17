import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3

Item {
    anchors.fill: parent
    FontLoader{
        id: pacfont
        source: "qrc:/Font/Font/pacfont.ttf"
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.topMargin: 50
        anchors.bottomMargin: 150
        Item{
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumHeight: logoImg.height
            Layout.minimumWidth: logoImg.width
            Image{
                id: logoImg
                source: "qrc:/Images/Images/logo.png"
            }
        }

        ColumnLayout{
            Layout.alignment: Qt.AlignCenter
            Layout.minimumHeight: parent.height - logoImg.height
            Layout.maximumWidth: parent.width - parent.width/3

            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    text: "Music  "
                }
                Item { Layout.fillWidth: true }
                CheckBox{
                    checked: true
                }
            }
            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    text: "Sounds"
                }
                Item { Layout.fillWidth: true }
                CheckBox{
                    checked: true
                }
            }
            RowLayout{
                TextFont {
                    id: volume
                    Layout.alignment: Qt.AlignLeft
                    text: "Volume"
                }
                Item { Layout.fillWidth: true }
                RowLayout{
                    Slider{
                        width: 300
                        id:slider
                        maximumValue: 100
                        value: 80
                        stepSize: 1

                    }
                    Text{
                        color:"yellow"
                        Layout.alignment: Qt.AlignLeft
                        text: slider.value.toString() + "%"
                        font.pixelSize: 20
                        font.bold: true
                        font.italic: true
                    }
                }
            }

            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    text: "Difficulty"
                }
                Item { Layout.fillWidth: true }
                ComboBox {
                    Layout.alignment: Qt.AlignRight
                    //editable: true
                    model: ListModel {
                        id: model
                        ListElement { text: "Easy"; color: "lightgrey" }
                        ListElement { text: "Medium"; color: "grey" }
                        ListElement { text: "Hard"; color: "grey" }
                    }
                    style: ComboBoxStyle{
                        background: Rectangle{
                            implicitWidth: 120
                            implicitHeight: 25
                            color: "transparent"
                        }
                        textColor: "white"
                        font: pacfont.name
                        label: Item {
                            anchors.fill: parent
                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right: parent.right
                                anchors.rightMargin: 5
                                font.pointSize: 15
                                font.family: pacfont.name
                                color:"yellow"
                                text: control.currentText
                            }
                        }
                    }
                }
            }
            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    text: "Fullscreen"
                }
                Item { Layout.fillWidth: true }
                CheckBox{}
            }

            Item { Layout.fillHeight: true }

            RowLayout{
                MenuButton {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Back"
                    onBtnClicked: {
                        pageLoader.source = "qrc:/MainScreen.qml"
                    }

                }
                Item { Layout.fillWidth: true }
                MenuButton {
                    Layout.alignment: Qt.AlignRight
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Quit"
                    onBtnClicked: {
                        Qt.quit()
                    }
                }


            }
        }
    }

}
