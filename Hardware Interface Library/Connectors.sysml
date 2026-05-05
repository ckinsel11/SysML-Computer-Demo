library package 'Cable Connector Library' {
    private import 'Contact Arrangements'::*;

    abstract port def 'Cable Connector' {
        doc /*  */
        port 'CA' ;
    }

    package 'HDMI Connectors' {
        port def 'Type A' :> 'Cable Connector' {
            doc /*  */
            port :>> CA : HDMI::'HDMI Type A';
        }
    }
    package DisplayPort {
        port def 'DisplayPort' {
            doc /*  */
        }
    }
    package USB {
        port def 'Standard-A Connector' :> 'Cable Connector' {
            doc /*  */
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
    package Audio {
        port def '3.5 mm' {
            doc /*  */
        }
        port def XLR {
            doc /*  */
        }
    }
}