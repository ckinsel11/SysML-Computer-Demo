package 'Electrical Power Interfaces'{
    private import ScalarValues::*;
    private import ISQBase::*;
    private import SI::*;
    private import 'Unit Library'::Time::*;

    item def 'ElectricalPower' {
        doc /*  */
    }
    abstract port def 'Electrical Power' {
        doc /*  */
        attribute 'Nominal Voltage' : Real default 0 [V];
    }
    attribute def 'Load Characteristics' {
        doc /*  */
        attribute InRushTime : Real default 0 [ms];
        attribute InRushCurrent : Real default 0 [A];
        attribute PeakPowerTime : Real default 0 [ms];
        attribute PeakPower : Real default 0 [W];
        attribute SSPower : Real default 0 [W];
    }
    attribute def 'Load Channel' {
        doc /*  */
        attribute MaxCurrent : Real default 0 [A];
    }

    item def ElectricalDC :> ElectricalPower {
        doc /*  */
    }
    item def ElectricalAC :> ElectricalPower {
        doc /*  */
    }
    item def Electrical3Phase :> ElectricalPower {
        doc /*  */
    }
    abstract port def 'Electrical Power DC' :> 'Electrical Power' {
        doc /*  */
        port Supply;
        port Return;
    }
    abstract port def 'Electrical Power AC' :> 'Electrical Power' {
        doc /*  */
        port Hot;
        port Neutral;
        port Ground;
    }
    abstract port def 'Electrical Power 3 Phase' :> 'Electrical Power' {
        doc /*  */
        port PhaseA;
        port PhaseB;
        port PhaseC;
    }

    abstract port def 'Load Controller' {
        doc /*  */
        attribute Channel : 'Load Channel';
        attribute ChannelNumber : String;
        attribute 'Trip Setting': Real [1] default 0 [A];
        out item pwrOut : ElectricalPower;
    }
    abstract port def 'DC Load Controller' :> 'Load Controller' {
        doc /*  */
        out item pwrOutDC : ElectricalDC :>> pwrOut;
    }
    abstract port def 'AC Load Controller' :> 'Load Controller' {
        doc /*  */
        out item pwrOutAC :>> pwrOut : ElectricalAC;
    }
    abstract port def '3Phase Load Controller' :> 'Load Controller' {
        doc /*  */
        out item pwrOut3Phase : 'Electrical Power 3 Phase' :>> pwrOut;
    }

    abstract port def 'Power System Device' {
        doc /*  */
        in item pwrIn : ElectricalPower;
    }
    abstract port def 'DC Power System Device' :> 'Power System Device' {
        doc /*  */
        in item pwrInDC : ElectricalDC :>> pwrIn;
    }
    abstract port def 'AC Power System Device' :> 'Power System Device' {
        doc /*  */
        in item pwrInAC :>> pwrIn : ElectricalAC;
    }
    abstract port def '3Phase Power System Device' :> 'Power System Device' {
        doc /*  */
        in item pwrIn3Phase : 'Electrical Power 3 Phase' :>> pwrIn;
    }

    package 'DC Power Library' {
        item def '3.3VDC';
        abstract port def 'Pwr 3.3VDC' :> 'Electrical Power DC' {
            doc /*  */
            attribute :>>'Nominal Voltage' : Real = 3.3[V];
        }
        port def 'PwrIn 3.3VDC' :> 'Pwr 3.3VDC', 'DC Power System Device' {
            doc /*  */
            in item '3.3VDC' :>> pwrInDC : 'DC Power Library'::'3.3VDC';
        }
        port def 'PwrOut 3.3VDC' :> 'Pwr 3.3VDC', 'DC Load Controller' {
            doc /*  */
            out item '3.3VDC' :>> pwrOutDC : 'DC Power Library'::'3.3VDC';
        }

        item def '5VDC';
        abstract port def 'Pwr 5VDC' :> 'Electrical Power DC' {
            doc /*  */
            attribute :>>'Nominal Voltage' : Real = 5[V];
        }
        port def 'PwrIn 5VDC' :> 'Pwr 3.3VDC', 'DC Power System Device' {
            doc /*  */
            in item '5VDC' :>> pwrInDC : 'DC Power Library'::'5VDC';
        }
        port def 'PwrOut 5VDC' :> 'Pwr 3.3VDC', 'DC Load Controller' {
            doc /*  */
            out item '5VDC' :>> pwrOutDC : 'DC Power Library'::'5VDC';
        }

        item def '12VDC';
        abstract port def 'Pwr 12VDC' :> 'Electrical Power DC' {
            doc /*  */
            attribute :>>'Nominal Voltage' : Real = 12[V];
        }
        port def 'PwrIn 12VDC' :> 'Pwr 3.3VDC', 'DC Power System Device' {
            doc /*  */
            in item '12VDC' :>> pwrInDC : 'DC Power Library'::'12VDC';
        }
        port def 'PwrOut 12VDC' :> 'Pwr 3.3VDC', 'DC Load Controller' {
            doc /*  */
            out item '12VDC' :>> pwrOutDC : 'DC Power Library'::'12VDC';
        }
    }
}