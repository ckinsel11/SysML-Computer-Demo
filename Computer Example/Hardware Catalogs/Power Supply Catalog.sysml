package 'Power Supply Catalog' {
    private import 'Power Supply'::*;
    private import SI::*;
    private import 'Cable Connector Library'::'ATX Connectors'::*;

    package Corsair {
        part def 'RM1200x SHIFT' :> 'Power Supply' {
            attribute :>>Wattage = 1200 [W];
            attribute :>>Modular = true;
            port '18-Pin Connector';
            port '10-Pin Connector';
            port '8-Pin Connector'[8];
            port '6-Pin Connector'[6];
        }
        package 'Cables' {
            part def 'Modular ATX Cable (24-pin)' {
                port p1 : '18-Pin Connector';
                port p2 : '10-Pin Connector';
                port p3 : '24-Pin Connector';
                //These are going to be referenced from the power supply side to the 24 pin motherboard side.
                //P3 Pin 20 has no wire.
                connection connect p1.CA.'1' to p3.CA.'1';
                connection connect p1.CA.'2' to p3.CA.'2';
                connection connect p1.CA.'4' to p3.CA.'4';
                connection connect p1.CA.'3' to p3.CA.'3';
                connection connect p1.CA.'5' to p3.CA.'5';
                connection connect p1.CA.'6' to p3.CA.'6';
                connection connect p1.CA.'7' to p3.CA.'7';
                connection connect p1.CA.'8' to p3.CA.'21';
                //P1 Pin 9 has no wire.
                connection connect p1.CA.'10' to p3.CA.'13';
                connection connect p1.CA.'11' to p3.CA.'14';
                connection connect p1.CA.'12' to p3.CA.'15';
                connection connect p1.CA.'13' to p3.CA.'16';
                connection connect p1.CA.'14' to p3.CA.'17';
                connection connect p1.CA.'15' to p3.CA.'18';
                connection connect p1.CA.'16' to p3.CA.'19';
                connection connect p1.CA.'17' to p3.CA.'19';
                connection connect p1.CA.'18' to p3.CA.'10';
                
                connection connect p2.CA.'1' to p3.CA.'8';
                connection connect p2.CA.'2' to p3.CA.'9';
                connection connect p2.CA.'3' to p3.CA.'10';
                connection connect p2.CA.'4' to p3.CA.'11';
                connection connect p2.CA.'5' to p3.CA.'12';
                connection connect p2.CA.'6' to p3.CA.'13';
                connection connect p2.CA.'7' to p3.CA.'21';
                connection connect p2.CA.'8' to p3.CA.'22';
                connection connect p2.CA.'9' to p3.CA.'23';
                connection connect p2.CA.'10' to p3.CA.'24';
            }
        }
    }
    package LEPA {
        part def 'MaxBron' :> 'Power Supply' {
            attribute :>>Wattage = 1000 [W];
            attribute :>>Modular = false;
            //TODO: This PS is in a hybrid modular design where the main cables are not modular, but some are.
        }
    }


}