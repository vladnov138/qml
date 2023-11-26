import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: body
        width: 200
        height: 250
        anchors.centerIn: parent
        color: "medium sea green"

        Hand {
            id: hand1
            width: 30
            anchors.right: parent.left
            anchors.rightMargin: 10
        }

        Hand {
            id: hand2
            width: 30
            anchors.left: parent.right
            anchors.leftMargin: 10
        }

        Leg {
            id: leg1
            width: 30
            height: 80
            anchors.top: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 30
        }

        Leg {
            id: leg2
            width: 30
            height: 80
            anchors.top: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: 30
        }

        Rectangle {
            id: head
            width: parent.width
            height: 60
            anchors.bottom: parent.top
            radius: width / 2
            color: "medium sea green"

            Rectangle {
                id: line
                width: parent.width
                height: 20
                anchors.bottom: parent.bottom
                color: "white"
            }
        }
    }
}
