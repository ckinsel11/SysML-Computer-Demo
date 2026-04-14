package Profile {
    package Enumerations {
        enum def 'enum_Requirement Status' {
            Draft {
                doc /* These are requirements that are work in progress (i.e. just written) that are not ready for peer review.*/
            }
            New {
                doc /* These are brand new requirements ready for peer review*/
            }
            Approved {
                doc /* These are requirements that have been approved via peer review*/
            }
            Modified {
                doc /* These requirements have been previously approved, but have been changed and are now ready for peer review.*/
            }
            Deleted {
                doc /* These are requirements that are not approved. These could be requirements that fail approval with now plan to re-write. These could be requirements that were recommended for deletion that are now approved to delete.*/
            }
            'Recommended for Deletion' {
                doc /* These are requirements that have been previously approved that are recommended to be removed subject to peer review.*/
            }
            doc /* This enumeration provides a listing to help indicate a current status of a requirement.*/
        }
        enum def 'enum_Verification Method' {
            Analysis {
                doc /* The use of mathematical modeling and analytical techniques to predict the suitability of a design to stakeholder expectations based on calculated data or data derived from lower system structure end product verifications. Analysis is generally used when a prototype; engineering model; or fabricated, assembled, and integrated product is not available. Analysis includes the use of modeling and simulation as analytical tools. A model is a mathematical representation of reality. A simulation is the manipulation of a model. Analysis can include verification by similarity of a heritage product.*/
            }
            Demonstration {
                doc /* Showing that the use of an end product achieves the individual specified requirement. It is generally a basic confirmation of performance capability, differentiated from testing by the lack of detailed data gathering. Demonstrations can involve the use of physical models or mock-ups; for example, a requirement that all controls shall be reachable by the pilot could be verified by having a pilot perform flight-related tasks in a cockpit mock-up or simulator. A demonstration could also be the actual operation of the end product by highly qualified personnel, such as test pilots, who perform a one-time event that demonstrates a capability to operate at extreme limits of system performance, an operation not normally expected from a representative operational pilot.*/
            }
            Inspection {
                doc /* The visual examination of a realized end product. Inspection is generally used to verify physical design features or specific manufacturer identification. For example, if there is a requirement that the safety arming pin has a red flag with the words “Remove Before Flight” stenciled on the flag in black letters, a visual inspection of the arming pin flag can be used to determine if this requirement was met. Inspection can include inspection of drawings, documents, or other records.*/
            }
            Test {
                doc /* The use of an end product to obtain detailed data needed to verify performance or provide sufficient information to verify performance through further analysis. Testing can be conducted on final end products, breadboards, brassboards, or prototypes. Testing produces data at discrete points for each specified requirement under controlled conditions and is the most resource-intensive verification technique. As the saying goes, “Test as you fly, and fly as you test.” (See Section 5.3.2.5 in the NASA Expanded Guidance for Systems Engineering at https://nen.nasa.gov/web/se/doc-repository)*/
            }
            doc /* This enumeration lists out the typical forms of verification for a requirement Note: These enumeration descriptions are copy/pasted from NASA*/
        }
        enum def 'enum_Verification Status' {
            'Complete - Passed' {
                doc /* Verification activities have been completed and passed the criteria.*/
            }
            'Complete - Failed' {
                doc /* Verification activities have been completed and did not pass the criteria.*/
            }
            'In Process' {
                doc /* Verification activities have started, but are incomplete and results are not available yet.*/
            }
            'Incomplete - Not Started' {
                doc /* Verification activities have not started.*/
            }
        }
        enum def 'enum_Requirement Category' {
            Heading;
            Threshold;
            Objective;
            Information;
            Figure;
            Table;
        }
        enum def 'enum_Requirement Type' {
            Functional;
            Performance;
            Constraint;
            Interface;
        }
        enum def 'enum_Verification Frequency' {
            'Non-Recurring';
            Recurring;
            Mission;
        }
        enum def 'enum_Priority' {
            High;
            'Above Normal';
            Normal;
            'Below Normal';
            Low;
        }
    }
    package Stereotypes {
        metadata def 'Base Requirement' {
            attribute 'Requirement Status' : Enumerations::'enum_Requirement Status';
            attribute 'Verification Method' : Enumerations::'enum_Verification Method';
            attribute 'Verification Status' : Enumerations::'enum_Verification Status';
            attribute 'Object Type' : Enumerations::'enum_Requirement Category';
        }
    }
}