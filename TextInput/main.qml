import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "lightgrey"

    // Слой в котором располагается TextInput и Button
    RowLayout {
        id: rowLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 5
        height: 30

        spacing: 5
        z:2         /* Уровень расположения слоёв элементов.
                     * Элемент с z = 2 располагается выше, чем элемент с z = 1
                     */

        // Область с TextInput
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "white"

            TextInput {
                id: textInput
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                /* По нажатию клавиши Enter передаём информацию
                 * из TextInput в элемент ListView
                 * */
                Keys.onPressed: {
                    // 16777220 - код клавиши Enter
                    if(event.key === 16777220){
                        listModel.append({ textList: textInput.text })
                    }
                }
            }
        }

        /* Кнопка, по нажатию которой передаётся информация из
         * textInput в элемент ListView
         * */
        Button {
            id: button
            text: qsTr("добавить")
            Layout.fillHeight: true

            onClicked: {
                listModel.append({ textList: textInput.text })
            }
        }
    }

    // Список, в который добавляются элементы с данными из TextInput
    ListView {
        id: listView

        anchors.top: rowLayout.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 5
        z: 1 // Расположение ниже, чем слой с TextInput и Button

        // Описание внешнего вида одного элемента в ListView
        delegate: Text {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 50
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            text: textList // Роль свойства text, в которую будут передаваться данные
        }

        // Модель для представления данных в ListView
        model: ListModel {
            id: listModel
        }
    }
}
