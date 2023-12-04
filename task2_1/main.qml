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
            Layout.fillHeight: true
        }

        MyRect {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        MyRect {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
