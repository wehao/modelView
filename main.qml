import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.2
import com.listmodel 1.0

ApplicationWindow {
    visible: true
    property int  margin: 10
    width: 530
    height: 500

    title: qsTr("Model View")

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: margin

        Rectangle  {

            anchors.left: parent.left
            anchors.right: parent.right
            width: parent.width
            Layout.fillHeight: true

            Rectangle {
                id: header
                height: 50
                width: parent.width
                color: "lightblue"

                Label {text: "Name";  x: 3; width: 80; height: 30; anchors.verticalCenter: parent.verticalCenter}
                Label {text: "Sex"; x: 93; width: 50; height: 30; anchors.verticalCenter: parent.verticalCenter}
                Label {text: "Age"; x: 183; width: 20; height: 30; anchors.verticalCenter: parent.verticalCenter}
                Label {text: "Tel"; x: 273; width: 80; height: 30; anchors.verticalCenter: parent.verticalCenter}
                Label {text: "Addr"; x: 363; width: 80; height: 30; anchors.verticalCenter: parent.verticalCenter}
            }

            Rectangle {
                id: listRec
                color: "lightyellow"
                y: header.height
                width: parent.width
                height: parent.height - header.height
                border.width: 1
                border.color: "red"
                //anchors.margins: margin

                ListView {
                    id: listview
                    spacing: 4
                    anchors.fill: parent
                    anchors.margins: 5
                    //implicitHeight: 200

                    snapMode:  ListView.SnapToItem
                    model: mymodel

                    delegate: Component {

                        Rectangle {
                            height: 31
                            Label {text: name; x: 0; width: 80; height: 31}
                            Label {text: sex; x: 90; width: 50; height: 31}
                            Label {text: age; x: 180; width: 20; height: 31}
                            Label {text: tel; x: 270; width: 80; height: 31}
                            Label {text: addr; x: 360; width: 80; height: 31}

                            Button {
                                id: delbtn
                                text: "Del"
                                x: 450
                                width: 40
                                height: 20

                                style: ButtonStyle {
                                    background: Rectangle {
                                        color: "lightgreen"
                                        radius: 4
                                        border.width: delbtn.pressed? 1:0
                                        border.color: "red"
                                    }
                                }

                                onClicked:  {
                                    //listview.model.

                                }
                            }
                        }
                    }
                }
            }


        }

        GroupBox {
            id: detials
            title: "Details"
            Layout.fillWidth:true

            GridLayout {
                id: gridLayout
                anchors.fill: parent
                rows: 5
                flow: GridLayout.TopToBottom

                Label {id:nameLabel; text: "Name"}
                Label {id: sexLabel; text: "Sex"}
                Label {id: ageLabel; text: "Age"}
                Label {id: telLabel; text: "Tel"}
                Label {id: addrLabel; text: "Addr"}

                TextField { Layout.fillWidth: true; }
                TextField { Layout.fillWidth: true;  }
                TextField { Layout.fillWidth: true; }
                TextField { Layout.fillWidth: true; }
                TextField { Layout.fillWidth: true; }
            }
        }
    }

}
