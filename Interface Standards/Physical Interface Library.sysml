package 'Physical Interface Library' {
    package 'Abstract Definitions' {
        abstract port def 'Physical Mount' {
            doc /*  */
        }
        abstract port def 'Module Format' {
            doc /*  */
        }
    }
    package 'DIMM Interfaces'{
        port def '288-Pin DIMM' :> 'Abstract Definitions'::'Module Format'{
            doc /* DDR4 SDRAM and DDR5 SDRAM */
        }
        port def '240-Pin DIMM' :> 'Abstract Definitions'::'Module Format'{
            doc /* DDR2 SDRAM and DDR3 SDRAM */
        }
    }
}