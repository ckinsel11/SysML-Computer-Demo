package Motherboard {
    private import ScalarValues::*;
    private import 'CPU Sockets'::*;

    part def Motherboard {
        doc /*  */
        port Socket : 'CPU Socket';
        part Chipset;
        attribute 'Form Factor';
        attribute 'Max Memory' : Integer;
        attribute 'Memory Slots' : Integer;
    }
}