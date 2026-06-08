package 'Power Supply' {
    private import ScalarValues::Real;
    private import ScalarValues::Integer;
    private import 'Physical Interface Library'::'Abstract Definitions'::*;

    abstract part def 'Power Supply' {
        doc /* An electrical device that converts electric current from a source into the correct form for use by the computer */
        attribute 'Efficiency Rating';
        attribute Wattage : Real;
        attribute Modular;
        port 'Case Mount' : 'Physical Mount';
    }
}