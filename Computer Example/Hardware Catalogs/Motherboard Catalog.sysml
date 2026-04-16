package 'Motherboard Catalog' {
    private import 'Unit Library':: 'Digital Storage'::*;
    private import 'Motherboard'::Motherboard;
    private import 'CPU Sockets'::*;
    private import 'Cable Connector Library'::*;

    private import Chipsets::*;
    package ASUS {
        part def 'ROG STRIX X870E-E' :> Motherboard {
            attribute :>> Socket : AM5;
            attribute :>> 'Max Memory' = 256 [GB];
            attribute :>> 'Memory Slots' = 4;
            attribute :>> 'Form Factor';
            part :>> Chipset: AMD::X870E;
            port HDMI1 [1]: HDMI::'Type A';
            port 'USB-A' [9] : USB::'Standard-A';
            port 'USB-C' [4] : USB::'Type-C';
            port 'Line Out' [1] : Audio::'3.5 mm';
            port '5G' [1];
            port 'SPDIF' [1]; 
        }
        
    }
}