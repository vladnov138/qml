import QtQuick
import QtQuick.Controls 2.5

Page {
    id: page

    property alias backgroundColor: bg.color
    property alias btnBackText: btnBack.text
    property alias btnNextText: btnNext.text

    signal btnBackClicked()
    signal btnNextClicked()

    background: Rectangle {
        id: bg
    }

    Button {
        id: btnBack
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin

        onClicked: {
            page.btnBackClicked();
        }
    }

    Button {
        id: btnNext
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            page.btnNextClicked();
        }
    }
}

