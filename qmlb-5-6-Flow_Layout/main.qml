import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        color: "pink"
        anchors.centerIn: parent
        width: 300
        height: 400

        clip: true

        Flow
        {
            anchors.centerIn: parent

            /*
                Flow.LeftToRight (default) - Элементы располагаются рядом друг с другом в соответствии с layoutDirection до тех пор, пока ширина потока не будет превышена, а затем переносятся на следующую строку.
                Flow.TopToBottom - Элементы располагаются рядом друг с другом сверху вниз, пока не будет превышена высота потока, а затем переносятся в следующий столбец.
            */

            flow: Flow.LeftToRight //Flow.LeftToRight //Flow.TopToBottom
            spacing: 5

            MyShape {color: "red"}
            MyShape {color: "yellow"}
            MyShape {color: "green"}
            MyShape {color: "blue"}
            MyShape {color: "black"}
            MyShape {color: "gray"}
            MyShape {color: "teal"}
            MyShape {color: "brown"}
            MyShape {color: "orange"}
        }
    }
}
