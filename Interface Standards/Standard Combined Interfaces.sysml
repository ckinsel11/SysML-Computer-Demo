package 'Combined Interfaces Library' {
    private import 'Communication Interface Library'::*;
    private import 'Cable Connector Library'::*;

    port def 'HDMI Standard A Interface'{
        doc /* The typical commercial HDMI Type A interface */
        port connector : 'HDMI Connectors'::'Type A';
        port signal : 'Video Interfaces'::HDMI;

        ref connection connect connector.CA.'1' to signal.'data 2 +'; /* TODO: Evaluate whether ref is good or bad here.*/
        ref connection connect connector.CA.'2' to signal.'data 2 GND';
        ref connection connect connector.CA.'3' to signal.'data 2 -';
        ref connection connect connector.CA.'4' to signal.'data 1 +';
        ref connection connect connector.CA.'5' to signal.'data 1 GND';
        ref connection connect connector.CA.'6' to signal.'data 1 -';
        ref connection connect connector.CA.'7' to signal.'data 0 +';
        ref connection connect connector.CA.'8' to signal.'data 0 GND';
        ref connection connect connector.CA.'9' to signal.'data 0 -';
    } 
    port def 'USB A Standard Interface'{
        doc /* The typical commercial USB Type A interface */
        port connector : 'USB'::'Standard-A Connector';
        port signal : 'Peripheral Interfaces'::USB;

        ref connection connect connector.CA.'1' to signal.'VBus';
        ref connection connect connector.CA.'2' to signal.'D-';
        ref connection connect connector.CA.'3' to signal.'D+';
        ref connection connect connector.CA.'4' to signal.'GND';
    }
    port def 'USB 3.2 A Standard Interface' :> 'USB A Standard Interface' {
        doc /* The typical commercial USB Type A interface with USB 3.2 support */
        port connector :>> connector : 'USB'::'Standard-A SuperSpeed Connector';
        port signal :>> signal : 'Peripheral Interfaces'::'USB 3.2';

        ref connection connect connector.'CA-SuperSpeed'.'5' to signal.'SSRX-';
        ref connection connect connector.'CA-SuperSpeed'.'6' to signal.'SSRX+';
        ref connection connect connector.'CA-SuperSpeed'.'7' to signal.'GND';
        ref connection connect connector.'CA-SuperSpeed'.'8' to signal.'SSTX-';
        ref connection connect connector.'CA-SuperSpeed'.'9' to signal.'SSTX+';
    }
    port def 'USB C Standard Interface'{
        doc /* The typical commercial USB Type C interface */
        port connector : 'USB'::'Type-C';
        port signal : 'Peripheral Interfaces'::'USB 3.0';

        ref connection connect connector.CA.A1 to signal.'GND';
        ref connection connect connector.CA.A2 to signal.'SSTX+';
        ref connection connect connector.CA.A3 to signal.'SSTX-';
        ref connection connect connector.CA.A4 to signal.VBus;
        //ref connection connect connector.CA.A5 to signal CC1;
        ref connection connect connector.CA.A6 to signal.'D+';
        ref connection connect connector.CA.A7 to signal.'D-';
        //ref connection connect connector.CA.A8 to signal.'SBU';
        ref connection connect connector.CA.A9 to signal.'VBus';
        ref connection connect connector.CA.A10 to signal.'SSRX-';
        ref connection connect connector.CA.A11 to signal.'SSRX+';
        ref connection connect connector.CA.A12 to signal.'GND';
        ref connection connect connector.CA.B1 to signal.'GND';
        ref connection connect connector.CA.B2 to signal.'SSTX+';
        ref connection connect connector.CA.B3 to signal.'SSTX-';
        ref connection connect connector.CA.B4 to signal.VBus;
        //ref connection connect connector.CA.B5 to signal CC1;
        ref connection connect connector.CA.B6 to signal.'D+';
        ref connection connect connector.CA.B7 to signal.'D-';
        //ref connection connect connector.CA.B8 to signal.'SBU';
        ref connection connect connector.CA.B9 to signal.'VBus';
        ref connection connect connector.CA.B10 to signal.'SSRX-';
        ref connection connect connector.CA.B11 to signal.'SSRX+';
        ref connection connect connector.CA.B12 to signal.'GND';
 
    }
}