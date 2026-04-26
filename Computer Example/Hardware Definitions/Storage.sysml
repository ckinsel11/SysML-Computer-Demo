package Storage {
    private import ScalarValues::*;

    part def Storage {
        attribute Capacity : Real;
        attribute 'Drive Type' : String;
        attribute 'Form Factor';
        attribute 'Drive Interface';
    }

    part def SSD :> Storage {
        doc /* Solid-State Drive */
        attribute :>>'Drive Type' = "Solid-State Drive";
        attribute :>>'Form Factor' : 'enum_SSD Form Factor';
    }
    part def HDD :> Storage {
        doc /* Hard Disk Drive */
        attribute :>>'Drive Type' = "Hard Disk Drive";
        attribute :>>'Form Factor' : 'enum_HDD Form Factor'; 
    }

    enum def 'enum_HDD Form Factor' {
        enum '2.5 inch';
        enum '3.5 inch';
    }
    enum def 'enum_SSD Form Factor' {
        enum 'M.2-2230';
        enum 'M.2-2242';
        enum 'M.2-2280';
        enum '2.5 inch';
    }
}