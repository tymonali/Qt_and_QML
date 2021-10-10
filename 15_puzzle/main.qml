import QtQuick 2.15
import QtQuick.Window 2.15

Window
{
    id: root
    width: 640
    height: 480
    visible: true
    color: "#ded9d9"
    title: qsTr("Hello World")

   GameBoard
   {
       anchors.fill: parent
   }
}
