package 'Video Card' {
    private import ScalarValues::*;
    private import 'Physical Interface Library'::*;
    
    part def 'Video Card' {
        doc /* A video card, also known as a graphics card, is a hardware component responsible for rendering images and video output. */
        attribute Chipset;
        attribute Memory : Real;
        attribute 'Core Clock' : Real;
        attribute 'Boost Clock' : Real;
        attribute Length : Real;
        attribute 'Thermal Design Power' : Real;
        
        port 'Case Mount' : 'Abstract Definitions'::'Physical Mount';
        port PCIe;
        port VideoOut[1..*];  
        port PowerIn;  
    }
}