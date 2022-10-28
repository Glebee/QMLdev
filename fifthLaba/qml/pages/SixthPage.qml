import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
import Nemo.Configuration 1.0

Page {
    id: page

    BD { id: dao }
         SilicaListView {
             anchors.fill: parent
           // anchors.horizontalCenter: parent.horizontalCenter
            header: PageHeader { title: "Задачи" }
            model: ListModel { id: spisokListModel }
            delegate: ListItem {
                Label {
                    text: target + id
                }
                menu: ContextMenu {
                     MenuItem {
                         id: men
                         text: qsTr("Delete")
                         onClicked: {
                             console.log(id)
                             dao.deleteSpisok(id)
                             selectSpisok();
                         }
                     }

                 }
            }
            VerticalScrollDecorator { flickable: parent }
        }
        Button {
             id: addButton
             anchors.right: parent.right
             anchors.bottom : parent.bottom
             text: "Add item"
             onClicked: {
                 dao.insertSpisok("Заметка");
                 selectSpisok();
             }
        }
        Button {
            id: delButton
            anchors.left: parent.left
            anchors.bottom : parent.bottom
            text: "delete item"
            onClicked:
            {
                console.log(spisokListModel.get(spisokListModel.count-1).id)
                dao.deleteSpisok(spisokListModel.get(spisokListModel.count-1).id)

                selectSpisok();
            }
        }
        function selectSpisok() {
            spisokListModel.clear();

            dao.retrieveSpisok(function(spisok) {

                for (var i = 0; i < spisok.length; i++) {
                    var spis = spisok.item(i);
                    spisokListModel.append({id: spis.id, target: spis.target});
                }
            });
        }
        Component.onCompleted: selectSpisok()
}
