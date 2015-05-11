import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3

Item {
    anchors.fill: parent
    FontLoader{
        id: pacfont
        source: "qrc:/PACFONT.TTF"
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
                source: "qrc:/logo.png"
            }
        }

        ColumnLayout{
            Layout.alignment: Qt.AlignCenter
            Layout.minimumHeight: parent.height - logoImg.height
            Layout.maximumWidth: parent.width - parent.width/3

            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
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
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
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
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
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
                    TextFont{
                        Layout.alignment: Qt.AlignLeft
                        Layout.minimumHeight: textHeight
                        Layout.minimumWidth: textWidth
                        text: "Non%" //slider.value.toString() + "%"

                    }
                }
            }
            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Difficulty"
                }
                Item { Layout.fillWidth: true }
                ComboBox {
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
                        font: pacfont.name
                        textColor: "white"
                    }
                }
            }
            RowLayout{
                TextFont {
                    Layout.alignment: Qt.AlignLeft
                    Layout.minimumHeight: textHeight
                    Layout.minimumWidth: textWidth
                    text: "Fullscreen mode"
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
