package 'Cable Connectors' {
    item def 'Cable Connector' {
        doc /* Device that joins cables to other cables or electronic devices */
        item Finish : 'Cable Connectors'::Finish;
        item 'Contact Type' : 'Cable Connectors'::'Contact Type';
        item 'Shell' : 'Cable Connectors'::Shell;
        item 'Contact Arrangement' : 'Cable Connectors'::'Contact Arrangement';
        item 'Keying' : 'Cable Connectors'::Keying;
        item 'Shielding' : 'Cable Connectors'::Shielding;
    }
    item def Finish {
        doc /* Material and/or coating of the cable connector */
    }
    item def 'Contact Type' {
        doc /* Identifies pins or Sockets */
    }
    item def Shell {
        doc /* Outer housing of the connector that protects from mechanical strain, electromagnetic interference, and environmental conditions such as moisture and dirt */
    }
    item def 'Contact Arrangement' {
        doc /* Orientation of the contacts within the connector */
    }
    item def Keying {
        doc /* Mechanical feature, such as notches or slots, designed to ensure cables mate in the correct orientation */
    }
    item def Shielding {
        doc /* Indicates type of shielding termination in a cable connector */
        item def 'No Shield' :> Shielding {
            doc /* No shielding terminated at the cable connector */
        }
        item def Shielded :> Shielding {
            doc /* Shielding for individual wire/bundle terminated at the cable connector */
        }
        item def 'EMI Shielding' :> Shielding {
            doc /* Shield for the entire harness terminate at the cable connector */
        }
    }
}