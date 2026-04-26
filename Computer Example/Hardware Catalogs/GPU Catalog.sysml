package 'GPU Catalog' {
    private import SI::*;
    private import 'Unit Library':: 'Digital Storage'::*;
    private import 'Unit Library':: Frequency::*;
    private import 'Video Card'::*;
    private import 'Cable Connector Library'::*;

    package ASUS {
        part def 'ASUS Prime OC RTX 5080' :> 'Video Card' {
            attribute :>> Memory = 16 [GB];
            attribute :>> 'Core Clock' = 2300 [MHz];
            attribute :>> Length = 306 [mm];
            port 'GPU-HDMI' [1] : HDMI::'Type A';
            port 'GPU-DP' [3] : DisplayPort::DisplayPort;
        }
    }
    package Gigabyte {
        part def 'AORUS GeForce GTX 1080 Ti' :> 'Video Card' {
            attribute :>> Memory = 11 [GB];
            attribute :>> 'Core Clock' = 1594 [MHz];
            attribute :>> 'Boost Clock' = 1708 [MHz];
            attribute :>> Length = 293 [mm];
            port 'GPU-HDMI'[2] : HDMI::'Type A';
            port 'GPU-DP'[3] : DisplayPort::DisplayPort;
            port 'GPU-DVI'[1];
        }
    }
}