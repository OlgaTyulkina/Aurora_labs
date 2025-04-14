import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page_2
    allowedOrientations: Orientation.All

        Column{
            id: column
            width: 500
            height: 450

            Rectangle{
                width: parent.width
                height: parent.height
                color: "transparent"

                Row{
                    spacing:50

                    Column{
                        id: column1
                         width: 200
                         spacing: 50
                            Rectangle{
                                color: "red"
                                width: parent.width;
                                height: 200
                            }
                            Rectangle{
                                color: "violet"
                                width: parent.width;
                                height: 200
                            }
                     }

                    Rectangle{
                        color: "limegreen"
                        width: 200;
                        height: 200
                    }

                    Column{
                        id: column2
                         width: 200
                         spacing: 50
                            Rectangle{
                                color: "blue"
                                width: parent.width;
                                height: 200
                            }
                            Rectangle{
                                color: "black"
                                width: parent.width;
                                height: 200
                            }
                     }
                }
            }

        }


 }

