package 'Wire Computer Process'{
    action def 'Wire Computer'{
        /* This process installs and connects the wiring for a personal computer. */
        action 'connect Motherboard Power' {
            doc /* Connect the cable from the power supply to the motherboard. For most pcs, this will be a 20- or 24-pin connector. */
        }
        action 'connect GPU Power' {
            doc /* Connect the cable from the power supply to the GPU */
        }
        action 'connect case Headers' {
            doc /* Connect the case headers to the motherboard */
        }
        action 'connect Drive Power' {
            doc /* If necessary, connect the cable from the power supply to any 2.5 inch SSD or 3.5 inch HDD */
        }
    }
}