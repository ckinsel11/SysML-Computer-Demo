package 'Contact Arrangements' {
    package 'USB Contact Arrangements' {
        port def 'USB Type A' {
            port '1';
            port '2';
            port '3';
            port '4';
        }
        port def 'USB Type A SuperSpeed' :> 'USB Type A' {
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
        }
        port def 'USB Type B' {
            port '1';
            port '2';
            port '3';
            port '4';
        }
        port def 'USB Type B SuperSpeed' :> 'USB Type B' {
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
        }
        port def 'Mini-A' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
        port def 'Mini-AB' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
        port def 'Mini-B' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
        port def 'Micro-A' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
        port def 'Micro-A SuperSpeed' :> 'Micro-A' {
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
        }
        port def 'Micro-AB' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
        port def 'Micro-AB SuperSpeed' :> 'Micro-AB' {
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
        }
        port def 'Micro-B' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
        port def 'USB Type C' {
            port A1;
            port A2;
            port A3;
            port A4;
            port A5;
            port A6;
            port A7;
            port A8;
            port A9;
            port A10;
            port A11;
            port A12;
            port B1;
            port B2;
            port B3;
            port B4;
            port B5;
            port B6;
            port B7;
            port B8;
            port B9;
            port B10;
            port B11;
            port B12;
        }
    }
    package 'HDMI Contact Arrangements' {
        port def 'HDMI Type A' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
            port '11';
            port '12';
            port '13';
            port '14';
            port '15';
            port '16';
            port '17';
            port '18';
            port '19';
        }
    }
    package 'ATX Contact Arrangements' {
        port def 'ATX 24-Pin' {
            //NOTE: These are numbered as if looking into the Power Supply
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
            port '11';
            port '12';
            port '13';
            port '14';
            port '15';
            port '16';
            port '17';
            port '18';
            port '19';
            port '20';
            port '21';
            port '22';
            port '23';
            port '24';
        }
        port def 'ATX 18-Pin' {
            //NOTE: These are numbered as if looking into the Power Supply
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
            port '11';
            port '12';
            port '13';
            port '14';
            port '15';
            port '16';
            port '17';
            port '18';
        }
        port def 'ATX 10-Pin' {
        //NOTE: These are numbered as if looking into the Power Supply
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
        }
    }
    package 'EPS Contact Arrangements' {
        port def 'EPS 8-Pin' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
        }
    }
    package 'PCI Express Contact Arrangements' {
        port def 'PCIe 6-Pin' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
        }
        port def 'PCIe 8-Pin' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
        }
    }
    package 'SATA Contact Arrangements' {
        port def 'SATA Power' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
            port '8';
            port '9';
            port '10';
            port '11';
            port '12';
            port '13';
            port '14';
            port '15';
        }
        port def 'SATA Data' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
            port '6';
            port '7';
        }
    }
    package 'Phone Connectors Contact Arrangements' {
        port def 'TS'{
            port 'Tip';
            port 'Sleeve';
        }
        port def 'TRS'{
            port 'Tip';
            port 'Ring';
            port 'Sleeve';
        }
        port def 'TRRS'{
            port 'Tip';
            port 'Ring 1';
            port 'Ring 2';
            port 'Sleeve';
        }
        port def 'TRRRS'{
            port 'Tip';
            port 'Ring 1';
            port 'Ring 2';
            port 'Ring 3';
            port 'Sleeve';
        }
    }
    package 'XLR Connector Contact Arrangements' {
        port def 'XLR 3-Pin' {
            port '1';
            port '2';
            port '3';
        }
        port def 'XLR 4-Pin' {
            port '1';
            port '2';
            port '3';
            port '4';
        }
        port def 'XLR 5-Pin' {
            port '1';
            port '2';
            port '3';
            port '4';
            port '5';
        }
    }
}