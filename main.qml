import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    property int  margin: 10
    width: 400
    height: 400

    title: qsTr("Model View")
    ListModel {
        id: listmodel

        ListElement {
            name: "zhangsan"
            sex: "male"
            age: 15
            tel: "5556464"
            addr: "china"
        }

        ListElement {
            name: "zhangsan"
            sex: "male"
            age: 15
            tel: "5556464"
            addr: "china"
        }

        ListElement {
            name: "zhangsan"
            sex: "male"
            age: 15
            tel: "5556464"
            addr: "china"
        }

        ListElement {
            name: "zhangsan"
            sex: "male"
            age: 15
            tel: "5556464"
            addr: "china"
        }

        ListElement {
            name: "zhangsan"
            sex: "male"
            age: 15
            tel: "5556464"
            addr: "china"
        }

        ListElement {
            name: "zhangsan"
            sex: "male"
            age: 15
            tel: "5556464"
            addr: "china"
        }
    }

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
            height: 200

            ListView {
                id: listview
                spacing: 4
                anchors.fill: parent


//                header: Component {
//                    id: listviewheader

//                    Row {
//                        width: 30

//                        Text { text: "Name"}
//                        Rectangle{width: 1;color: "yellow"}
//                        Text { text: "Name"}
//                        Rectangle{width: 1;color: "yellow"}
//                        Text { text: "Name"}
//                        Rectangle{width: 1;color: "yellow"}
//                        Text { text: "Name"}
//                        Rectangle{width: 1;color: "yellow"}
//                        Text { text: "Name"}
//                    }
//                }

                model: listmodel

                delegate: Component {
                    Row{
                        width: 30
                        Label {text: name}
                        Label {text: sex}
                        Label {text: age}
                        Label {text: tel}
                        Label {text: addr}

                        Button {

                            id: delbtn
                            text: "Del"
                        }

                        Button {
                            id: addbtn
                            text: "Add"
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

                Label {text: "Name"}
                Label {text: "Sex"}
                Label {text: "Age"}
                Label {text: "Tel"}
                Label {text: "Addr"}

                TextField { Layout.fillWidth: true; }
                TextField { Layout.fillWidth: true;  }
                TextField { Layout.fillWidth: true; }
                TextField { Layout.fillWidth: true; }
                TextField { Layout.fillWidth: true; }
            }
        }
    }

}
