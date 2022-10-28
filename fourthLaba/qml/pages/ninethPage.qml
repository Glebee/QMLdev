import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    SilicaFlickable {

         anchors.fill: parent
         PullDownMenu {
             MenuItem {
                 text: "Option1"
                 onClicked: console.log(qsTr("Option1-1 clicked"))
             }
             MenuItem {
                 text: "Option2"
                 onClicked: console.log(qsTr("Option1-2 clicked"))
             }
             MenuItem {
                 text: "Option3"
                 onClicked: console.log(qsTr("Option1-3 clicked"))
             }
         }
         PushUpMenu {
             backgroundColor: "red"
             MenuItem {
                text: "Option1"
                onClicked: console.log(qsTr("Option2-1 clicked"))
             }
             MenuItem {
                 text: "Option2"
                 onClicked: console.log(qsTr("Option2-2 clicked"))
             }
             MenuItem {
                 text: "Option3"
                 onClicked: console.log(qsTr("Option2-3 clicked"))
             }
         }

    }
}
