import QtQuick

Rectangle {
    id: compRect
    property alias compColor: compRect.color
    property alias compText: compText.text
    property alias compBorderColor: compRect.border.color
    property alias compWidth: compRect.width
    property alias compHeight: compRect.height

    width: parent.width
    height: parent.height / 10
    color: "lightgrey"
    border.color: "#cbcbcb"

    Text {
        id: compText
        text: "Content"
        font {
            pointSize: 12
            weight: Font.Bold
        }
        anchors.centerIn: parent
    }
}
