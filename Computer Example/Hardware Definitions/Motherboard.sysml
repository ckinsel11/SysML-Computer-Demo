package Motherboard {
    private import ScalarValues::*;
    private import 'CPU Sockets'::*;
    private import 'Chipsets'::*;

    part def Motherboard {
        doc /* The main printed circuit board (PCB) in general purpose computers and other expandable systems */
        part 'Motherboard Chipset' : Chipset;
        attribute 'Form Factor' : 'enum_Motherboard Form Factor';
        attribute 'Max Memory' : Integer;
        
        port Socket : 'CPU Socket';
        port PowerIn;
        port 'Memory Slots'[1..*];

    }

    enum def 'enum_Motherboard Form Factor' {
        enum 'ATX';
        enum 'Micro-ATX';
        enum 'Mini-ITX';
    }
}