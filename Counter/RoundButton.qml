import QtQuick

Rectangle {
    id: roundButton
    property string  lable: ""
    signal clicked()

    width: counter.width/3
    height: counter.width/3
    radius: counter.width/3
    color: "lightgreen"
    border.color: "green"
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
