package 'Ethernet Interfaces' {
    private import ScalarValues::*;
    private import 'Common Interface Library'::Signal;

    abstract port def 'Ethernet Signal' :> Signal {
        doc /*  */
        attribute IPAddress : String;
        attribute 'MAC Address' : String;
    }
    port def Ethernet :> 'Ethernet Signal' {
        doc /*  */
        port 'tx+';
        port 'tx-';
        port 'rx+';
        port 'rx-';
    }
    port def GbEthernet :> 'Ethernet Signal' {
        doc /*  */
        port 'DA+';
        port 'DA-';
        port 'DB+';
        port 'DB-';
        port 'DC+';
        port 'DC-';
        port 'DD+';
        port 'DD-';
    }
}