package 'Cases Catalog'{
    private import Case::*;
    private import 'Cable Connector Library'::USB::*;
    private import 'Cable Connector Library'::Audio::*;
    private import 'SI'::*;
    
    package 'be quiet!'{
        part def 'Dark Base Pro 901' :> Case {
            attribute :>> 'Case Type' : 'enum_Case Type'= 'enum_Case Type'::'Full-Tower';
            attribute :>>Volume = 94.511 [L];
            attribute :>>'Internal 3.5 Bays' = 2;
            port 'USB 3.2 Type A'[4] : 'Standard-A';
            port 'USB 3.2 Type C'[1] : 'Type-C';
            port 'Microphone' : '3.5 mm';
            port 'Headphone' : '3.5 mm';
        }
    }
}