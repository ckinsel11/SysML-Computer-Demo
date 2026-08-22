package Memory {
    private import ScalarValues::*;
    private import 'Physical Interface Library'::'Abstract Definitions'::*;

    abstract part def Memory {
        doc /* A device that stores data temporarily while the computer is running */
        attribute 'First Word Latency' : Real;
        attribute 'CAS Latency' : Real;
        attribute Speed;
        attribute 'Module Size' : Real;
        port Module : 'Module Format';
    }

    abstract port def 'Module Format' {
        doc /* Memory Module Format */
    }
    port def '288-Pin DIMM' :> 'Module Format'{
        doc /* DDR4 SDRAM and DDR5 SDRAM */
    }
    port def '240-Pin DIMM' :> 'Module Format'{
        doc /* DDR2 SDRAM and DDR3 SDRAM */
    }
}