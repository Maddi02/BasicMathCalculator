import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Window{
    id: zylinderFrame
    width: 640
    height: 480
    color: "orange"
    GridLayout{
           anchors.fill: parent
           columns: 3
           rows: 5
           Label{
               id: hint
               Text{
                   id: textInLabel
                   text: qsTr("Geben Sie die Größen in cm an")
                   font.pointSize: 24
                   anchors.top : hint.top
                   anchors.horizontalCenter: hint.horizontalCenter

               }
               Layout.column: 0
               Layout.columnSpan: 3
               Layout.row: 0
               Layout.rowSpan: 1
                 Layout.fillWidth: true
           }

           Label{
               id: height
               Layout.column: 0
               Layout.columnSpan: 2
               Layout.row: 1
               Layout.rowSpan: 1

               Text{
                   id: heightLabel
                   text: qsTr("Höhe")
                   minimumPointSize: 10
                   font.pointSize: 24
                   fontSizeMode: Text.Fit
               }

           }
           TextField {
                  id: heightField
                  objectName: "heightField"
                  font.pointSize: 14
                  bottomPadding: 16
                  placeholderText: "Height"
                  Layout.column: 2
                  Layout.columnSpan: 1
                  Layout.row: 1
                  Layout.rowSpan: 1
              }


           Label{
               id: radius
               Layout.column: 0
               Layout.columnSpan: 2
               Layout.row: 2
               Layout.rowSpan: 1

               Text{
                   id: radiusLabel
                   text: qsTr("Radius")
                   minimumPointSize: 10
                   font.pointSize: 24
                   fontSizeMode: Text.Fit
               }
           }
           TextField {
                  id: radiusField
                  font.pointSize: 14
                  bottomPadding: 16
                  placeholderText: "Radius"
                  renderType: Text.QtRendering

                  Layout.column: 2
                  Layout.columnSpan: 1
                  Layout.row: 2
                  Layout.rowSpan: 1
              }
         Button{
             text: qsTr("Calculate")
             Layout.column: 1
             Layout.columnSpan: 3
             Layout.row: 4
             Layout.rowSpan: 1
             onClicked: calculate.emmitChange(heightField.text, radiusField.text);
         }

         Label{
             id: resultSign
             text: qsTr("Result")
             minimumPointSize: 10
             font.pointSize: 24
             Layout.column: 0
             Layout.columnSpan: 1
             Layout.row: 3
             Layout.rowSpan: 1
         }

         Label{
             id: result

             Text{
                 id: textInResult
                 text: qsTr("Result")
                 font.pointSize: 16

             }
             Layout.column: 1
             Layout.columnSpan: 2
             Layout.row: 3
             Layout.rowSpan: 1
             Layout.fillWidth: true
             background: Rectangle{
                 color: "white"
             }


         }
         Connections{
             target: calculate
             onValueChanged: {
                            onValueChanged: textInResult.text = s;
             }
         }

        Button{
            text: qsTr("Back to menu")
            Layout.column: 0
            Layout.columnSpan: 1
            Layout.row: 5
            Layout.rowSpan: 1
            onClicked:{
                           var component = Qt.createComponent("main.qml")
                           var window    = component.createObject()
                           window.show()
                           zylinderFrame.hide()
                       }
        }

    }
}
