import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid
       {
           anchors.centerIn: parent
           spacing: 3

           rows: 3
           columns: 3

           MyShape
           {
               color: "red"
           }
           MyShape
           {
               color: "blue"
           }
           MyShape
           {
               color: "green"
           }
           MyShape
           {
               color: "gray"
           }
           MyShape
           {
               color: "orange"
           }
           MyShape
           {
               color: "brown"
           }
           MyShape
           {
               color: "yellow"
           }
           MyShape
           {
               color: "violet"
           }
           MyShape
           {
               color: "black"
           }
       }
}
