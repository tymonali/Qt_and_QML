import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window
{
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function updateColor()
    {
        window.color = Qt.rgba(Math.random(), Math.random(), Math.random());
    }


    Button
    {
        id: button_1
        text: "Click me!"
        anchors.centerIn: parent
        onClicked:
        {
            updateColor()
        }
    }

    RoundButton
    {
        id: root
        text: "Click me!"
        onClicked:
        {
            updateColor()
        }
    }
}
