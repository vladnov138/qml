import QtQuick
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int defMargin: 10

        StackView {
            id: stackView
            anchors.fill: parent
            initialItem: pageRed
        }

        MyPage {
            id: pageRed
            backgroundColor: "red"
            btnBackText: "To_Green"
            btnNextText: "To_Yellow"
            onBtnNextClicked: {
                stackView.replace(pageYellow, StackView.PushTransition)
            }
            onBtnBackClicked: {
                stackView.replace(pageGreen, StackView.PopTransition)
            }
        }

        MyPage {
            id: pageYellow
            backgroundColor: "yellow"
            btnBackText: "To_Red"
            btnNextText: "To_Green"
            onBtnNextClicked: {
                stackView.replace(pageGreen, StackView.PushTransition)
            }
            onBtnBackClicked: {
                stackView.replace(pageRed, StackView.PopTransition)
            }
        }

        MyPage {
            id: pageGreen
//            visible: false
            backgroundColor: "green"
            btnBackText: "To_Yellow"
            btnNextText: "To_Red"
            onBtnNextClicked: {
                stackView.replace(pageRed, StackView.PushTransition)
            }
            onBtnBackClicked: {
                stackView.replace(pageYellow, StackView.PopTransition)
            }
        }
}
