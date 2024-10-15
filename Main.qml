import QtQuick
import QtQuick.Controls
import com.Definer 1.0
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CrossPlatform")
    Definer
    {
        id: _Definer
        property string _QML_OS: ""
        // Component.onCompleted:
        // {
        //     if (_Definer._OS === 0)
        //     {
        //         _QML_OS: "WINDOWS"
        //         console.log("WINDOWS OS")

        //     }


        //     else if(_Definer._OS === 1)
        //     {
        //         console.log("LINUX OS")
        //         _QML_OS: "LINUX"
        //     }
        //     else
        //     {
        //         console.log("ANDROID OS")
        //         _QML_OS: "ANDROID"
        //     }
        // }
    }

    Loader
    {
        id: _Loader
        anchors.fill: parent


        source: "_QmlFiles/ThirdScreen.qml"
    }
    Text {

        id: _SystemName
        text: qsTr(_Definer._OS)
        Component.onCompleted:
        {
            console.log(_Definer._OS, "from text")
        }
        z: 1
        color: "black"
        anchors.centerIn: parent
        font.pointSize: 14


    }

    // Button
    // {
    //     id: _Button
    //     width: 40
    //     anchors.bottom: parent.bottom
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     onClicked:
    //     {
    //         _Model.append(ColumnItem)
    //         console.log(_Model.count)
    //         _ListOfItems.modelChanged()

    //     }
    // }
}
