import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
 SilicaListView {
     anchors.fill: parent
     model: 10
     delegate: ListItem {
         Label {
             id: label
             text: qsTr("Item") + (model.index + 1)
             anchors.centerIn: parent
         }
         menu: ContextMenu {
             MenuItem {
                 id: men
                 text: qsTr("Toggle bold font")
                 onClicked: {
                     label.font.bold = !label.font.bold;
                     console.log("Toggle bold font"+(model.index+1));
                 }
             }
             MenuItem {
                 id: men2
                 text: qsTr("choise1")
                 onClicked: {
                     label.font.bold = !label.font.bold;
                     console.log("choise1"+(model.index+1));
                 }
             }
             MenuItem {
                 id: men3
                 text: qsTr("choise2")
                 onClicked: {
                     label.font.bold = !label.font.bold;
                     console.log("choise2"+(model.index+1));
                 }
             }
             MenuItem {
                 id: men4
                 text: qsTr("choise3")
                 onClicked: {
                     label.font.bold = !label.font.bold;
                     console.log("choise3"+(model.index+1));
                 }
             }
         }
     }
     }
}
