library package 'Cable Connector Library'{
    private import 'Contact Arrangements'::*;

    abstract port def 'Cable Connector' {
        doc /* Generic cable connector definition to establish property spaces */
        port 'CA';
    }

    package 'HDMI Connectors' {
        port def 'Type A' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'HDMI Contact Arrangements'::'HDMI Type A';
        }
    }
    package 'DisplayPort Connectors' {
        port def 'DisplayPort'{
            doc /*  */
        }
    }
    package 'USB Connectors' {
        port def 'Standard-A Connector' :> 'Cable Connector' {
            doc /*  USB A Standard physical connector not tied to the communication interface*/
                port CA :>> CA : 'USB Contact Arrangements'::'USB Type A';
        }
        port def 'Standard-A SuperSpeed Connector' :> 'Standard-A Connector' {
            doc /*  */
                port 'CA-SuperSpeed' :>> CA : 'USB Contact Arrangements'::'USB Type A SuperSpeed';
        }
        port def 'Standard-B' :> 'Cable Connector' {
            doc /*  */
                port :>> CA : 'USB Contact Arrangements'::'USB Type B';
        }
        port def 'Mini-A' {
            doc /*  */
        }
        port def 'Mini-AB' {
            doc /*  */
        }
        port def 'Mini-B' {
            doc /*  */
        }
        port def 'Micro-A' {
            doc /*  */
        }
        port def 'Micro-AB' {
            doc /*  */
        }
        port def 'Micro-B' {
            doc /*  */
        }
        port def 'Type-C' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'USB Contact Arrangements'::'USB Type C';
        }
    }
    package 'Audio Connectors'{
        port def '3.5 mm - 4-Contact' :> 'Cable Connector'{
            doc /*  */
            port CA :>> CA : 'Phone Connectors Contact Arrangements'::TRRS;
        }
        port def XLR :> 'Cable Connector'{
            doc /*  */
            port CA :>> CA : 'XLR Connector Contact Arrangements'::'XLR 3-Pin';
        }
    }
    package 'ATX Connectors' {
        port def '24-Pin Connector' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'ATX Contact Arrangements'::'ATX 24-Pin';
        }
        port def '18-Pin Connector' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'ATX Contact Arrangements'::'ATX 18-Pin';
        }
        port def '10-Pin Connector' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'ATX Contact Arrangements'::'ATX 10-Pin';
        }
    }
    package 'PCIe Connectors' {
        port def 'PCIe 6-pin Power Connector' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'PCI Express Contact Arrangements'::'PCIe 6-Pin';
        }
        port def 'PCIe 8-pin Power Connector' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : 'PCI Express Contact Arrangements'::'PCIe 8-Pin';
        }
    }
    package 'EPS Connectors' {
        port def 'EPS 8-Pin Connector' {
            doc /*  */
            port CA : 'EPS Contact Arrangements'::'EPS 8-Pin';
        }
    }
}