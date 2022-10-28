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
// contentHeight: column.height

// Place our content in a Column. The PageHeader is always placed at the top
// of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge



            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 1"
                onClicked: pageStack.push(Qt.resolvedUrl("firstPage.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 2"
                onClicked: pageStack.push(Qt.resolvedUrl("secondPage.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 3"
                onClicked: pageStack.push(Qt.resolvedUrl(".qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 4"
                onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 5"
                onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 6"
                onClicked: pageStack.push(Qt.resolvedUrl("sixthPage.qml"))
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 7"
                onClicked: pageStack.push(Qt.resolvedUrl("seventhPage.qml"))
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 8"
                onClicked: pageStack.push(Qt.resolvedUrl("eighthPage.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 9"
                onClicked: pageStack.push(Qt.resolvedUrl("ninethPage.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задание 10"
                onClicked: pageStack.push(Qt.resolvedUrl("tenthPage.qml"))
            }

        }
    }
}
