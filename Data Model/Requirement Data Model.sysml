package 'Requirement Attributes' {
    item def Requirement {
        doc /* A requirement is a documented, verifiable statement that indicates a function, capability, constraint, or or performance that a system, product or part needs to meet. */
        item 'Requirement Name' : 'Requirement Attributes'::'Requirement Name';
        item 'Requirement ID' : 'Requirement Attributes'::'Requirement ID';
        item 'Requirement Text' : 'Requirement Attributes'::'Requirement Text';
        item 'Requirement Type' : 'Requirement Attributes'::'Requirement Type';
        item 'Requirement Status' : 'Requirement Attributes'::'Requirement Status';
        item 'Requirement Location' : 'Requirement Attributes'::'Requirement Location';
        item 'Requirement Category' : 'Requirement Attributes'::'Requirement Category';
        item 'Requirement Rationale' : 'Requirement Attributes'::'Requirement Rationale';
        item 'Requirement Comment' : 'Requirement Attributes'::'Requirement Comment';
        item 'Notional Verification' : 'Requirement Attributes'::'Notional Verification';
        item 'Verification Method' : 'Requirement Attributes'::'Verification Method';
        item 'Verification Frequency' : 'Requirement Attributes'::'Verification Frequency';
        item 'Verification Status' : 'Requirement Attributes'::'Verification Status';
        item 'Verification Rationale' : 'Requirement Attributes'::'Verification Rationale';
    }
    item def 'Requirement Status' {
        doc /* Current Status of the requirement */
        item def New :> 'Requirement Attributes'::'Requirement Status' {
            doc
            /* These are brand new requirements ready for peer review */
        }
        item def Approved :> 'Requirement Attributes'::'Requirement Status' {
            doc
            /* These are requirements that have been approved via peer review */
        }
        item def 'Recommended for Deletion' :> 'Requirement Attributes'::'Requirement Status' {
            doc
            /* These are requirements that have been previously approved that are recommended to be removed subject to peer review. */
        }
        item def Deleted :> 'Requirement Attributes'::'Requirement Status' {
            doc
            /* These are requirements that are not approved. These could be requirements that fail approval with now plan to re-write. These could be requirements that were recommended for deletion that are now approved to delete. */
        }
        item def Modified :> 'Requirement Attributes'::'Requirement Status' {
            doc
            /* These requirements have been previously approved, but have been changed and are now ready for peer review. */
        }
        item def Draft :> 'Requirement Attributes'::'Requirement Status' {
            doc
            /* These are requirements that are work in progress (i.e. just written) that are not ready for peer review. */
        }
    }
    item def 'Verification Method' {
        doc /* How a requirement is intended to be verified. */
        item def Analysis :> 'Verification Method' {
            doc
            /* The use of mathematical modeling and analytical techniques to predict the suitability of a design to stakeholder expectations based on calculated data or data derived from lower system structure end product verifications. Analysis is generally used when a prototype; engineering model; or fabricated, assembled, and integrated product is not available. Analysis includes the use of modeling and simulation as analytical tools. A model is a mathematical representation of reality. A simulation is the manipulation of a model. Analysis can include verification by similarity of a heritage product. */
        }
        item def Demonstration :> 'Verification Method' {
            doc
            /* Showing that the use of an end product achieves the individual specified requirement. It is generally a basic confirmation of performance capability, differentiated from testing by the lack of detailed data gathering. Demonstrations can involve the use of physical models or mock-ups; for example, a requirement that all controls shall be reachable by the pilot could be verified by having a pilot perform flight-related tasks in a cockpit mock-up or simulator. A demonstration could also be the actual operation of the end product by highly qualified personnel, such as test pilots, who perform a one-time event that demonstrates a capability to operate at extreme limits of system performance, an operation not normally expected from a representative operational pilot. */
        }
        item def Inspection :> 'Verification Method' {
            doc
            /* The visual examination of a realized end product. Inspection is generally used to verify physical design features or specific manufacturer identification. For example, if there is a requirement that the safety arming pin has a red flag with the words “Remove Before Flight” stenciled on the flag in black letters, a visual inspection of the arming pin flag can be used to determine if this requirement was met. Inspection can include inspection of drawings, documents, or other records. */
        }
        item def Test :> 'Verification Method' {
            doc
            /* The use of an end product to obtain detailed data needed to verify performance or provide sufficient information to verify performance through further analysis. Testing can be conducted on final end products, breadboards, brassboards, or prototypes. Testing produces data at discrete points for each specified requirement under controlled conditions and is the most resource-intensive verification technique. As the saying goes, “Test as you fly, and fly as you test.” (See Section 5.3.2.5 in the NASA Expanded Guidance for Systems Engineering at https://nen.nasa.gov/web/se/doc-repository) */
        }
    }
    item def 'Verification Status' {
        doc /* Current status of verification efforts for the requirement. */
        item def 'Complete - Failed' :> 'Requirement Attributes'::'Verification Status' {
            doc
            /* This status indicates that the requirement has failed verification */
        }
        item def 'Complete - Passed' :> 'Requirement Attributes'::'Verification Status' {
            doc
            /* This status indicates that the requirement has passed verification. */
        }
        item def 'In Process' :> 'Requirement Attributes'::'Verification Status' {
            doc
            /* This status indicates the requirment is in the process of being verified. */
        }
        item def 'Incomplete - Not Started' :> 'Requirement Attributes'::'Verification Status' {
            doc
            /* This status indicates that the requirement has not entered any verification process yet. */
        }
    }
    item def 'Requirement Category' {
        doc /* This lists out the type of object the requirement is. Requirement objects are not exclusively shall statements and this helps differentiate those types of elements. */
        item def Heading :> 'Requirement Attributes'::'Requirement Category' {
            doc
            /* Type of requirement object that provides and organizational structure. */
        }
        item def Objective :> 'Requirement Attributes'::'Requirement Category' {
            doc
            /* Type of requirement statement where the result is desired but not explicitly required. Typically these statements contain "should", "could", "would", "will" or similar words that are not "shall". */
        }
        item def Threshold :> 'Requirement Attributes'::'Requirement Category' {
            doc
            /* These statements include an explicit shall. These are things that are strictly required. */
        }
        item def Information :> 'Requirement Attributes'::'Requirement Category' {
            doc
            /* These statements are additional context informataion to a requirement. They are for informational purposes only. */
        }
        item def Figure :> 'Requirement Attributes'::'Requirement Category' {
            doc
            /* These objects are graphical presentations of information related to a requirement. These could be graphs, or other pictoral views. */
        }
        item def Table :> 'Requirement Attributes'::'Requirement Category' {
            doc
            /* These objects are tabular views of information related to the set of requirements */
        }
    }
    item def 'Requirement ID' {
        doc
        /* Unique Identifier for Requirement element */
    }
    item def 'Requirement Name' {
        doc
        /* A short summary of the requirement element. These do need to be unique. */
    }
    item def 'Requirement Type' {
        doc /* This is the descriptive kind of requirement. These typically inlcude "Functional", "Performance", "Constraint" and "Interface". */
        item def Functional :> 'Requirement Attributes'::'Requirement Type' {
            doc
            /* A requirement that describes a function or capability of the system. */
        }
        item def Constraint :> 'Requirement Attributes'::'Requirement Type' {
            doc
            /* A requirement that describes a constraint on the design of the system. These can be derived from standards, or they can be unique constraints on the design. */
        }
        item def Performance :> 'Requirement Attributes'::'Requirement Type' {
            doc
            /* A requirement that describes the performance characteristics of the system. */
        }
        item def Interface :> 'Requirement Attributes'::'Requirement Type' {
            doc
            /* A requirement that describes an interface of the system. */
        }
    }
    item def 'Requirement Text' {
        doc /* The words of the requirement. This is typically in the "The <<noun>> shall..." format. */
    }
    item def 'Requirement Rationale' {
        doc /* Commentary supporting the requirement. This should include reasoning for why the requirement is needed and any assumptions made. Efforts should be made to identify associated analyses supporting the requirement and any reasons if a TBD/TBR is included. */
    }
    item def 'Requirement Comment' {
        doc /* Location for storing general commentary on the requirement. */
    }
    item def 'Notional Verification' {
        doc /* This is a description of how the requirement will be verified. */
    }
    item def 'Verification Frequency' {
        doc /* Indicates when/how many times the requirement needs to be verified. */
        item def 'Non-Recurring' :> 'Requirement Attributes'::'Verification Frequency' {
            doc /* Used to indentify requirements that are only verified once. */
        }
        item def Recurring :> 'Requirement Attributes'::'Verification Frequency' {
            doc /* Used to identify requirements that are verified on every production unit. */
        }
        item def Mission :> 'Requirement Attributes'::'Verification Frequency' {
            doc /* Used to identify requirements that are mission specific and verified on a per-mission basis. */
        }
    }
    item def 'Verification Rationale' {
        doc /* A statement that outlines the reasoning fo rthe verification */
    }
    item def 'Requirement Location' {
        doc /* The hierarchical location of the requirement. */
    }
}
package 'Requirement Abstraction Levels' {
    item def 'System Requirement' :> 'Requirement Attributes'::Requirement;
    item def 'Subsystem Requirement' :> 'Requirement Attributes'::Requirement;
    item def 'Component Requirement' :> 'Requirement Attributes'::Requirement;
} 
package 'Requirement Derivation Abstraction Levels' {
    item def 'Scoping Requirement' :> 'Requirement Attributes'::Requirement {
        doc
        /* This is a requirement that forms the basis for some requirement derivation effort. */
    }
    item def 'Resulting Requirement' :> 'Requirement Attributes'::Requirement {
        doc
        /* This is a requirement authored from some requirement derivation effort. */
    }
}