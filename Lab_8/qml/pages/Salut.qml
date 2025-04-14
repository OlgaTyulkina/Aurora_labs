import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

Page {
    property int sizex: Screen.width
    property int sizey: Screen.height
    Component {
        id: particles
        Item {
            id: container
            width: 200
            height: 200
            ParticleSystem { id: particleSystem }
            Emitter {
                system: particleSystem
                width: 10
                height: 10
                emitRate: 2000
                maximumEmitted: 200
                lifeSpan: 1000
                velocity: TargetDirection {
                    targetX: 0
                    targetY: 0
                    targetVariation: 360
                    magnitude: 100
                }
            }
            ItemParticle {
                system: particleSystem
                delegate: Rectangle {
                    property int particleSize: 5
                    width: particleSize
                    height: particleSize
                    color: "lightyellow"
                    radius: particleSize/2
                }
            }
            Timer {
                interval: 1000
                running: true
                onTriggered: container.destroy();
            }
        }
    }


    Timer {
            id: timer
            interval: 1000
            running: true; repeat: true
            onTriggered: {
                createParticles()
            }
        }
    function createParticles() {
        var object = particles.createObject(parent);
        object.x = Math.random() * sizex
        object.y = Math.random() * sizey
    }

}
