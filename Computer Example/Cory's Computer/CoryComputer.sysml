package 'Cory Computer' {
    private import 'Computer System'::*;
    private import 'Cases Catalog'::*;
    private import 'Power Supply Catalog'::*;
    private import 'CPU Catalog'::*;
    private import 'Motherboard Catalog'::*;
    private import 'GPU Catalog'::*;
    private import 'Memory Catalog'::*;
    private import 'Storage Catalog'::*;
    private import 'CPU Cooler Catalog'::*;

    part def 'Cory Computer 2026' :> 'Computer System'::Computer {
        doc /* My personal computer build design. */
        part 'PC Case' : 'be quiet!'::'Dark Base Pro 901' :>> 'PC Case';
        part PS : Corsair::'RM1200x SHIFT' :>> 'Power';
        part MB : ASUS:: 'ROG STRIX X870E-E' :>> 'MB';
        part RAM : 'G.Skill'::'Trident Z5 RGB - 16' :>> RAM;
        part Drive : 'Samsung'::'990 EVO Plus 2 TB M.2-2280 PCIe 5.0 X2 NVME Solid State Drive' :>> Drive;
        part Cooler : MSI::'MAG Coreliquid A13' :>> Cooler;
        part CPU : AMD::'Ryzen 7 9800 X3D' :>> CPU;
        part GPU : 'GPU Catalog'::ASUS::'ASUS Prime OC RTX 5080' :>> GPU;
    }
}