package 'Combined Interfaces Library' {
    private import 'Common Interface Library'::*;
    private import 'Cable Connector Library'::*;
    private import 'Physical Interface Library'::*;
    private import 'Serial Interfaces'::*;

    port def 'HDMI Standard A Interface' {
        doc /* The typical commercial HDMI Type A interface */
        port connector : 'HDMI Connectors'::'Type A';
        port signal : 'Video Interfaces'::HDMI;

        ref connection connect connector.CA.'1' to signal.'data 2 +';
        ref connection connect connector.CA.'2' to signal.'data 2 GND';
        ref connection connect connector.CA.'3' to signal.'data 2 -';
        ref connection connect connector.CA.'4' to signal.'data 1 +';
        ref connection connect connector.CA.'5' to signal.'data 1 GND';
        ref connection connect connector.CA.'6' to signal.'data 1 -';
        ref connection connect connector.CA.'7' to signal.'data 0 +';
        ref connection connect connector.CA.'8' to signal.'data 0 GND';
        ref connection connect connector.CA.'9' to signal.'data 0 -';
    } 
    port def 'USB A Standard Interface' {
        doc /* The typical commercial USB Type A interface */
        port connector : 'USB Connectors'::'Standard-A Connector';
        port signal : USB;

        ref connection connect connector.CA.'1' to signal.'VBus';
        ref connection connect connector.CA.'2' to signal.'D-';
        ref connection connect connector.CA.'3' to signal.'D+';
        ref connection connect connector.CA.'4' to signal.'GND';
        //TODO Discuss male/female interfaces
    }
    port def 'USB 1.0 Standard A Interface' :> 'USB A Standard Interface' {
        doc /*  */
        port signal :>> signal : 'USB 1.0';
    }
    port def 'USB 1.1 Standard A Interface' :> 'USB A Standard Interface' {
        doc /*  */
        port signal :>> signal : 'USB 1.1';
    }
    port def 'USB 2.0 Standard A Interface' :> 'USB A Standard Interface' {
        doc /*  */
        port signal :>> signal : 'USB 2.0';
    }
    port def 'USB 3.0 A Standard Interface' :> 'USB A Standard Interface' {
        doc /* The typical commercial USB Type A interface with USB 3.0 support */
        port connector :>> connector : 'USB Connectors'::'Standard-A SuperSpeed Connector';
        port signal :>> signal : 'USB 3.0';

        ref connection connect connector.'CA-SuperSpeed'.'5' to signal.'SSRX-';
        ref connection connect connector.'CA-SuperSpeed'.'6' to signal.'SSRX+';
        ref connection connect connector.'CA-SuperSpeed'.'7' to signal.'GND_Drain';
        ref connection connect connector.'CA-SuperSpeed'.'8' to signal.'SSTX-';
        ref connection connect connector.'CA-SuperSpeed'.'9' to signal.'SSTX+';
    }
    port def 'USB 3.1 A Standard Interface' :> 'USB 3.0 A Standard Interface' {
        doc /*  */
        port signal :>> signal :'USB 3.1';
    }
        port def 'USB 3.2 A Standard Interface' :> 'USB 3.0 A Standard Interface' {
        doc /*  */
        port signal :>> signal :'USB 3.2';
    }
    port def 'USB C Standard Interface' {
        doc /* The typical commercial USB Type C interface */
        port connector : 'USB Connectors'::'Type-C';
        port signal : 'USB 3.0';

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
    port def 'PCIe-1x Standard Interface' {
        doc /* The typical commercial 1-lane PCIe interface */
        port connector : 'Edge Connectors'::'PCIe-1x-Edge';
        port signal : 'Expansion Buses'::'PCIe-1x';
    }
    port def 'PCIe-4x Standard Interface' :> 'PCIe-1x Standard Interface'{
        doc /* The typical commercial 4-lane PCIe interface */
        port connector :>> connector : 'Edge Connectors'::'PCIe-4x-Edge';
        port signal :>> signal : 'Expansion Buses'::'PCIe-4x';
    }
    port def 'PCIe-8x Standard Interface' :> 'PCIe-4x Standard Interface'{
        doc /* The typical commercial 8-lane PCIe interface */
        port connector :>> connector : 'Edge Connectors'::'PCIe-8x-Edge';
        port signal :>> signal : 'Expansion Buses'::'PCIe-8x';
    }
    port def 'PCIe-16x Standard Interface' :> 'PCIe-8x Standard Interface'{
        doc /* The typical commercial 16-lane PCIe interface */
        port connector :>> connector : 'Edge Connectors'::'PCIe-16x-Edge';
        port signal :>> signal : 'Expansion Buses'::'PCIe-16x';
    }
    port def 'PCIe 6-Pin Power Standard Interface' {
        doc /* 6-pin power connector (75W) for PCIe */
        port connector : 'PCIe Connectors'::'PCIe 6-pin Power Connector';
        port signal1; //+12V
        port signal2; //GND
        port signal3; //Sense

        //ref connection connect connector.CA.'1' to ; // +12V
        //ref connection connect connector.CA.'2' to ; // Not Connected, usually +12V
        //ref connection connect connector.CA.'3' to ; // +12V
        //ref connection connect connector.CA.'4' to ; //GND
        //ref connection connect connector.CA.'5' to ; //Sense
        //ref connection connect connector.CA.'6' to ; //GND
    } 
    port def 'PCIe 8-Pin Power Standard Interface' {
        doc /* 6-pin power connector (150W) for PCIe */
        port connector : 'PCIe Connectors'::'PCIe 8-pin Power Connector';
        port signal1; //+12V
        port signal2; //GND
        port signal3; //Sense 0
        port signal4; //Sense 1

        //ref connection connect connector.CA.'1' to ; //+12V
        //ref connection connect connector.CA.'2' to ; //+12V
        //ref connection connect connector.CA.'3' to ; //+12V
        //ref connection connect connector.CA.'4' to ; //Sense 1
        //ref connection connect connector.CA.'5' to ; //GND
        //ref connection connect connector.CA.'6' to ; //Sense 0
        //ref connection connect connector.CA.'7' to ; //GND
        //ref connection connect connector.CA.'8' to ; //GND
    }
    port def 'ATX 24-Pin Standard Interface' {
        doc /*  */
        port connector : 'ATX Connectors'::'24-Pin Connector';
        port signal1; // +3.3V
        port signal2; // +5V 
        port signal3; // +12V 
        port signal4; // Ground
        port signal5; // -12V
        port signal6; // Power on
        port signal7; // Power Good

        //ref connection connect connector.CA.'1' to ; //+3.3V
        //ref connection connect connector.CA.'2' to ; //+3.3V
        //ref connection connect connector.CA.'3' to ; //GND
        //ref connection connect connector.CA.'4' to ; //+5V
        //ref connection connect connector.CA.'5' to ; //GND
        //ref connection connect connector.CA.'6' to ; //+5V
        //ref connection connect connector.CA.'7' to ; //GND
        //ref connection connect connector.CA.'8' to ; //Power Good
        //ref connection connect connector.CA.'9' to ; //+5V Standby
        //ref connection connect connector.CA.'10' to ; //+12V
        //ref connection connect connector.CA.'11' to ; //+12V
        //ref connection connect connector.CA.'12' to ; //+3.3V
        //ref connection connect connector.CA.'13' to ; //+3.3V
        //ref connection connect connector.CA.'14' to ; //-12V
        //ref connection connect connector.CA.'15' to ; //GND
        //ref connection connect connector.CA.'16' to ; //Power on
        //ref connection connect connector.CA.'17' to ; //GND
        //ref connection connect connector.CA.'18' to ; //GND
        //ref connection connect connector.CA.'19' to ; //GND
        // pin 20 has no connection
        //ref connection connect connector.CA.'21' to ; //+5V
        //ref connection connect connector.CA.'22' to ; //+5V
        //ref connection connect connector.CA.'23' to ; //+5V
        //ref connection connect connector.CA.'24' to ; //GND
    }   
    port def 'EPS 8-Pin Power Standard Interface' {
        port connector : 'EPS Connectors'::'EPS 8-Pin Connector';
        port signal1; //+12V
        port signal2; //GND

        //ref connection connect connector.CA.'1' to ; //GND
        //ref connection connect connector.CA.'2' to ; //GND
        //ref connection connect connector.CA.'3' to ; //GND
        //ref connection connect connector.CA.'4' to ; //GND
        //ref connection connect connector.CA.'5' to ; //+12V
        //ref connection connect connector.CA.'6' to ; //+12V
        //ref connection connect connector.CA.'7' to ; //+12V
        //ref connection connect connector.CA.'8' to ; //+12V
    }
}