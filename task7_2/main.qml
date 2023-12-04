import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent
        spacing: 10

        Rectangle {
            implicitWidth: parent.width
            height: 10

            Text {
                anchors.centerIn: parent
                text: "Enter your password:"
                font.pixelSize: 16
            }
        }

        Rectangle {
            color: "white"
            implicitWidth: parent.width
            height: 50

            Text {
                id : passwordTextField
                text : passwordTextField.text
                color: "white"
            }

            Row {
                spacing: 6
                anchors.centerIn: parent

                Repeater {
                    model: 4
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignTop
                        color: index < passwordTextField.text.length ? "black" : "light grey"
                    }
                }
            }
        }

        GridLayout {
            rows: 4
            columns: 3
            implicitWidth: parent.width

            Button {
                text: "1"
                onClicked: passwordTextField.text += "1"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "2"
                onClicked: passwordTextField.text += "2"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "3"
                onClicked: passwordTextField.text += "3"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "4"
                onClicked: passwordTextField.text += "4"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "5"
                onClicked: passwordTextField.text += "5"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "6"
                onClicked: passwordTextField.text += "6"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "7"
                onClicked: passwordTextField.text += "7"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "8"
                onClicked: passwordTextField.text += "8"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "9"
                onClicked: passwordTextField.text += "9"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: ""
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "0"
                onClicked: passwordTextField.text += "0"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "Clear"
                onClicked: passwordTextField.text = ""
                implicitWidth: 100
                implicitHeight: 50
            }
        }

        Button {
            text: "Log In"
            implicitWidth: 100
            implicitHeight: 50

        }
    }
}
