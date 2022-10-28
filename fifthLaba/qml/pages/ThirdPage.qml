import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id: page
    property var dataModel: [
            { text: "White", color: "White", tcolor: "black"},
            { text: "Black", color: "Black", tcolor: "White" },
            { text: "Blue", color: "Blue",tcolor: "red"},
    ]
    SilicaListView {
        header: PageHeader { title: "Задачи" }
        width: parent.width;
        height: parent.height
        model: dataModel
        section {
                    property: "date"
                    criteria: ViewSection.FullString
                    delegate: SectionHeader {
                            text: section
                        }
                    }

        delegate: Item {
             width: parent.width
             height: Theme.itemSizeMedium
             anchors {
                 left: parent.left
                 right: parent.right
                 margins: Theme.paddingLarge
             }
             Rectangle {
                id: cRectangle
                anchors.centerIn: parent
                width: parent.width / 2
                height: parent.height / 2
                color: modelData.color || "white"
                Text {
                    anchors.centerIn: parent
                    text: modelData.text || "enemy"
                    color: modelData.tcolor || "black"
                    font { bold: true; pixelSize: 48 }

                }
             }
     }
     VerticalScrollDecorator { flickable: parent }
}
}
