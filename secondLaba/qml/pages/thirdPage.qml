import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    Grid {
        anchors.top: parent.top
        anchors.verticalCenter: page.verticalCenter
        //spacing: 15
        columns: 3
        flow: Grid.TopToBottom
        width: page.width

        Rectangle {
            id: rect3_red
            width: page.width / 3; height: width
            color: "red"
        }
        Rectangle{
            width: rect3_red.width; height: rect3_red.height
            color: "pink"
        }
        Rectangle {
            width: rect3_red.width; height: rect3_red.height
            color: "green"
        }
        Rectangle {
            width: rect3_red.width; height: rect3_red.height
            color: "transparent"
        }
        Rectangle {
            width: rect3_red.width; height: rect3_red.height
            color: "blue"
        }
        Rectangle{
            width: rect3_red.width; height: rect3_red.height
            color: "black"
        }

    }

}
