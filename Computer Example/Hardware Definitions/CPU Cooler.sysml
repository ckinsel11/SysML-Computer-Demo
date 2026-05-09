package 'CPU Cooler' {
    private import ScalarValues::*;
    private import 'Communication Interface Library'::'Abstract Definitions'::*;

    part def 'CPU Cooler' {
        doc /* A device that dissipates heat from the CPU */
        attribute 'Fan RPM' : Real;
        attribute 'Noise Level' : Real;
        attribute 'Cooling Type' : String;
        port 'Mounting Bracket' : 'Physical Mount';
    }

    part def 'Liquid CPU Cooler' :> 'CPU Cooler' {
        attribute :>>'Cooling Type' = "Liquid";
        attribute 'Radiator Size' : Real;
    }
    part def 'Air Cooler' :> 'CPU Cooler' {
        attribute :>>'Cooling Type' = "Air";
    }
}