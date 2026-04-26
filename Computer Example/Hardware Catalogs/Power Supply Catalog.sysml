package 'Power Supply Catalog' {
    private import 'Power Supply'::*;
    private import SI::*;

    package Corsair {
        part def 'RM1200x SHIFT' :> 'Power Supply' {
            attribute :>>Wattage = 1200 [W];
        }
    }
    package LEPA {
        part def 'MaxBron' :> 'Power Supply' {
            attribute :>>Wattage = 1000 [W];
        }
    }
}