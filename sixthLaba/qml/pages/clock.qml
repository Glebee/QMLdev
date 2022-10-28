import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: page
    property string svetofor:"green";
    property bool blin: true;
    property int timeh:0;
    property int timem:0;
    property int times:0;
    y: 200
    Timer {
        id:tim
        interval: 1000; running: true; repeat: true
        onTriggered: {
            times++;
            if(times==60)
            {
                timem++;
                times=0;
                if(timem==60)
                {
                    timeh++;
                    timem=0;
                }
            }
            lb1.text = timeh;
            lb2.text = timem;
            lb3.text = times;
        }
    }
        Item {
            id: row
            anchors.fill: parent
            Row{
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: page.width
                height: greeen.height
                Rectangle {
                    id:  greeen
                    width: 100
                    height: 100
                    x: 200
                    color:"green"
                    border.color: "black"
                    border.width: 5
                    radius: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: tim.running = !tim.running
                    }
                    Label{
                        id: lb1
                        text:"0"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                }
                Rectangle {
                    id:yelloow
                    width: 100
                    height: 100
                    color: "green"
                    border.color: "black"
                    border.width: 5
                    radius: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: tim.running = !tim.running
                    }
                    Label{
                        id: lb2
                        text:"0"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    id:reed
                    width: 100
                    height: 100
                    color: "green"
                    border.color: "black"
                    border.width: 5
                    radius: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: tim.running = !tim.running
                    }
                    Label{
                        id: lb3
                        text:"0"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }



        }
}
