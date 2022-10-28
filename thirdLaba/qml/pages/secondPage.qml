import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 1")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("firstPage.qml"))
            }
        }

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        id: column
        TimePicker {
            anchors.horizontalCenter: parent.horizontalCenter
            id: timePicker
            hour: 15
            minute: 26
            onTimeChanged:{
                console.log(timePicker.timeText);
            }
        Label {
            anchors.centerIn: timePicker
            text: timePicker.timeText
            font.pixelSize: Theme.fontSizeExtraLarge
        }
        }
        ComboBox {
            label: ""
            labelMargin: Qt.AlignVCenter
            id:box
            anchors.horizontalCenter: parent.horizontalCenter
            menu: ContextMenu {

                MenuItem {
                    text: "Select1"
                    onClicked: console.log(text);
                }
                MenuItem {
                    text: "Select2"
                    onClicked: console.log(text);
                }
                MenuItem {
                    text: "Select3"
                    onClicked: console.log(text);
                }
                MenuItem {
                    text: "Select4"
                    onClicked: console.log(text);
                }
           }
        }
        Switch {
         anchors.horizontalCenter: parent.horizontalCenter
        id: mute
        icon.source: "image://theme/icon-m-speaker-mute?"
            + (checked ? Theme.highlightColor
            : Theme.primaryColor)
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Звук " + (mute.checked ? "выкл" : "вкл")
        }
        Slider {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            label: "Текущее значение: "+ value;
            maximumValue: 40
            minimumValue: -10
            value: 10
            stepSize: 0.1
            valueText: value
            onValueChanged: console.log(value)
        }


    }
  }
}
