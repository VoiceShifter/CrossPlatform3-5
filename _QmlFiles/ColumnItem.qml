import QtQuick 2.15

Item {
    height: 32
    width: parent.width
    Text {
        property string _MyValue: "This is a text"
        text: _MyValue
        font.pointSize: 14
        color: "black"
    }
}
