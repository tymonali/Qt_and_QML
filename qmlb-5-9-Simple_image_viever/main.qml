import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property color bgcolor: "#5A6263"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"
    property var size: 100

    Rectangle
    {
        id: background
        color: root.buttoncolor
        width: 100
        height: parent.height

        Column
        {
            id: column
            anchors.fill: parent

            HoverButton
            {
                width: 100
                height: 50
                title.text: "Cat"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/cat.jpg"
            }

            HoverButton
            {
                width: 100
                height: 50
                title.text: "Dog"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/dog.jpg"
            }

            HoverButton
            {
                width: 100
                height: 50
                title.text: "Fish"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/fish.jpg"
            }
        }
    }

    Rectangle
    {
        id: rectangle
        color: root.bgcolor
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height

        Image {
            id: image
            source: "qrc:/images/logo.png"
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }
}
