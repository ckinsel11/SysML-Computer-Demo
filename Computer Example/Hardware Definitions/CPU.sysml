package CPU {
    private import ScalarValues::*;

    abstract part def 'Central Processing Unit' {
        doc /* Primary Processor of a Computer */
        attribute 'Performance Core Clock' : Real;
        attribute 'Performance Core Boost Clock' : Real;
        attribute 'Thermal Design Power' : Real;
        attribute Microarchitecture;
        attribute 'Core Count' : Integer;
        attribute 'Thread Count' : Integer;
        attribute 'Maximum Supported Memory' : Real;
        port Socket : 'CPU Sockets' :: 'CPU Socket';
    }

    package 'CPU Sockets' {
        abstract port def 'CPU Socket' {
            doc /* Physical interface on a motherboard that connects the CPU to the system */
            attribute 'Pin Count' : Integer;
        }
        port def AM4 :> 'CPU Socket' {
            doc /* Specific microprocessor Socket */
            attribute :>> 'Pin Count' = 1331;
        }
        port def AM5 :> 'CPU Socket' {
            doc /* Specific microprocessor Socket */
            attribute :>> 'Pin Count' = 1718;
        }
        port def LGA1700 :> 'CPU Socket' {
            doc /* Specific microprocessor Socket */
            attribute :>> 'Pin Count' = 1700;
        }
        port def LGA1151 :> 'CPU Socket' {
            doc /* Specific microprocessor Socket */
            attribute :>>'Pin Count' = 1151;
        }
    }
}