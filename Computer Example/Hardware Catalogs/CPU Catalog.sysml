package 'CPU Catalog'{
    private import CPU::*;
    private import 'CPU Sockets'::*;
    private import 'Unit Library'::Frequency::*;
    private import 'Unit Library'::'Digital Storage'::*;
    private import SI::*;

    package AMD {
        part def 'Ryzen 7 9800 X3D' :>'Central Processing Unit'{
            port :>> Socket : AM5;
            attribute :>>'Performance Core Clock' = 4.7 [GHz];
            attribute :>>'Performance Core Boost Clock' = 5.2 [GHz];
            attribute :>>'Thermal Design Power' = 120 [W];
            attribute :>> 'Core Count' = 8;
            attribute :>> 'Thread Count' = 16;
            attribute :>> 'Maximum Supported Memory' = 192 [GB];
        }
    }
    package Intel {
        part def 'Core i7-14700K' :> 'Central Processing Unit'{
            port :>> Socket : LGA1700;
            attribute :>>'Performance Core Clock' = 3.4 [GHz];
            attribute :>>'Performance Core Boost Clock' = 5.6 [GHz];
            attribute :>>'Thermal Design Power' = 125 [W];
            attribute :>>'Core Count' = 20;
            attribute :>>'Thread Count' = 28;
            attribute :>>'Maximum Supported Memory' = 192 [GB];
        }
    }
}