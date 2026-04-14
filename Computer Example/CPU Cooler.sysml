package 'CPU Cooler' {
    private import ScalarValues::*;

    part def 'CPU Cooler' {
        doc /*  */
        attribute 'Fan RPM' : Real;
        attribute 'Noise Level' : Real;
        attribute 'Radiator Size' : Real;
    }
}