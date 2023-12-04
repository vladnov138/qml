import QtQuick
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        spacing: 5

        MyRect {
            id: header
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            compColor: "#7375D8"
            compText: "Header"
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            MyRect {
                id: content
                compWidth: parent.width * 0.9
                compHeight: parent.height
                anchors.centerIn: parent
                color: "#FFF"
                compText: "Content"
            }
        }

        RowLayout {
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            spacing: 5

            MyRect {
                id: btn1
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                compColor: "#7375D8"
                compText: "1"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.compText = "Header 1"
                        content.compText = "Item 1 content"
                        btn2.opacity = 0.5
                        btn3.opacity = 0.5
                        btn1.color = "lightcyan"
                        btn2.color = "lightblue"
                        btn3.color = "lightblue"
                    }
                }
            }

            MyRect {
                id: btn2
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                compColor: "#7375D8"
                compText: "2"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.compText = "Header 2"
                        content.compText = "Item 2 content"
                        btn1.opacity = 0.5
                        btn3.opacity = 0.5
                        btn1.color = "lightblue"
                        btn2.color = "lightcyan"
                        btn3.color = "lightblue"
                    }
                }
            }

            MyRect {
                id: btn3
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                compColor: "#7375D8"
                compText: "3"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.compText = "Header 3"
                        content.compText = "Item 3 content"
                        btn1.opacity = 0.5
                        btn2.opacity = 0.5
                        btn1.color = "lightblue"
                        btn2.color = "lightblue"
                        btn3.color = "lightcyan"
                    }
                }
            }
        }
    }
}
