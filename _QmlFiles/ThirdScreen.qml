import QtQuick 2.15
import QtQuick.Controls

Item
{
    Rectangle
    {

        anchors.fill: parent
        color: "#bdbebf"
        Button
        {
            id: _Button
            width: 40
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:
            {
                _Model.append({_MyValue: "and another one"})
                console.log(_Model.count)
                _ListOfItems.modelChanged()

            }
        }
        ListView
        {
            id: _ListOfItems
            height: parent.height
            width: parent.width
            anchors.top: parent.top
            anchors.bottom: _Button.top
            spacing: 30
            model: _Model
            delegate:Rectangle
                {
                    width: parent.width
                    height: 30
                    color: "black"
                    Text {
                        text: _MyValue
                        anchors.centerIn: parent
                        color:"white"
                        font.pointSize: 14
                    }
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            _Model.remove(index)
                            _ListOfItems.modelChanged()
                        }
                    }
                }

        }

    }
    ListModel
    {
        id: _Model


        ListElement {
            _MyValue: "test"

        }
        ListElement {
            _MyValue: "Orange"

        }
        ListElement {
            _MyValue: "Banana"

        }
    }
}
