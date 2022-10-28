import QtQuick 2.0
import Sailfish.Silica 1.0
import com.button_bodh 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
        contentHeight: column.height
        ScriptAction {
            id: print_value
            script: {
                var bodh = calc.getBODH()
                l_bin.text = calc.get_bin()
                l_oct.text = calc.get_oct()
                l_dec.text = calc.get_dec()
                l_hex.text = calc.get_hex()
                label_bin.color = 'white'
                label_oct.color = 'white'
                label_dec.color = 'white'
                label_hex.color = 'white'
                if (bodh == 2) {
                    label_bin.color = 'green'
                } else if (bodh == 8) {
                    label_oct.color = 'green'
                } else if (bodh == 10) {
                    label_dec.color = 'green'
                } else if (bodh == 16) {
                    label_hex.color = 'green'
                }
            }
        }
        ButtonCalc {
            id: calc
        }
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            Item {
                id: results
                height: 270
                Grid {
                    columns: 2
                    Label {
                        id: label_bin
                        width: Text.width + 10
                        text: 'BIN: '
                    }
                    Label {
                        id: l_bin
                        width: parent.width - label_bin.width
                        text: calc.get_bin()
                    }
                    Label {
                        id: label_oct
                        width: Text.width + 10
                        text: 'OCT: '
                    }
                    Label {
                        id: l_oct
                        width: parent.width - label_oct.width
                        text: calc.get_oct()
                    }
                    Label {
                        id: label_dec
                        width: Text.width + 10
                        text: 'DEC: '
                        color: 'green'
                    }
                    Label {
                        id: l_dec
                        width: parent.width - label_dec.width
                        text: calc.get_dec()
                    }
                    Label {
                        id: label_hex
                        width: Text.width + 10
                        text: 'HEX: '
                    }
                    Label {
                        id: l_hex
                        width: parent.width - label_hex.width
                        text: calc.get_hex()
                    }
                    Label {
                        id: label_result
                        width: Text.width + 10
                        text: 'Result: '
                    }
                    Label {
                        id: l_result
                        width: parent.width - label_hex.width
                        text: calc.get_result()
                    }
                }
            }
            Item {
                id: buttons
                anchors.top: results.bottom
                width: parent.width
                Grid {
                    id: my_grid
                    columns: 5
                    Button {
                        id: key_CE
                        width: buttons.width / my_grid.columns
                        text: 'CE'
                        onClicked: {
                            calc.del_number(1);
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_bin
                        width: buttons.width / my_grid.columns
                        text: 'bin'
                        onClicked: {
                            calc.changeBODH(2);
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_oct
                        width: buttons.width / my_grid.columns
                        text: 'oct'
                        onClicked: {
                            calc.changeBODH(8);
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_dec
                        width: buttons.width / my_grid.columns
                        text: 'dec'
                        onClicked: {
                            calc.changeBODH(10);
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_hex
                        width: buttons.width / my_grid.columns
                        text: 'hex'
                        onClicked: {
                            calc.changeBODH(16);
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_del
                        width: buttons.width / my_grid.columns
                        text: '<='
                        onClicked: {
                            calc.del_number()
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_left
                        width: buttons.width / my_grid.columns
                        text: '<<'
                        onClicked: {
                            calc.set_oper(5)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_right
                        width: buttons.width / my_grid.columns
                        text: '>>'
                        onClicked: {
                            calc.set_oper(6)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_mod
                        width: buttons.width / my_grid.columns
                        text: '%'
                        onClicked: {
                            calc.set_oper(4)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_div
                        width: buttons.width / my_grid.columns
                        text: '/'
                        onClicked: {
                            calc.set_oper(3)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_A
                        width: buttons.width / my_grid.columns
                        text: 'A'
                        onClicked: {
                            if (calc.getBODH() == 16) {
                                calc.set_number(10)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_7
                        width: buttons.width / my_grid.columns
                        text: '7'
                        onClicked: {
                            if (calc.getBODH() > 2 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(7)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_8
                        width: buttons.width / my_grid.columns
                        text: '8'
                        onClicked: {
                            if (calc.getBODH() > 8 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(8)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_9
                        width: buttons.width / my_grid.columns
                        text: '9'
                        onClicked: {
                            if (calc.getBODH() > 8 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(9)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_mul
                        width: buttons.width / my_grid.columns
                        text: '*'
                        onClicked: {
                            calc.set_oper(2)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_B
                        width: buttons.width / my_grid.columns
                        text: 'B'
                        onClicked: {
                            if (calc.getBODH() == 16) {
                                calc.set_number(11)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_4
                        width: buttons.width / my_grid.columns
                        text: '4'
                        onClicked: {
                            if (calc.getBODH() > 2 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(4)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_5
                        width: buttons.width / my_grid.columns
                        text: '5'
                        onClicked: {
                            if (calc.getBODH() > 2 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(5)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_6
                        width: buttons.width / my_grid.columns
                        text: '6'
                        onClicked: {
                            if (calc.getBODH() > 2 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(6)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_sub
                        width: buttons.width / my_grid.columns
                        text: '-'
                        onClicked: {
                            calc.set_oper(1)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                    Button {
                        id: key_C
                        width: buttons.width / my_grid.columns
                        text: 'C'
                        onClicked: {
                            if (calc.getBODH() == 16) {
                                calc.set_number(12)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_1
                        width: buttons.width / my_grid.columns
                        text: '1'
                        onClicked: {
                            calc.set_number(1)
                            print_value.start()
                        }
                    }
                    Button {
                        id: key_2
                        width: buttons.width / my_grid.columns
                        text: '2'
                        onClicked: {
                            if (calc.getBODH() > 2 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(2)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_3
                        width: buttons.width / my_grid.columns
                        text: '3'
                        onClicked: {
                            if (calc.getBODH() > 2 || calc.get_oper() == 5 || calc.get_oper() == 6) {
                                calc.set_number(3)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_sum
                        width: buttons.width / my_grid.columns
                        text: '+'
                        onClicked: {
                            calc.set_oper(0)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }Button {
                        id: key_D
                        width: buttons.width / my_grid.columns
                        text: 'D'
                        onClicked: {
                            if (calc.getBODH() == 16) {
                                calc.set_number(13)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_E
                        width: buttons.width / my_grid.columns
                        text: 'E'
                        onClicked: {
                            if (calc.getBODH() == 16) {
                                calc.set_number(14)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_F
                        width: buttons.width / my_grid.columns
                        text: 'F'
                        onClicked: {
                            if (calc.getBODH() == 16) {
                                calc.set_number(15)
                                print_value.start()
                            }
                        }
                    }
                    Button {
                        id: key_0
                        width: buttons.width / my_grid.columns
                        text: '0'
                        onClicked: {
                            calc.set_number(0)
                            print_value.start()
                        }
                    }
                    Button {
                        id: key_eq
                        width: buttons.width / my_grid.columns
                        text: '='
                        onClicked: {
                            calc.set_oper(-1)
                            print_value.start()
                            l_result.text = calc.get_result()
                        }
                    }
                }
            }
        }
    }
}

