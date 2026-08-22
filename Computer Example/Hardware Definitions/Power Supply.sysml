package 'Power Supply' {
    private import ScalarValues::*;
    private import 'Physical Interface Library'::'Abstract Definitions'::*;

    abstract part def 'Power Supply' {
        doc /* An electrical device that converts electric current from a source into the correct form for use by the computer */
        attribute 'Efficiency Rating' : 'enum_Efficiency Rating';
        attribute Wattage : Real;
        attribute Modular : Boolean;
        port 'Case Mount' : 'Physical Mount';
    }

    //TODO: Figure out how I want to represent the power supplies with cables pre-attached, or those that are Modular.
    //TODO: Modular is usually a boolean, but there is a hybrid option where some cables are not modular and some are.

    enum def 'enum_Efficiency Rating' {
        doc /*  */
        enum Standard {
            doc /*  */
        }
        enum Bronze {
            doc /*  */
        }
        enum Silver {
            doc /*  */
        }
        enum Gold {
            doc /*  */
        }
        enum Platinum {
            doc /*  */
        }
        enum Titanium {
            doc /*  */
        }
        enum Ruby {
            doc /*  */
        }
    }
}