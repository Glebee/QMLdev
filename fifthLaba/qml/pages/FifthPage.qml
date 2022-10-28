import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    // loadNews()
    XmlListModel {
        id: xmlListModel
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"; }
        XmlRole { name: "Value"; query: "Value/string()"; }
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Money" }
        model: xmlListModel
        delegate: Column {
            x: 10; width: parent.width - 2 * x
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                text: Name
            }
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                text: Value
            }
        }
        VerticalScrollDecorator { flickable: parent }
    }
    Component.onCompleted: {
        var xhr = new XMLHttpRequest();

        xhr.open('GET', 'https://www.cbr-xml-daily.ru/daily_utf8.xml', true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlListModel.xml = xhr.responseText;
            }
        }
        xhr.send();
    }
}
