library package 'Common Interface Library' {
    private import ScalarValues::*;
    private import 'Unit Library'::'Data Transfer'::*;

    abstract port def Signal {
        doc /*  */
    }

    metadata def 'Mechanical Port' {
        doc /*  */
    }
    metadata def 'HMI Port' {
        doc /*  */
    }
    metadata def 'Communication Port' {
        doc /*  */
    }
    metadata def 'Fluid Port' {
        doc /*  */
    }
    package 'Abstract Definitions' {
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
    package 'Audio Interfaces'{
            port def 'XLR3'{
                doc /*  */
                port Hot{
                    doc /* Positive polarity terminal for balanced audio circuits */
                }
                port Cold{
                    doc /* Negative polarity terminal for balanced audio circuits */
                }
                port 'GND'{
                    doc /* Chassis Ground */
                }
            }
            port def CTIA{
                doc /*  */
                port 'Left Audio'{
                    doc /*  */
                }
                port 'Right Audio'{
                    doc /*  */
                }
                port GND{
                    doc /* Ground */
                }
                port 'Microphone'{
                    doc /*  */
                }
            }
    }
    package 'Expansion Buses'{
        port def 'PCIe-1x'{
            doc /* Single Lane PCIe Interface */
        }
        port def 'PCIe-4x' :> 'PCIe-1x'{
            doc /* 4 Lane PCIe Interface */
        }
        port def 'PCIe-8x' :> 'PCIe-4x'{
            doc /* 8 Lane PCIe Interface */
        }
        port def 'PCIe-16x' :> 'PCIe-8x'{
            doc /* 16 Lane PCIe Interface */
        }
    }
}