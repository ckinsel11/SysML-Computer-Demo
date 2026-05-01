package 'Video Card' {
    private import ScalarValues::*;
    
    part def 'Video Card' {
        doc /* A video card, also known as a graphics card, is a hardware component responsible for rendering images and video output. */
        attribute Chipset;
        attribute Memory : Real;
        attribute 'Core Clock' : Real;
        attribute 'Boost Clock' : Real;
        attribute Length : Real;
        attribute 'Thermal Design Power' : Real;
        
        port PCIe;  /* Note: This is both a physical connector and a communication interface */
        port VideoOut[1..*];  /* Note: These can both a physical connector and a communication interface */
        port PowerIn;  /* Note: This is both a physical connector and a communication interface */
    }
}