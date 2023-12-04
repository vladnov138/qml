import QtQuick
import QtQuick.Controls 2.15
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

            Text {
                id: back

                text: "🔙"
                font.pixelSize: 30
                font.bold: true
                opacity:0;
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        rowBtns.state = ""
                    }
                }
            }
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
            id: rowBtns
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            state: ""
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
                        if (rowBtns.state !== "btn1")
                            rowBtns.state = "btn1";
                        else
                            rowBtns.state = "";
                    }
                }
            }

            states: [
                State {
                    name: "btn1"
                    PropertyChanges { target: btn1; color: "cyan" }
                    PropertyChanges { target: btn2; color: "lightblue"; opacity: 0.4 }
                    PropertyChanges { target: btn3; color: "lightblue"; opacity: 0.4 }
                    PropertyChanges { target: header; compText: "Header 1" }
                    PropertyChanges { target: content; compText: "Item 1 content" }
                    PropertyChanges { target: back; opacity: 1 }
                },
                State {
                    name: "btn2"
                    PropertyChanges { target: btn1; color: "lightblue"; opacity:0.4 }
                    PropertyChanges { target: btn2; color: "cyan" }
                    PropertyChanges { target: btn3; color: "lightblue"; opacity:0.4 }
                    PropertyChanges { target: header; compText: "Header 2";  }
                    PropertyChanges { target: content; compText: "Item 2 content" }
                    PropertyChanges { target: back; opacity: 1}
                },
                State {
                    name: "btn3"
                    PropertyChanges { target: btn1; color: "lightblue"; opacity:0.4 }
                    PropertyChanges { target: btn2; color: "lightblue"; opacity:0.4 }
                    PropertyChanges { target: btn3; color: "cyan" }
                    PropertyChanges { target: header; compText: "Header 3" }
                    PropertyChanges { target: content; compText: "Item 3 content" }
                    PropertyChanges { target: back; opacity: 1}
                }
            ]

            transitions: [
                Transition {
                    ColorAnimation { properties: "color"; duration: 500 }
                }
            ]

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
                        if (rowBtns.state !== "btn2")
                            rowBtns.state = "btn2";
                        else
                            rowBtns.state = "";
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
                        if (rowBtns.state !== "btn3")
                            rowBtns.state = "btn3";
                        else
                            rowBtns.state = "";
                    }
                }
            }
        }
    }
}
