package 'Motherboard Catalog' {
    private import 'Unit Library':: 'Digital Storage'::*;
    private import 'Motherboard'::*;
    private import CPU::'CPU Sockets'::*;
    private import 'Cable Connector Library'::*;
    private import 'Combined Interfaces Library'::*;

    private import Chipsets::*;
    package ASUS {
        part def 'ROG STRIX X870E-E' :> Motherboard {
            attribute :>> 'Max Memory' = 256 [GB];
            attribute :>> 'Form Factor' : 'enum_Motherboard Form Factor' = 'enum_Motherboard Form Factor'::ATX;
            part :>> 'Motherboard Chipset': AMD::X870E;
            port :>> 'Memory Slots' [4];
            port :>> Socket : AM5;
            port HDMI1 [1]: 'HDMI Connectors'::'Type A';
            port 'USB-A' [9] : 'USB A Standard Interface'; 
            port 'USB-C' [4] : 'USB C Standard Interface';
            port 'Line Out' [1] : Audio::'3.5 mm';
            port '5G' [1];
            port 'SPDIF' [1]; 
        }
        part def 'Prime Z270-A' :> Motherboard {
            attribute :>> 'Max Memory' = 64 [GB];
            attribute :>> 'Form Factor' : 'enum_Motherboard Form Factor' = 'enum_Motherboard Form Factor'::ATX;
            part :>> 'Motherboard Chipset': Intel::Z270;
            port :>> Socket : LGA1151;
            port :>> 'Memory Slots' [4];
            port HDMI1 [1]: 'HDMI Connectors'::'Type A'; /* HDMI 1.4B*/
            port 'USB-A' [5] : 'USB A Standard Interface'; /* 1x 3.1, 4x 3.0*/
            port 'USB-C' [1] : 'USB C Standard Interface'; /* USB 3.1*/
            port 'Gigabit Lan' [1];
            port 'PS/2' [1];
            port 'DisplayPort1' [1] : DisplayPort::DisplayPort;
            port 'DVI1' [1];
        }
    }
}