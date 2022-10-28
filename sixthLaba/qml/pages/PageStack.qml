import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: stpage
    property int num: pageStack.depth
    Page_counter {
        id: pagecounter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 300
        onPageStackCounter: stpage.num = count
    }
    Label {
        id: count_page
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: pagecounter.bottom
        anchors.topMargin: 300
        color: Theme.secondaryHighlightColor
        text: "Глубина стека " + num
    }
}
