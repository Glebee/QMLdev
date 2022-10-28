import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property int count1
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("secondPage.qml"))
            }
        }
        contentHeight: column.height
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            TextField {
                id: nameField
                width: parent.width/2
                anchors.horizontalCenter:parent.horizontalCenter
                placeholderText: "Введите число"
                inputMethodHints : Qt.ImhFormattedNumbersOnly
                text: "0"
                Keys.onPressed: {
                    text = Number(text);
                    if (isNaN(text)) {
                        console.log("wrong type!")
                    }
                }

                label: "Только число"
            }
            Button{
                id: b1
                anchors.horizontalCenter:parent.horizontalCenter
                color: "White"
                highlightColor: "red"
                highlightBackgroundColor: "red"
                text: "Кнопка"
                onClicked:{
                    console.log("Кнопка нажата")
                    b1.color  = "red"
                }
           }
            Button{
                id: b2
                anchors.horizontalCenter:parent.horizontalCenter
                color: "Green"
                highlightColor: "White"
                highlightBackgroundColor: "Blue"
                text: "Кнопка"
                Label
                {
                    id: lab2
                    anchors.top: b2.bottom
                    anchors.horizontalCenter:parent.horizontalCenter
                    text: b2.pressed ? "Нажата" : "Отпущена" //"Отпущена"
                }
           }
            ValueButton {
                label: "Cчетчик"
                description: "Количество нажатий"
                value: "0"
                anchors.horizontalCenter:parent.horizontalCenter
                onClicked:{
                    count1 = count1 +1;
                    value = count1;
            }
            }
            DatePicker {
                id: datePicker

                delegate: MouseArea {
                    width: datePicker.cellWidth
                    height: datePicker.cellHeight

                    onClicked:{
                        datePicker.date = new Date(year, month-1, day, 12, 0, 0);
                        console.log(datePicker.dateText);
                    }   // set the selected date

                    Label {
                        anchors.centerIn: parent
                        text: day
                        color: "purple"
                        font.pixelSize: month === primaryMonth ? Theme.fontSizeMedium : Theme.fontSizeExtraSmall
                    }
                }
            }


            VerticalScrollDecorator {}
        }
    }
}
