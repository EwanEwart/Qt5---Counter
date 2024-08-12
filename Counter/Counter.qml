//
// Counter.qml
//
import QtQuick

Item {
    id: counter
    anchors.fill: parent
    property int count: 0
    property real r: 100

    // onCountChanged: print(count)


    Rectangle {
        id: display
        width: counter.width
        height: counter.height / 3
        color: "lightblue"
        Text {
            // anchors.horizontalCenter: parent.horizontalCenter
            // anchors.verticalCenter: parent.verticalCenter
            anchors.centerIn: parent
            font.pointSize: 90
            font.bold: true
            font.family: "Chilanka"
            color: "blue"
            text: counter.count
        }
    }
    Grid {
        id: buttons
        rows: 1; columns: 3; spacing: 5
        // width: counter.width
        // height: counter.height / 2
        anchors.bottom: counter.bottom
        anchors.horizontalCenter: counter.horizontalCenter

        RoundButton {
            lable: "-"
            onClicked: --counter.count
            // radius: counter.width/3 - counter.width/6
            radius: r
        }
        RoundButton {
            lable: "0"
            onClicked: counter.count = 0
            // radius: counter.width/3 - counter.width/6
            radius: r
        }
        RoundButton {
            lable: "+"
            onClicked: ++counter.count
            // radius: counter.width/3 - counter.width/6
            radius: r
        }
    }
}
