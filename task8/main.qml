import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        currentIndex: pageIndicator.currentIndex
        anchors.fill: parent

        MyPage {
            background: Rectangle {
                color: 'red'
            }
        }

        MyPage {
            background: Rectangle {
                color: 'yellow'
            }
        }

        MyPage {
            background: Rectangle {
                color: 'green'
            }
        }
    }

    PageIndicator {
        id: pageIndicator
        interactive: true
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
