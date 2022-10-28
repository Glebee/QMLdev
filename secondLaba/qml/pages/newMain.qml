import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            Rectangle {
                id: rect1_red
                anchors.top: parent.top
                //anchors.topMargin: 50
                width: column.width/2.5; height: width
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
                anchors.right: column.right
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





        Row {
            anchors.top: parent.top
            anchors.topMargin: 500
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
        Grid {
            anchors.top: parent.top
            anchors.topMargin: 1030
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


        Rectangle {
            anchors.top: parent.top
            anchors.topMargin: 1330
            id: square1
            width: 300; height: width
            color: "white"
            x: 100
            y: 100
            transform: [
                 Scale {yScale: 0.5},
                 Rotation {angle: 135},
                 Translate{x: 300; y: 400}
                    ]
                }

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

        Button {
            text: "Открыть сложение"
            anchors.bottom: listView.bottom
            //anchors.topMargin: 150
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("Addition.qml"))
        }


        }
    }
}
