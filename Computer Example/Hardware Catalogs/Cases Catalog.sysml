package 'Cases Catalog' {
    private import Collections::*;
    private import Case::*;
    private import 'Combined Interfaces Library'::*;
    private import 'Cable Connector Library'::USB::*;
    private import 'Cable Connector Library'::Audio::*;
    private import 'SI'::*;
    private import Motherboard::*;
    
    package 'be quiet!' {
        part def 'Dark Base Pro 901' :> Case {
            attribute :>>'Case Type' = 'enum_Case Type'::'Full-Tower';
            attribute :>>Volume = 94.511 [L];
            attribute :>>'Internal 3.5 Bays' = 2;
            attribute :>> 'Supported Motherboard Sizes' = ('enum_Motherboard Form Factor'::ATX, 'enum_Motherboard Form Factor'::'Micro-ATX', 'enum_Motherboard Form Factor'::'Mini-ITX');
            port 'USB 3.2 Type A'[4] : 'USB 3.2 A Standard Interface';
            port 'USB 3.2 Type C'[1] : 'USB C Standard Interface';
            port 'Microphone' : '3.5 mm';
            port 'Headphone' : '3.5 mm';
        }
    }
    package DIYPC {
        part def 'Vanguard-RGB' :> Case {
            attribute :>>'Case Type' = 'enum_Case Type'::'Mid-Tower';
            attribute :>>'Internal 3.5 Bays' = 3;
            port 'USB 2.0 Type A'[2] : 'USB A Standard Interface';
            port 'USB 3.0 Type A'[2] : 'USB A Standard Interface';
            port 'Microphone' : '3.5 mm';
            port 'Headphone' : '3.5 mm';
        }
    }
}