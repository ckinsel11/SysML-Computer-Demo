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

    abstract part def Computer {
        doc /* A machine that can be programmed to carry out sequences of arithmetic or logical operations */
        part cpu[1] :'Central Processing Unit';
        part cooler[1] :'CPU Cooler';
        part motherboard[1] : Motherboard;
        part ram[1..4] : Memory;
        part drive[1..*] : Storage;
        part gpu[1] : 'Video Card';
        part 'case'[1] : Case;
        part 'power'[1] : 'Power Supply';

        connection connect cpu.Socket to motherboard.Socket;
        connection connect cooler.'Mounting Bracket' to motherboard.'Cooler Mount';
        connection connect ram.Module to motherboard.'Memory Slots';
        connection connect gpu.PCIe to motherboard.'PCIe';
        
        connection connect gpu.'Case Mount' to 'case'.'card Mount';
        connection connect power.'Case Mount' to 'case'.'ps Mount';
        connection connect motherboard.'Case Mount' to 'case'.'mb Mount';
        
        //connection connect power supply to motherboard
        //connection connect power supply to gpu
        //connection power supply
        //connection connect power supply to hdd (not necessarily)
        //connection connect sdd to motherboard
        //connection connect

        assert constraint socketCompatibility : SocketCompatibility {
            in CPUCnst = cpu;
            in MBCnst = motherboard;
        }
        assert constraint powerAvailability : PowerAvailability {
            in PSCnst = power;
            in CPUCnst = cpu;
            in GPUCnst = gpu;
        }
        assert constraint memoryAvailability : MemoryAvailability {
            in CPUCnst = cpu;
            in RAMCnst = ram;
        }
        assert constraint memorySlots : MemorySlots {
            in MBCnst = motherboard;
            in RAMCnst = ram;
        }
        assert constraint sizeCompatibility : SizeCompatibility {
            in CaseCnst = 'case';
            in MBCnst = motherboard;
        }
        assert constraint coolingCompatibility : CoolingCompatibility {
            in CoolerCnst = cooler;
            in MBCnst = motherboard;
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
        //contains (CaseCnst.'Supported Motherboard Sizes', MBCnst.'Form Factor')
    }
    constraint def CoolingCompatibility {
        doc /* The CPU Cooler must be compatible with the CPU socket */
        in CoolerCnst[1] :'CPU Cooler';
        in MBCnst[1] : Motherboard;
        CoolerCnst.'Mounting Bracket' == MBCnst.'Cooler Mount'
    }
}