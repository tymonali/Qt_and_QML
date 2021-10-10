import QtQuick 2.0
import Game 1.0;

GridView
{
    id: root
    model: GameboardModel
    {

    }

    cellHeight: height / root.model.dimension
    cellWidth: width / root.model.dimension

    delegate: Item
    {
        id: _backgroundDelegate
        width: root.cellWidth
        height: root.cellHeight

        visible: display != root.model.hiddenElementValue

        Tile
        {
            anchors.fill: _backgroundDelegate
            anchors.margins: 3
//            internalText.text: display
            displayText: display
//            width: root.cellWidth
//            height: root.cellHeight

            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    root.model.move(index);
                }
            }
        }
    }
}
