package Chipsets {
    abstract part def Chipset {
        doc /*  */
    }

    package AMD {
        abstract part def 'AMD Chipset' :> Chipset;
        abstract part def 'AM5 Chipset' :> 'AMD Chipset';
            part def A620 :> 'AM5 Chipset';
            part def A620A :> 'AM5 Chipset';
            part def B650 :> 'AM5 Chipset';
            part def B650E :> 'AM5 Chipset';
            part def X670 :> 'AM5 Chipset';
            part def X670E :> 'AM5 Chipset';
            part def B840 :> 'AM5 Chipset';
            part def B850 :> 'AM5 Chipset';
            part def X870 :> 'AM5 Chipset';
            part def X870E :> 'AM5 Chipset';
    }
    package Intel {

    }
}