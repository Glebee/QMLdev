import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    Row {
        anchors.top: parent.top
        anchors.verticalCenter: page.verticalCenter
        //spacing: 15
        width: page.width



        Column {
            //spacing: 15
            Rectangle {
                id: rect2_red

                width: page.width / 3; height: width
                color: "red"
            }

            Rectangle{
                width: rect2_red.width; height: rect2_red.height
                color: "pink"
            }
        }

        Rectangle {
            width: rect2_red.width; height: rect2_red.height
            color: "green"
            anchors.horizontalCenter: page.horizontalCenter
        }

        Column {
            anchors.right: page.right
            //spacing: 15
            Rectangle {
                width: rect2_red.width; height: rect2_red.height
                color: "blue"
            }
            Rectangle{
                width: rect2_red.width; height: rect2_red.height
                color: "black"
            }
        }

    }
}
