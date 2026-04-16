package 'Power Supply' {
    private import ScalarValues::Real;
    private import ScalarValues::Integer;

    part def 'Power Supply' {
        attribute 'Efficiency Rating';
        attribute Wattage : Real;
        attribute Modular;
        
    }
}