import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: myitem
    signal pageStackCounter(int count)
    Column {
        id: column
        anchors.fill: parent
        anchors.margins: Theme.paddingMedium
        spacing: Theme.paddingMedium
    Button {
        id: backbutton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Назад"
        onClicked: {
            pageStack.pop(pageStackCounter(pageStack.depth))
        }
    }
    Button {
        id: forwardbutton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Вперед"
        onClicked: {
            pageStack.push(Qt.resolvedUrl("PageStack.qml"), pageStackCounter(pageStack.depth))
        }
    }
}
}
