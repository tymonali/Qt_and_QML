import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        anchors.centerIn: parent
        width: 300
        height: 400
        color: "red"

        Rectangle
        {
            width: 100
            height: 100
            color: "yellow"

            // No anchor by default
            anchors.margins: 50 //All Margins
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
        }
    }
}
