import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
   ListModel { id: dataModel }
       anchors.horizontalCenter: parent.horizontalCenter
       SilicaListView {
           width: parent.width; height: parent.height - addButton.height;
           header: PageHeader { title: "Simple List" }
           model: dataModel
           delegate: Rectangle {
               width: parent.width; height: 70; color: "skyblue";
               Text {
                   anchors.centerIn: parent
                   text: model.text + model.index
               }
           }
       }


   Button {
       id: addButton
       anchors.right: parent.right
       anchors.bottom : parent.bottom
       text: "Add item"
       onClicked: dataModel.append({ text: "Item #" })
   }
   Button {
       id: delButton
       anchors.left: parent.left
       anchors.bottom : parent.bottom
       text: "dell item"
       onClicked: dataModel.remove(dataModel.index)
   }
}
