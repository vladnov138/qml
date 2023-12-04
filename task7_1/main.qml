import QtQuick
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: parent.width
        height: parent.height
        color : "white"

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 10

            TextField {
                id: loginTextField
                placeholderText: "Username"
                implicitWidth: 200
                width: 200
                implicitHeight: 37
                height: 40
                font.pixelSize: 16
                leftPadding: 8
                topPadding: 5
            }

            TextField {
                id: passwordTextField
                placeholderText: "Password"
                implicitWidth: 200
                width: 200
                implicitHeight: 37
                height: 40
                font.pixelSize: 16
                echoMode: TextInput.Password
                leftPadding: 8
                topPadding: 5
            }

            Row {
                Button {
                    text: "Log In"
                    width: 100
                    height: 40
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "lightgray"
                    }
                }

                Button {
                    text: "Clear"
                    width: 100
                    height: 40
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "transparent"
                    }
                    onClicked: {
                        loginTextField.text = ""
                        passwordTextField.text = ""
                    }
                }
            }

        }
    }
}
