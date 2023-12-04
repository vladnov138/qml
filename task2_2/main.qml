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
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            compColor: "lightgray"
            compText: "Header"
            border.width: 2
            compBorderColor: "gray"
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            MyRect {
                compWidth: parent.width * 0.9
                compHeight: parent.height
                anchors.centerIn: parent
                border.width: 2
                compBorderColor: "gray"
                color: "#FFF"
                compText: "Content"
            }
        }

        RowLayout {
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            spacing: 1

            MyRect {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                border.width: 2
                compBorderColor: "gray"
                compText: "5"
            }

            MyRect {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                border.width: 2
                compBorderColor: "gray"
                compText: "2"
            }

            MyRect {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                border.width: 2
                compBorderColor: "gray"
                compText: "3"
            }
        }
    }
}
