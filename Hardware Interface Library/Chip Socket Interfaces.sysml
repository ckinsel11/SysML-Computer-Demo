package 'CPU Sockets' {
    private import ScalarValues::* ;
    abstract port def 'CPU Socket' {
        attribute 'Pin Count' : Integer;
    }
    port def AM4 :> 'CPU Socket' {
        doc /* */
        attribute :>> 'Pin Count' = 1331;
    }
    port def AM5 :> 'CPU Socket' {
        doc /*  */
        attribute :>> 'Pin Count' = 1718;
    }
    port def LGA1700 :> 'CPU Socket' {
        doc /*  */
        attribute :>> 'Pin Count' = 1700;
    }
    port def LGA1151 :> 'CPU Socket' {
        doc /*  */
        attribute :>>'Pin Count' = 1151;
    }
    
}