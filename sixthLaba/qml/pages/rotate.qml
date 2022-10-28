import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    id:page
    allowedOrientations: Orientation.All

        Item{
            anchors.horizontalCenter: parent.horizontalCenter
            id:ff
            Text {
                id: lab
                text:"SOME BIG TEXT"
                font.pointSize: 50

                anchors.horizontalCenter: parent.horizontalCenter
                color: Theme.highlightColor
                font.family: Theme.fontFamilyHeading
                transitions: [
                       /* Transition {
                            from: "*"; to: "middleRight"
                            NumberAnimation {
                                properties: "x,y";
                                easing.type: Easing.InOutQuad;
                                duration: 20000;
                            }
                        },
                        Transition {
                            from: "*"; to: "bottomLeft";
                            NumberAnimation {
                                properties: "x,y";
                                easing.type: Easing.InOutQuad;
                                duration: 20000;
                            }
                        },*/
                        //If any other rectangle is clicked, the icon will return
                        //to the start position at a slow speed and bounce.
                        Transition {
                            from: "*"; to: "*";
                            NumberAnimation {
                                easing.type:Easing.InOutQuad; //Easing.OutBounce;
                                properties: "x";
                                duration: 10000;
                            }
                            NumberAnimation {
                                easing.type:Easing.InOutQuad; //Easing.OutBounce;
                                properties: "y";
                                duration: 10000;
                            }
                            NumberAnimation {
                                easing.type:Easing.InOutQuad; //Easing.OutBounce;
                                properties: "rotation";
                                duration: 10000;
                            }
                            ColorAnimation {
                                easing.type:Easing.InOutQuad
                                from: Theme.highlightColor
                                to: "blue"
                                duration: 10000
                            }
                        }
                ]
                state : "def"
                states: State {
                    name: "move"
                    when: mouseArea.pressed
                    PropertyChanges {
                        target: ff
                        x:50
                        y:1000
                        rotation:180
                    }
                    PropertyChanges {
                        target: lab
                        color:"purple"

                    }
                }
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent;
                }
            }

            /*
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                 anchors.verticalCenter: parent.verticalCenter
                Rectangle {

                    id: redRect
                    width: 100; height: 100
                    color: "red"
                }
                Rectangle {

                            id: blueRect
                            x: redRect.width
                            width: 50; height: 50
                            color: "blue"
                            states: State {
                                name: "parentChanged"
                                ParentChange {
                                    target: blueRect;
                                    parent: redRect;
                                    x: 10;
                                    y: 10
                                }
                            }
                            MouseArea {
                                anchors.fill: parent;
                                onClicked: blueRect.state = "parentChanged"
                            }
                        }
            }*/
        }
}
