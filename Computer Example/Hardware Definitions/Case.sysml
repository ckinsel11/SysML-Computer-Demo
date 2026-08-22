package Case {
    private import ScalarValues::*;
    private import CollectionFunctions::*;
    private import 'Physical Interface Library'::'Abstract Definitions'::*;
    private import Motherboard::*;

    abstract part def Case {
        doc /* The enclosure that contains the computer components. */
        attribute 'Case Type' : 'enum_Case Type';
        attribute 'Internal 3.5 Bays' : Integer;
        attribute Volume : Real;
        attribute 'Supported Motherboard Sizes' : 'enum_Motherboard Form Factor'[0..*];
        
        port PWRButton; //TODO: Type this switch
        port 'card Mount' : 'Physical Mount';
        port 'ps Mount' : 'Physical Mount';
        port 'mb Mount' : 'Physical Mount';
    }

    enum def 'enum_Case Type' {
        enum SFF {
            doc /* Small Form Factor for Mini-ITX motherboards */
        }
        enum 'Mini-Tower' {
            doc /* For Mini-ITX motherboards */
        }
        enum 'Micro-Tower' {
            doc /* For Micro-ATX motherboards, smaller than full size but not super small*/
        }
        enum 'Mid-Tower' {
            doc /* For ATX and larger mother boards. The "standard" size desktop case */
        }
        enum 'Full-Tower' {
            doc /* HUGE. Can fit any motherboard. */
        }
    }
}