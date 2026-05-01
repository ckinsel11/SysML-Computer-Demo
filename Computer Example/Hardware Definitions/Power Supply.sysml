package 'Power Supply' {
    private import ScalarValues::Real;
    private import ScalarValues::Integer;

    part def 'Power Supply' {
        doc /* An electrical device that converts electric current from a source into the correct form for use by the computer */
        attribute 'Efficiency Rating';
        attribute Wattage : Real;
        attribute Modular;
    }
}