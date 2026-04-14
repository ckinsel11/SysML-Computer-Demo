package Motherboard {
    private import ScalarValues::*;


    part def Motherboard {
        doc /*  */
        port Socket;
        attribute 'Form Factor';
        attribute 'Max Memory';
        attribute 'Memory Slots' : Integer;
        
    }
}