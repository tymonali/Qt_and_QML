import QtQuick 2.15
import QtQuick.Window 2.15

//Преобразования, речь идет о преобразовании внешнего вида объектов через изменения

//Positioning X / Y
// https://doc.qt.io/qt-5/qml-qtquick-propertyanimation.html

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Rectangle
    {
        id: myShape
        color: "red"
        width: 100
        height: 100
        x: 0
        y: (parent.height / 2) - (height / 2)

        PropertyAnimation
        {
            id: animationRight
            target: myShape
            property: "x"
            to: root.width - myShape.width
            duration: 2000
        }

        PropertyAnimation
        {
            id: animationLeft
            target: myShape
            property: "x"
            to: 0
            duration: 500
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                if(myShape.x === 0)
                {
                    animationRight.start()
                }
                else
                {
                    animationLeft.start()
                }
            }
        }
    }

}
