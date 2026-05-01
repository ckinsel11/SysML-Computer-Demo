package Memory {
    private import ScalarValues::*;

    part def Memory {
        doc /* A device that stores data temporarily while the computer is running */
        attribute 'First Word Latency' : Real;
        attribute 'CAS Latency' : Real;
        attribute Speed;
        attribute 'Module Size' : Real;
    }
}