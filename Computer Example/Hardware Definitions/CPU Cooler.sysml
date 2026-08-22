package 'CPU Cooler' {
    private import ScalarValues::*;
    private import 'Physical Interface Library'::'Abstract Definitions'::*;

    abstract part def 'CPU Cooler' {
        doc /* A device that dissipates heat from the CPU */
        attribute 'Fan RPM' : Real;
        attribute 'Noise Level' : Real;
        attribute 'Cooling Type' : String;
        port 'Mounting Bracket' : 'Physical Mount';
    }

    abstract part def 'Liquid CPU Cooler' :> 'CPU Cooler' {
        attribute :>>'Cooling Type' = "Liquid";
        attribute 'Radiator Size' : Real;
    }
    abstract part def 'Air Cooler' :> 'CPU Cooler' {
        attribute :>>'Cooling Type' = "Air";
    }

    port def 'AMD Bracket' :> 'Physical Mount' {
        doc /* Bracket that is attached to the CPU Cooler that can mount to an AMD CPU Motherboard */
    }
    port def 'Intel Bracket' :> 'Physical Mount' {
        doc /* Bracket that is attached to the CPU Cooler that can mount to an Intel CPU Motherboard */
    }
}