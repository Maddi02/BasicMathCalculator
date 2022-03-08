import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Window {
    id: mainFrame
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    GridLayout{
        id: gridLayout
        anchors.fill: parent
        columns:5
        rows: 2

        Button{
            id: nextButton
            text: qsTr("Calculate Zylinder Area")
            Layout.column: 4
            Layout.columnSpan: 1
            Layout.row: 0
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            onClicked:{
                           var component = Qt.createComponent("calculateCyliderArea.qml")
                           var window    = component.createObject()
                           window.show()
                           mainFrame.hide()
                       }
            }
        Button{
            id: backButton
            text: qsTr("Calculate Circel Area")
            height: 20; width: 20
            Layout.column: 4
            Layout.columnSpan: 1
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}

