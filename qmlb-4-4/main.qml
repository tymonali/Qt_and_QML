import QtQuick 2.15
import QtQuick.Window 2.15

//https://doc.qt.io/qt-5/qml-qtquick-text.html

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: myText
        text: ("<html><b>Hello</b> <i><font color='green'>World</font></i></html><br>
<font color='#C0C0C0'>this is a test</font><br>
<a href='http://www.google.com'>Google</a>")
        anchors.centerIn: parent
        font.pointSize: 35
        //font.bold: true //might not work
        //font.italic: true //might not work
        color: "red"
        linkColor: "blue"

        onLinkHovered: {
            console.log("Hover: " + link)
            if(link)
            {
                myText.font.bold = true
            }
            else
            {
                myText.font.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }
}
