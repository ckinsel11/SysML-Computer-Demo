package 'Power Supply Catalog' {
    private import 'Power Supply'::*;
    private import SI::*;

    package Corsair {
        part def 'RM1200x SHIFT' :> 'Power Supply' {
            attribute :>>Wattage = 1200 [W];
            attribute :>>Modular = true;
            port '18-Pin Connector';
            port '10-Pin Connector';
            port '8-Pin Connector'[8];
            port '6-Pin Connector'[5];
            port 'PWRIn';
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