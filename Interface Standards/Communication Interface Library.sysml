library package 'Communication Interface Library' {
    private import ScalarValues::*;
    private import 'Unit Library'::'Data Transfer'::*;

    package 'Abstract Definitions' {
        abstract port def 'Physical Mount' {
            doc /*  */
        }
    }
    package 'Video Interfaces' {
        port def DisplayPort {
            doc /* Digital interface used to connect a video source to a display device */
        }
        abstract port def HDMI {
            doc /* High-Definition Multimedia Interface */
            port 'data 0 +' {
                doc /*  */
            }
            port 'data 0 -' {
                doc /*  */
            }
            port 'data 0 GND' {
                doc /*  */
            }
            port 'data 1 +' {
                doc /*  */
            }
            port 'data 1 -' {
                doc /*  */
            }
            port 'data 1 GND' {
                doc /*  */
            }
            port 'data 2 +' {
                doc /*  */
            }
            port 'data 2 -' {
                doc /*  */
            }
            port 'data 2 GND' {
                doc /*  */
            }
        }
        port def VGA {
            doc /* Video Graphics Array */
        }
    }
    package 'Peripheral Interfaces' {
        abstract port def 'USB' {
            doc /*  */
            attribute 'Signaling Rate' : Real;
            port VBus {
                doc /* +5 V */
            }
            port 'D+' {
                doc /* Data+ */
            }
            port 'D-' {
                doc /* Data- */
            }
            port GND {
                doc /* Ground */
            }
        }
        abstract port def 'USB Superspeed' :> 'USB' {
            doc /*  */
            port 'SSTX+' {
                doc /* SuperSpeed Transmit+ */
            }
            port 'SSTX-' {
                doc /* SuperSpeed Transmit- */
            }
            port 'SSRX+' {
                doc /* SuperSpeed Receive+ */
            }
            port 'SSRX-' {
                doc /* SuperSpeed Receive- */
            }
        }

        port def 'USB 1.0' :> USB {
            doc /*  */
            attribute :>> 'Signaling Rate' = 12 ['Mbit/s'];
        }
        port def 'USB 1.1' :> USB {
            doc /*  */
            attribute :>> 'Signaling Rate' = 12 ['Mbit/s'];
        }
        port def 'USB 2.0' :> USB {
            doc /*  */
            attribute :>> 'Signaling Rate' = 480 ['Mbit/s'];
        }
        port def 'USB 3.0' :> 'USB Superspeed' {
            doc /*  */
            attribute :>> 'Signaling Rate' = 5 ['Gbit/s'];
        }
        port def 'USB 3.1' :> 'USB Superspeed' {
            doc /*  */
            attribute :>> 'Signaling Rate' = 10 ['Gbit/s'];
        }
        port def 'USB 3.2' :> 'USB Superspeed' {
            doc /*  */
            attribute :>> 'Signaling Rate' = 20 ['Gbit/s'];
        }
        port def 'USB4' :> 'USB Superspeed' {
            doc /*  */
            attribute :>> 'Signaling Rate' = 40 ['Gbit/s'];
        }
        port def 'USB4 2.0' :> 'USB Superspeed' {
            doc /*  */
            attribute :>> 'Signaling Rate' = 80 ['Gbit/s'];
        }
    }
    package 'Electrical Power Interfaces'{
            abstract port def 'Electrical Power' {
                doc /*  */
                attribute 'Nominal Voltage' : Real;
                item def 'Electrical Power DC' {
                    doc /* Direct Current Power Interfaces */
                }
                item def 'Electrical Power AC' {
                    doc /* Alternating Current Power Interfaces */
                }
            }
            abstract port def 'Load Controller' {
                doc /*  */
            }
            abstract port def 'Power System Device' {
                doc /*  */
            }
    }   
}