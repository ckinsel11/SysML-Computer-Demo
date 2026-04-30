package Case {
    private import ScalarValues::*;
    private import CollectionFunctions::*;
    private import Motherboard::*;

    part def Case {
        attribute 'Case Type' : 'enum_Case Type';
        attribute 'Internal 3.5 Bays' : Integer;
        attribute Volume : Real;
        attribute 'Supported Motherboard Sizes'[1..*] : Set;
        
        port PWRButton;
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