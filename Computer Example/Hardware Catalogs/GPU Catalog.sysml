package 'GPU Catalog' {
    private import 'Unit Library':: 'Digital Storage'::*;
    private import 'Unit Library':: Frequency::*;
    private import 'Video Card'::*;
    private import 'Cable Connector Library'::*;

    package ASUS {
        part def 'ASUS Prime OC RTX 5080' :> 'Video Card'{
            attribute :>> Memory = 16 [GB];
            attribute :>> 'Core Clock' = 2300 [MHz];
            port 'GPU-HDMI' [1] : HDMI::'Type A';
            port 'GPU-DP' [3] : DisplayPort::DisplayPort;
        }
    }
}