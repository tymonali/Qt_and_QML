import QtQuick 2.15
import QtQuick.Window 2.15

/*
  Прямоугольник
  https://doc.qt.io/qt-5/qml-qtquick-rectangle.html
  Это элемент
  Это не круг!
*/


Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: myItem
        anchors.centerIn: parent
        color: "red"
        width: 200
        height: 200
        visible: true

        border.color: "#000000"
        border.width: 5

        radius: width

        //Gradients are super easy!
        //https://doc.qt.io/qt-5/qml-qtquick-gradientstop.html

        gradient: Gradient
        {
            GradientStop{position: 0.0; color: "red"}
            GradientStop{position: 1.0; color: "blue"}
        }
    }
}
