import QtQuick 2.0

Rectangle
{
    id: root

    property string displayText: ""
    //readonly property alias internalText: _firstText

    color: "lightgreen"

    radius: 5

    border.color: "black"
    border.width: 2


    Text
    {
        id: _firstText
        text: root.displayText
        font.pointSize: Math.min(root.width, root.height) / 3
        font.bold: true
        anchors.centerIn: root
    }
}
