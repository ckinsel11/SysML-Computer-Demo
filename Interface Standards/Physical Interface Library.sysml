package 'Physical Interface Library' {
    package 'Abstract Definitions' {
        abstract port def 'Physical Mount' {
            doc /*  */
        }
        abstract port def 'Module Format' {
            doc /*  */
        }
    }
    package 'Edge Connectors'{
        port def '288-Pin DIMM' :> 'Abstract Definitions'::'Module Format'{
            doc /* DDR4 SDRAM and DDR5 SDRAM */
        }
        port def '240-Pin DIMM' :> 'Abstract Definitions'::'Module Format'{
            doc /* DDR2 SDRAM and DDR3 SDRAM */
        }
        port def 'PCIe-1x-Edge'{
            doc /* PCI Express 1x Edge Connector. Solder Side is A, component side is B. */
        }
         port def 'PCIe-4x-Edge' :> 'PCIe-1x-Edge'{
            doc /* PCI Express 4x Edge Connector. Solder Side is A, component side is B. */
        }
        port def 'PCIe-8x-Edge' :> 'PCIe-4x-Edge'{
            doc /* PCI Express 8x Edge Connector. Solder Side is A, component side is B. */
        }
        port def 'PCIe-16x-Edge' :> 'PCIe-8x-Edge'{
            doc /* PCI Express 16x Edge Connector. Solder Side is A, component side is B. */
        }
    }
}