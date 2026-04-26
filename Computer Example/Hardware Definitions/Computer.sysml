package 'Computer System' {
    private import CPU::*;
    private import 'CPU Cooler'::*;
    private import Motherboard::*;
    private import Memory::*;
    private import Storage::*;
    private import 'Video Card'::*;
    private import Case::*;
    private import 'Power Supply'::*;

    part def Computer {
        doc /* A machine that can be programmed to carry out sequences of artithmetic or logical operations */
        part CPU :'Central Processing Unit';
        part Cooler :'CPU Cooler';
        part MB : Motherboard;
        part RAM : Memory;
        part Drive : Storage;
        part GPU : 'Video Card';
        part 'PC Case' : Case;
        part 'Power' : 'Power Supply';
    }
}