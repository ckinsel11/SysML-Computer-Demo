package 'Physical Interface Library' {
    package 'Abstract Definitions' {
        abstract port def 'Physical Mount' {
            doc /* Interface where a component is physically connected to another */
        }
    }
    package 'Edge Connectors'{
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