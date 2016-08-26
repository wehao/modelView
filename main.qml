import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.2

ApplicationWindow {
    visible: true
    property int  margin: 10
    width: 400
    height: 400

    title: qsTr("Model View")

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: margin

        Rectangle  {
            color: "yellow"
            //anchors.fill: parent

            anchors.left: parent.left
            anchors.right: parent.right
            border.width: 2
            border.color: "red"
            width: parent.width
            height: listview.implicitHeight + 10
            Layout.fillHeight: true

            ListView {
                id: listview
                spacing: 4
                anchors.fill: parent
                anchors.margins: 5
                implicitHeight: 250

                header: Component {
                    id: listviewheader

                    Row {
                        width: 30
                        spacing: 4
                        Text { text: "Name";}

                        Text { text: "Sex";}

                        Text { text: "Age"; }

                        Text { text: "Tel"; }

                        Text { text: "Addr"; }
                    }
                }

                model: MyModel

                delegate: Component {
                    Row{
                        width: 30
                        spacing: 4
                        Label {text: name;}
                        Label {text: sex;}
                        Label {text: age;}
                        Label {text: tel;}
                        Label {text: addr;}

                        Button {

                            id: delbtn
                            text: "Del"
                            style: ButtonStyle {
                                background: Rectangle {
                                    color: "lightblue"
                                    radius: 4
                                    border.width: delbtn.pressed? 1:0
                                    border.color: "red"
                                }
                            }

                            onClicked:  {

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
