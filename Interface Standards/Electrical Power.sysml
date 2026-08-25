package 'Electrical Power Interfaces'{
    private import ScalarValues::*;
    private import ISQBase::*;

    abstract port def 'Electrical Power' {
        doc /*  */
        attribute 'Nominal Voltage' : Real;
    }
    abstract port def 'Electrical Power DC' :> 'Electrical Power' {
        doc /*  */
    }
    abstract port def 'Electrical Power AC' :> 'Electrical Power' {
        doc /*  */
    }

    abstract port def 'Load Controller' {
        doc /*  */
        attribute Channel;
        attribute ChannelNumber : String;
        attribute 'Trip Setting': Real; //TODO: Should this be ElectricCurrentValue?
    }
    abstract port def 'DC Load Controller' :> 'Load Controller' {
        doc /*  */
    }
    abstract port def 'AC Load Controller' :> 'Load Controller' {
        doc /*  */
    }

    abstract port def 'Power System Device' {
        doc /*  */
    }
    abstract port def 'DC Power System Device' :> 'Power System Device' {
        doc /*  */
    }
    abstract port def 'AC Power System Device' :> 'Power System Device' {

    }

    package 'DC Power Variants' {
        abstract port def 'Pwr 3.3VDC' :> 'Electrical Power DC' {
            doc /*  */
        }
        item def '3.3VDC';
        port def 'PwrIn 3.3VDC' :> 'Pwr 3.3VDC', 'DC Power System Device' {
            doc /*  */
            in item '3.3VDC' : 'DC Power Variants'::'3.3VDC';
        }
        port def 'PwrOut 3.3VDC' :> 'Pwr 3.3VDC', 'DC Load Controller' {
            doc /*  */
            out item '3.3VDC' : 'DC Power Variants'::'3.3VDC';
        }

        abstract port def 'Pwr 5VDC' :> 'Electrical Power DC' {
            doc /*  */
        }
        item def '5VDC';
        port def 'PwrIn 5VDC' :> 'Pwr 3.3VDC', 'DC Power System Device' {
            doc /*  */
            in item '5VDC' : 'DC Power Variants'::'5VDC';

        }
        port def 'PwrOut 5VDC' :> 'Pwr 3.3VDC', 'DC Load Controller' {
            doc /*  */
            out item '5VDC' : 'DC Power Variants'::'5VDC';
        }

        abstract port def 'Pwr 12VDC' :> 'Electrical Power DC' {
            doc /*  */
        }
        item def '12VDC';
        port def 'PwrIn 12VDC' :> 'Pwr 3.3VDC', 'DC Power System Device' {
            doc /*  */
            in item '12VDC' : 'DC Power Variants'::'12VDC';
        }
        port def 'PwrOut 12VDC' :> 'Pwr 3.3VDC', 'DC Load Controller' {
            doc /*  */
            out item '12VDC' : 'DC Power Variants'::'12VDC';
        }
    }
}