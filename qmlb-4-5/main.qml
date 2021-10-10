import QtQuick 2.15
import QtQuick.Window 2.15

/*
  Mouse area
  https://doc.qt.io/qt-5/qml-qtquick-mousearea.html
*/

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "grey"

    Rectangle
    {
        id: myArea
        color: "blue"
        width: 200
        height: 200
        anchors.centerIn: parent

        border.color: "black"
        border.width: 5

//        gradient: Gradient
//                {
//                    GradientStop{position: 0.0; color: "blue"}
//                    GradientStop{position: 1.0; color: "yellow"}
//                }

        radius: 25

        MouseArea
        {
            id: myMouse

            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            onClicked:
            {
                console.log("Clicked: " + mouse.button)
                if(mouse.button === Qt.LeftButton) parent.color = "green"
                if(mouse.button === Qt.RightButton) parent.color = "red"
            }

            onDoubleClicked: console.log("Double Clicked: " + mouse.button)
            onPositionChanged: console.log("Position X:" + mouseX + " Y: " + mouseY)
            onEntered: parent.color = "orange"
            onExited: parent.color = "blue"
        }
    }
}
