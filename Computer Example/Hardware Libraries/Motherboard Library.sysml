package 'Motherboard Library' {
    private import 'Unit Library':: 'Digital Storage'::*;
    private import 'Motherboard'::Motherboard;
    private import 'CPU Sockets'::*;
    private import Chipsets::*;
    package ASUS {
        part 'ROG STRIX X870E-E' : Motherboard {
            attribute :>> Socket : AM5;
            attribute :>> 'Max Memory' = 256 [GB];
            attribute :>> 'Memory Slots' = 4;
            attribute :>> 'Form Factor';
            part :>> Chipset: AMD::X870E;
        }
        
    }
}