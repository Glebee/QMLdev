import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationGroup {
        id: settings
        path: "/sailfish/i18n/"
        property bool time12: false
        property bool time24: false
    }
    Column {
        Label {
            text: settings.time12 + "-hour is selected"
        }
        Button {
            width: parent.width
            text: "12-hour"
            onClicked: {
                settings.time12 = true
                settings.time24 = false
                settings.valueChanged("/sailfish/i18n/lc_timeformat24h")
            }
        }
        Button {
            width: parent.width
            text: "24-hour"
            onClicked: {
                settings.time12 = false
                settings.time24 = true
            }
        }
    }

}
