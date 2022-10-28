import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    Button {
        text: "Открыть сложение"
        anchors.bottom: listView.bottom
        anchors.verticalCenter: page.verticalCenter
        anchors.horizontalCenter: page.horizontalCenter
        width: parent.width
        onClicked: pageStack.push(Qt.resolvedUrl("Addition.qml"))
    }
}
