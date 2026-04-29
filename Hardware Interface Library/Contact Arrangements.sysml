package 'Contact Arrangements' {
    package 'USB'{
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
    }
    package HDMI{
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
    package ATX {
        port def 'ATX 24-Pin' {
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
    }
    package EPS {
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
    package 'PCI Express' {
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
    package 'SATA' {
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
}