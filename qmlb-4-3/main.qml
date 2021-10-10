import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //java script???
    property var middle: height / 2

    Image {
        id: localImage
        source: "qrc:/images/smile.jpg"
        //visible: true
        width: 300
        fillMode: Image.PreserveAspectFit
        x: 300
        y: middle - 100
    }

    Image {
        id: remoteImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        //visible: true
        width: 100
        fillMode: Image.PreserveAspectFit
        x: 100
        y: middle

        onProgressChanged: console.log(remoteImage.progress)
        onStatusChanged: if(remoteImage.status == Image.Ready) console.log("Remote image was loaded")
    }
}
