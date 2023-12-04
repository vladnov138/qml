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
            compColor: "#7375D8"
            compText: "Header"
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            MyRect {
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
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                compColor: "#7375D8"
                compText: "1"
            }

            MyRect {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                compColor: "#7375D8"
                compText: "2"
            }

            MyRect {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignBottom
                compColor: "#7375D8"
                compText: "3"
            }
        }
    }
}
