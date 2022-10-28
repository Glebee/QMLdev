import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    Rectangle {
        id: rect1_red
        anchors.top: parent.top
        //anchors.topMargin: 50
        width: page.width/2.5; height: width
        color: "red"
}
    Rectangle {
        id: rect1_green
        anchors.top: rect1_red.verticalCenter
        anchors.left: rect1_red.right

        //anchors.top: parent.top
        //anchors.topMargin: 100
        //y:200
        width: rect1_red.width
        height: width
        color: "green"
}
    Rectangle {
        id: rect1_blue
        anchors.right: page.right
        //anchors.leftMargin: -100
        anchors.top: parent.top
        //anchors.topMargin: -100
        width: rect1_red.width; height: width
        color: "blue"
            Text{
                text: "Квадрат"
                color: "white"
                anchors.centerIn: parent
            }
    }
}
