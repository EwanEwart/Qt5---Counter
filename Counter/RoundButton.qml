//
// RoundButton.qml
//
import QtQuick

Rectangle {
    id: roundButton
    property alias radius:  roundButton.radius
    property string  lable: ""
    signal clicked()

    // radius: counter.width/3 - counter.width/6
    width:  radius
    height: radius
    color: "lightgreen"
    border.color: "blue"
    border.width: 1
    Text {
        id: minus
        text: qsTr(lable)
        font.pointSize: 48
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: roundButton
        onClicked: roundButton.clicked()
    }
}
