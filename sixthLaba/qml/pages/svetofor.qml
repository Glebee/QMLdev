import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property string svetofor:"green";
    property bool blin: true;
    property int time:6 ;
    Timer {
        interval: 1000; running: true; repeat: true
        onTriggered: {
            if(greeen.state=="def"&&time!=0&&svetofor=="green"){
                time = time -1;
                parr.running=true;

                console.log(time);
            }
            if(time == 0&&greeen.state=="def"&&svetofor=="green"){
                greeen.state = "blink";
            }
            if(time == 0){
                time = 6;
            }
            if(time!=0&&greeen.state=="blink"&&svetofor=="green"){
                if(blin==true){
                    greeen.color = "defualt";
                }
                else{
                    greeen.color = "green";
                }
                blin = !blin;
                time = time-1;
                console.log(time);
            }
            if(time==0&&greeen.state=="blink"&&svetofor=="green"){
                blin==true;
                parr.running=false;
                greeen.state = "off";
                svetofor = "yellow"
            }
            if(time == 0){
                time = 6;
            }
//----------------------------------------------------------------------------------
            if(yelloow.state=="off"&&time>1&&svetofor=="yellow"){

                yelloow.state ="def";
                console.log(time);
            }
            if(yelloow.state=="def"&&time>1&&svetofor=="yellow"){
                time = time-1;
                console.log(time);
            }
            if(yelloow.state=="def"&&time<=1&&svetofor=="yellow")
            {
                time = 6;
                yelloow.state = "off";
                svetofor = "red";
                console.log(time);
            }
            if(time == 0){
                time = 6;
                console.log(time);
            }
//----------------------------------------------------------------------------------
            if(reed.state=="off"&&time!=0&&svetofor=="red"){
                reed.state="def";
                console.log(time);
            }
            if(reed.state=="def"&&time!=0&&svetofor=="red"){
                time = time -1;
                console.log(time);
            }
            if(reed.state=="def"&&time==0&&svetofor=="red")
            {
                time = 6;
                reed.state = "redYellow";
                yelloow.state="def";
                svetofor = "redYellow";
                console.log(time);
            }
//---------------------------------------------------------------------------------
            if(reed.state=="redYellow"&&time>=1&&svetofor=="redYellow"){
                time = time -1;
                console.log(time);
            }
            if(reed.state=="redYellow"&&time<1&&svetofor=="redYellow"){
                time = 6;
                svetofor = "green";
                yelloow.state = "off";
                reed.state = "off";
                greeen.state = "def";
                console.log(time);
            }
            if(time == 0){
                time = 6;
                console.log(time);
            }
        }
    }
    allowedOrientations: Orientation.All
        Column {
            id: column
            anchors.verticalCenter: parent.verticalCenter
            width: page.width
            spacing: Theme.paddingLarge
            Rectangle {
                id:  greeen
                anchors.horizontalCenter: parent.horizontalCenter
                width: 100
                height: 100
                color: "green"
                border.color: "black"
                border.width: 5
                radius: 100

                state: "def"
                    states: [
                        State {
                            name: "def"
                            PropertyChanges {
                                target: greeen
                                color:"green"
                            }
                            StateChangeScript {
                                name: "warningScript"
                                script: {

                                }
                                }

                        },

                        State {
                            name: "blink"
                            PropertyChanges {
                                target: greeen;

                            }
                        },
                        State {
                            name: "off"
                            PropertyChanges {
                                target: greeen;
                                color:"black"
                            }
                        }
                    ]
            }
            Rectangle {
                id:yelloow
                anchors.horizontalCenter: parent.horizontalCenter
                width: 100
                height: 100
                color: "yellow"
                border.color: "black"
                border.width: 5
                radius: 100
                state: "off"
                    states: [
                        State {
                            name: "def"
                            PropertyChanges {
                                target: yelloow
                                color:"yellow"
                            }
                        },
                        State {
                            name: "off"
                            PropertyChanges {
                                target: yelloow;
                                color:"black"
                            }
                        }
                    ]
            }
            Rectangle {
                id:reed
                anchors.horizontalCenter: parent.horizontalCenter
                width: 100
                height: 100
                color: "red"
                border.color: "black"
                border.width: 5
                radius: 100
                state: "off"
                    states: [
                        State {
                            name: "def"
                            PropertyChanges {
                                target: reed
                                color:"red"
                            }
                        },
                        State {
                            name: "off"
                            PropertyChanges {
                                target: reed;
                                color:"black"
                            }
                        },
                        State {
                            name: "redYellow"
                            PropertyChanges {
                                target: reed;
                                color:"red"
                            }
                        }
                    ]
            }

            Rectangle {
                Image {
                    id: fff
                    source: "walkingMan.png"
                    anchors.fill: rect
                }
                id: rect
                width: 100; height: 100
                color: "transparent"
                ParallelAnimation {
                    id:parr
                    running: true
                    NumberAnimation {
                         target: rect;
                         loops: Animation.Infinite;
                         property: "x";
                         to: 1000;
                         duration: 10000

                }
              }
            }
        }
}







