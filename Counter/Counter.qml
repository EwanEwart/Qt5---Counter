import QtQuick

Item {
    id: counter
    anchors.fill: parent
    property int count: 0

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
    Row {
        id: buttons
        width: counter.width
        height: counter.height / 2
        anchors.bottom: counter.bottom
        RoundButton {
            lable: "-"
            onClicked: --counter.count
        }
        RoundButton {
            lable: "0"
            onClicked: counter.count = 0
        }
        RoundButton {
            lable: "+"
            onClicked: ++counter.count
        }
    }
}
