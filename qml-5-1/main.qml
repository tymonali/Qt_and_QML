import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: myShape
        width: 100
        height: 100
        color: "lightgreen"

        function update()
        {
            console.log(x + " x " + y)
            label.text = Math.round(x) + " x " + Math.round(y)
        }

        //anchors.centerIn: parent
        x: 100
        y: 100

        Component.onCompleted: update()
        onXChanged: update()
        onYChanged: update()

        Text {
            id: label
            text: qsTr("text")
            anchors.centerIn: parent


        }

        MouseArea
        {
            anchors.fill: parent
            drag.target: parent
        }
    }
}
