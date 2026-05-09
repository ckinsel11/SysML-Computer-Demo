package 'Computer System' {
    private import NumericalFunctions::*;
    private import CollectionFunctions::*;
    private import SequenceFunctions::*;
    private import CPU::*;
    private import 'CPU Cooler'::*;
    private import Motherboard::*;
    private import Memory::*;
    private import Storage::*;
    private import 'Video Card'::*;
    private import Case::*;
    private import 'Power Supply'::*;

    part def Computer {
        doc /* A machine that can be programmed to carry out sequences of artithmetic or logical operations */
        part CPU[1] :'Central Processing Unit';
        part Cooler[1] :'CPU Cooler';
        part MB[1] : Motherboard;
        part RAM[1..4] : Memory;
        part Drive[1..*] : Storage;
        part GPU[1] : 'Video Card';
        part 'PC Case'[1] : Case;
        part 'Power'[1] : 'Power Supply';

        connection connect CPU.Socket to MB.Socket;
        connection connect Cooler.'Mounting Bracket' to MB.'Cooler Mount';

        assert constraint socketCompatibility : SocketCompatibility {
            in CPUCnst = CPU;
            in MBCnst = MB;
        }
        assert constraint powerAvailability : PowerAvailability {
            in PSCnst = 'Power';
            in CPUCnst = CPU;
            in GPUCnst = GPU;
        }
        assert constraint memoryAvailability : MemoryAvailability {
            in CPUCnst = CPU;
            in RAMCnst = RAM;
        }
        assert constraint memorySlots : MemorySlots {
            in MBCnst = MB;
            in RAMCnst = RAM;
        }
        assert constraint sizeCompatibility : SizeCompatibility {
            in CaseCnst = 'PC Case';
            in MBCnst = MB;
        }
        assert constraint coolingCompatibility : CoolingCompatibility {
            in CoolerCnst = Cooler;
            in MBCnst = MB;
        }
    }

    constraint def SocketCompatibility {
        doc /* The CPU and Motherboard must have compatible sockets */
        in CPUCnst[1] :'Central Processing Unit';
        in MBCnst[1] : Motherboard;
        CPUCnst.Socket == MBCnst.Socket
    }
    constraint def PowerAvailability {
        doc /* The Power Supply must provide enough wattage for the components */
        in PSCnst[1] : 'Power Supply';
        in CPUCnst[1] :'Central Processing Unit';
        in GPUCnst[1] : 'Video Card';
        PSCnst.Wattage >= (CPUCnst.'Thermal Design Power' + GPUCnst.'Thermal Design Power')
    }
    constraint def MemoryAvailability {
        doc /* The CPU must support the amount of RAM */
        in CPUCnst[1] :'Central Processing Unit';
        in RAMCnst[1..4] : Memory;
        sum(RAMCnst.'Module Size') <= CPUCnst.'Maximum Supported Memory'
    }
    constraint def MemorySlots {
        doc /* The Motherboard must have enough memory slots for the RAM */
        in MBCnst[1] : Motherboard;
        in RAMCnst[1..4] : Memory;
        //MBCnst.'Memory Slots' >= size(RAMCnst)
    }
    constraint def SizeCompatibility{
        doc /* The PC Case must be compatible with the size of the Motherboard */
        in CaseCnst[1] : Case;
        in MBCnst[1] : Motherboard;
        notEmpty(intersection(CaseCnst.'Supported Motherboard Sizes', MBCnst.'Form Factor'))
    }
    constraint def CoolingCompatibility {
        doc /* The CPU Cooler must be compatible with the CPU socket */
        in CoolerCnst[1] :'CPU Cooler';
        in MBCnst[1] : Motherboard;
        CoolerCnst.'Mounting Bracket' == MBCnst.'Cooler Mount'
    }
}