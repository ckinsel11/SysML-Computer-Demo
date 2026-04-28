package 'Video Card' {
    private import ScalarValues::*;
    
    part def 'Video Card' {
        attribute Chipset;
        attribute Memory : Real;
        attribute 'Core Clock' : Real;
        attribute 'Boost Clock' : Real;
        attribute Length : Real;
        attribute 'Thermal Design Power' : Real;
    }
}