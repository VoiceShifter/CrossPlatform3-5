import QtQuick 2.15
import QtQuick.Controls

Item {
    Rectangle
    {
        anchors.fill: parent
        color: "#bdbebf"


        Column
        {
            id: _ListOfItems
            width: parent.width





        }
        Button
        {
            id: _Button
            width: 40
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:
            {
                var _component = Qt.createComponent("ColumnItem.qml");
                if (_component.status === Component.Ready)
                {
                    var item = _component.createObject(_ListOfItems)
                    _ListOfItems.height = _ListOfItems.height + item.height
                    console.log(_ListOfItems.height, item.height)
                }
            }
            Component.onCompleted:
            {
                console.log("Screen loaded")
            }
        }
    }

}
