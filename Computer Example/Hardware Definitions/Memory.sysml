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
}