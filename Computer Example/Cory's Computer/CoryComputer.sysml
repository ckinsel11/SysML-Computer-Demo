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
        part :>>'case' : 'be quiet!'::'Dark Base Pro 901';
        part :>>power : Corsair::'RM1200x SHIFT';
        part :>>motherboard : ASUS:: 'ROG STRIX X870E-E';
        part :>>ram : 'G.Skill'::'Trident Z5 RGB - 16';
        part :>>drive : 'Samsung'::'990 EVO Plus 2 TB M.2-2280 PCIe 5.0 X2 NVME Solid State Drive';
        part :>>cooler : MSI::'MAG Coreliquid A13';
        part :>>cpu : AMD::'Ryzen 7 9800 X3D';
        part :>>gpu : 'GPU Catalog'::ASUS::'ASUS Prime OC RTX 5080';
    }
}