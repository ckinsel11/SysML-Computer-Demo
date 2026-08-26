package 'Serial Interfaces' {
    private import ScalarValues::*;
    private import 'Unit Library'::'Data Transfer'::*;
    private import 'Common Interface Library'::Signal;

    abstract port def 'Serial Signal' :> Signal {
        doc /*  */
    }

    port def 'RS-232' :> 'Serial Signal' {
        doc /*  */
        attribute 'Logical Device Name' : String;
        port tx;
        port rx;
        port gnd;
    }
    port def 'RS-422':> 'Serial Signal' {
        doc /*  */
        attribute 'Logical Device Name' : String;
        port 'tx+';
        port 'tx-';
        port 'rx+';
        port 'rx-';
        port 'gnd';
    }
    port def 'RS-422_Clk' :> 'Serial Signal' {
        doc /*  */
        port 'Clock+';
        port 'Clock-';
    }
    port def 'RS-422-Sync' :> 'RS-422', 'RS-422_Clk' {
        doc /*  */
    }
    port def 'RS-423' :> 'Serial Signal' {
        doc /*  */
        port tx;
        port rx;
        port gnd;
    }
    port def 'RS-485' :> 'Serial Signal' {
        doc /*  */
        port A;
        port B;
        port SC;
    }

    abstract port def 'USB' :> 'Serial Signal' {
        doc /* Generic Standard USB Communication Interface */
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
        port GND_Drain {
            doc /*  */
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