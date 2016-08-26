import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.2

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
            color: "lightyellow"
            //anchors.fill: parent

            anchors.left: parent.left
            anchors.right: parent.right
            border.width: 1
            border.color: "red"
            width: parent.width
            height: listview.implicitHeight + 10
            Layout.fillHeight: true

            ListView {
                id: listview
                spacing: 4
                anchors.fill: parent
                height: header.height + 5
                anchors.margins: 5
                implicitHeight: 250

                model: mymodel

                delegate: Component {
//                    Row{
//                        spacing: 4
//                        Label {text: name; color: "blue"}
//                        Label {text: sex;}
//                        Label {text: age;}
//                        Label {text: tel;}
//                        Label {text: addr;}


//                        Button {

//                            id: delbtn
//                            text: "Del"
//                            Layout.fillWidth: true
//                            style: ButtonStyle {
//                                background: Rectangle {
//                                    color: "lightblue"
//                                    radius: 4
//                                    border.width: delbtn.pressed? 1:0
//                                    border.color: "red"
//                                }
//                            }

//                            onClicked:  {
//                                //listview.model.

//                            }
//                        }
//                    }

                    Rectangle {
                        height: 30
                        Label {text: name; x: 0; width: 80; height: 30}
                        Label {text: sex; x: 90; width: 50; height: 30}
                        Label {text: age; x: 180; width: 20; height: 30}
                        Label {text: tel; x: 270; width: 80; height: 30}
                        Label {text: addr; x: 360; width: 80; height: 30}


                        Button {

                            id: delbtn
                            text: "Del"
                            x: 450
                            width: 40
                            height: 20
                            style: ButtonStyle {
                                background: Rectangle {
                                    color: "lightblue"
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

        GroupBox {
            id: detials
            title: "Details"
            //Layout.minimumHeight: 100
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
