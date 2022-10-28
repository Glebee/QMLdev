import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    id: dialog
    property int sum: 0
    Column {
        anchors.fill: parent
        DialogHeader {
            title: "Сумма чисел"
        }
        Row {
            spacing: 10
            TextField {
                id: first
                label: "Первое число"
                placeholderText: label
                width: dialog.width / 2 - 5
                font.pixelSize: 45
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: second
                label: "Второе число"
                placeholderText: label
                width: first.width
                font.pixelSize: first.font.pixelSize
                inputMethodHints: Qt.ImhDigitsOnly
            }
        }

        Button {
            text: "Сложить"
            width: dialog.width
            backgroundColor: "green"
            onClicked: console.log(page.sum = (parseInt(first.text)+parseInt(second.text)))

        }
    }
}

