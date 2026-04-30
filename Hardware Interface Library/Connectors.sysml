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
        port def 'Standard-A' {
            doc /*  */
        }
        port def 'Standard-B' {
            doc /*  */
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
        port def 'Type-C' {
            doc /*  */
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