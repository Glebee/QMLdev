import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    Rectangle {
        id: square
        width: 100; height: width
        color: "purple"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ParallelAnimation {
        id: parAnim

            PropertyAnimation {
                target: square
                properties: "y"
                to: 780
                duration: 10000
            }

            PropertyAnimation {
                target: square
                property: "width"
                to: 500
                duration: 10000
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: parAnim.running = true
        }
}
