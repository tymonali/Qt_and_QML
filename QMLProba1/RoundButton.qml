import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Item
{
    id: root
    property int size: 200
    property color color: "lightgrey"
    property alias text: caption.text

    signal clicked()

    width: size
    height: size

    Rectangle
    {
        anchors.fill: parent
        radius: size/2
        color: mousearea.containsPress ? Qt.darker(root.color, 1.2) : root.color

        Text
        {
            id: caption
            text: qsTr("Click me!")
            anchors.centerIn: parent
        }
        MouseArea
        {
            id: mousearea
            anchors.fill: parent
            onClicked:
            {
                root.clicked()
            }
        }
    }

}
