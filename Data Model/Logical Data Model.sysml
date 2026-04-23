package 'Logical Data Model' {
    package 'Requirement Attributes' {
        item def 'Requirement' {
            doc /* A requirement is a documented, verifiable statement that indicates a function, capability, constraint, or or performance that a system, product or part needs to meet. */
            item 'Requirement Status' : 'Requirement Attributes'::'Requirement Status';
            item 'Requirement ID' : 'Requirement Attributes'::'Requirement ID';
            item 'Requirement Name' : 'Requirement Attributes'::'Requirement Name';
            item 'Requirement Type' : 'Requirement Attributes'::'Requirement Type';
            item 'Requirement Text' : 'Requirement Attributes'::'Requirement Text';
            item 'Requirement Rationale' : 'Requirement Attributes'::'Requirement Rationale';
            item 'Requirement Comment' : 'Requirement Attributes'::'Requirement Comment';
            item 'Notional Verification' : 'Requirement Attributes'::'Notional Verification';
            item 'Verification Method' : 'Requirement Attributes'::'Verification Method';
            item 'Verification Frequency' : 'Requirement Attributes'::'Verification Frequency';
            item 'Verification Status' : 'Requirement Attributes'::'Verification Status';
            item 'Verification Rationale' : 'Requirement Attributes'::'Verification Rationale';
            item 'Requirement Category' : 'Requirement Attributes'::'Requirement Category';
            item 'Requirement Location' : 'Requirement Attributes'::'Requirement Location';
        }
        item def 'Requirement Status' {
            doc /* Current Status of the requirement*/
            item def New :> 'Requirement Attributes'::'Requirement Status' {
                doc /* These are brand new requirements ready for peer review*/
            }
            item def Approved :> 'Requirement Attributes'::'Requirement Status' {
                doc /* These are requirements that have been approved via peer review*/
            }
            item def 'Recommended for Deletion' :> 'Requirement Attributes'::'Requirement Status' {
                doc /* These are requirements that have been previously approved that are recommended to be removed subject to peer review.*/
            }
            item def Deleted :> 'Requirement Attributes'::'Requirement Status' {
                doc /* These are requirements that are not approved. These could be requirements that fail approval with now plan to re-write. These could be requirements that were recommended for deletion that are now approved to delete.*/
            }
            item def Modified :> 'Requirement Attributes'::'Requirement Status' {
                doc /* These requirements have been previously approved, but have been changed and are now ready for peer review.*/
            }
            item def Draft :> 'Requirement Attributes'::'Requirement Status' {
                doc /* These are requirements that are work in progress (i.e. just written) that are not ready for peer review.*/
            }
        }
        item def 'Verification Method' {
            doc /* How a requirement is intended to be verified. */
            item def Analysis :> 'Verification Method' {
                doc /* The use of mathematical modeling and analytical techniques to predict the suitability of a design to stakeholder expectations based on calculated data or data derived from lower system structure end product verifications. Analysis is generally used when a prototype; engineering model; or fabricated, assembled, and integrated product is not available. Analysis includes the use of modeling and simulation as analytical tools. A model is a mathematical representation of reality. A simulation is the manipulation of a model. Analysis can include verification by similarity of a heritage product.*/
            }
            item def Demonstration :> 'Verification Method' {
                doc /* Showing that the use of an end product achieves the individual specified requirement. It is generally a basic confirmation of performance capability, differentiated from testing by the lack of detailed data gathering. Demonstrations can involve the use of physical models or mock-ups; for example, a requirement that all controls shall be reachable by the pilot could be verified by having a pilot perform flight-related tasks in a cockpit mock-up or simulator. A demonstration could also be the actual operation of the end product by highly qualified personnel, such as test pilots, who perform a one-time event that demonstrates a capability to operate at extreme limits of system performance, an operation not normally expected from a representative operational pilot.*/
            }
            item def Inspection :> 'Verification Method' {
                doc /* The visual examination of a realized end product. Inspection is generally used to verify physical design features or specific manufacturer identification. For example, if there is a requirement that the safety arming pin has a red flag with the words “Remove Before Flight” stenciled on the flag in black letters, a visual inspection of the arming pin flag can be used to determine if this requirement was met. Inspection can include inspection of drawings, documents, or other records.*/
            }
            item def Test :> 'Verification Method' {
                doc /* The use of an end product to obtain detailed data needed to verify performance or provide sufficient information to verify performance through further analysis. Testing can be conducted on final end products, breadboards, brassboards, or prototypes. Testing produces data at discrete points for each specified requirement under controlled conditions and is the most resource-intensive verification technique. As the saying goes, “Test as you fly, and fly as you test.” (See Section 5.3.2.5 in the NASA Expanded Guidance for Systems Engineering at https://nen.nasa.gov/web/se/doc-repository)*/
            }
        }
        item def 'Verification Status' {
            doc /* Current status of verification efforts for the requirement.*/
            item def 'Complete - Failed' :> 'Requirement Attributes'::'Verification Status' {
                doc /* This status indicates that the requirement has failed verification*/
            }
            item def 'Complete - Passed' :> 'Requirement Attributes'::'Verification Status' {
                doc /* This status indicates that the requirement has passed verification.*/
            }
            item def 'In Process' :> 'Requirement Attributes'::'Verification Status' {
                doc /* This status indicates the requirment is in the process of being verified.*/
            }
            item def 'Incomplete - Not Started' :> 'Requirement Attributes'::'Verification Status' {
                doc /* This status indicates that the requirement has not entered any verification process yet.*/
            }
        }
        item def 'Requirement Category' {
            doc /* This lists out the type of object the requirement is. Requirement objects are not exclusively shall statements and this helps differentiate those types of elements.*/
            item def Heading :> 'Requirement Attributes'::'Requirement Category' {
                doc /* Type of requirement object that provides and organizational structure.*/
            }
            item def Objective :> 'Requirement Attributes'::'Requirement Category' {
                doc /* Type of requirement statement where the result is desired but not explicitly required. Typically these statements contain "should", "could", "would", "will" or similar words that are not "shall".*/
            }
            item def Threshold :> 'Requirement Attributes'::'Requirement Category' {
                doc /* These statements include an explicit shall. These are things that are strictly required.*/
            }
            item def Information :> 'Requirement Attributes'::'Requirement Category' {
                doc /* These statements are additional context informataion to a requirement. They are for informational purposes only.*/
            }
            item def Figure :> 'Requirement Attributes'::'Requirement Category' {
                doc /* These objects are graphical presentations of information related to a requirement. These could be graphs, or other pictoral views.*/
            }
            item def Table :> 'Requirement Attributes'::'Requirement Category' {
                doc /* These objects are tabular views of information related to the set of requirements*/
            }
        }
        item def 'Requirement ID' {
            doc /* Unique Identifier for Requirement element */
        }
        item def 'Requirement Name' {
            doc /* A short summary of the requirement element. These do need to be unique.*/
        }
        item def 'Requirement Type' {
            doc /* This is the descriptive kind of requirement. These typically inlcude "Functional", "Performance", "Constraint" and "Interface".*/
            item def Functional :> 'Requirement Attributes'::'Requirement Type';
            item def Constraint :> 'Requirement Attributes'::'Requirement Type';
            item def Performance :> 'Requirement Attributes'::'Requirement Type';
            item def Interface :> 'Requirement Attributes'::'Requirement Type';
        }
        item def 'Requirement Text' {
            doc /* The words of the requirement. This is typically in the "The <<noun>> shall..." format.*/
        }
        item def 'Requirement Rationale' {
            doc /* Commentary supporting the requirement. This should include reasoning for why the requirement is needed and any assumptions made. Efforts should be made to identify associated analyses supporting the requirement and any reasons if a TBD/TBR is included. */
        }
        item def 'Requirement Comment' {
            doc /* Location for storing general commentary on the requirement.*/
        }
        item def 'Notional Verification' {
            doc /* This is a description of how the requirement will be verified. */
        }
        item def 'Verification Frequency' {
            doc /* Indicates when/how many times the requirement needs to be verified. */
            item def 'Non-Recurring' :> 'Requirement Attributes'::'Verification Frequency' {
                doc /* Used to indentify requirements that are only verified once.*/
            }
            item def Recurring :> 'Requirement Attributes'::'Verification Frequency' {
                doc /* Used to identify requirements that are verified on every production unit.*/
            }
            item def Mission :> 'Requirement Attributes'::'Verification Frequency' {
                doc /* Used to identify requirements that are mission specific and verified on a per-mission basis.*/
            }
        }
        item def 'Verification Rationale' {
            doc /* A statement that outlines the reasoning fo rthe verification*/
        }
        item def 'Requirement Location' {
            doc /* The hierarchical location of the requirement.*/
        }
    }
    package 'Requirement Abstraction Levels' {
        item def 'System Requirement' :> 'Requirement Attributes'::'Requirement';
        item def 'Subsystem Requirement' :> 'Requirement Attributes'::'Requirement';
        item def 'Component Requirement' :> 'Requirement Attributes'::'Requirement';
    }
    package 'Requirement Derivation Abstraction Levels' {
        item def 'Scoping Requirement' :> 'Requirement Attributes'::'Requirement' {
            doc /* This is a requirement that forms the basis for some requirement derivation effort. */
        }
        item def 'Resulting Requirement' :> 'Requirement Attributes'::'Requirement' {
            doc /* This is a requirement authored from some requirement derivation effort.*/
        }
    }
    package 'Source Document Attributes' {
        item def 'Source Document' {
            doc /* A record that contains details about a requirment, process, or practice. These can be standards.*/
            item 'Source Document ID' : 'Source Document Attributes'::'Source Document ID';
            item 'Source Document Name' : 'Source Document Attributes'::'Source Document Name';
            item 'Source Document Version' : 'Source Document Attributes'::'Source Document Version';
            item 'Source Document Section' : 'Source Document Attributes'::'Source Document Section';
        }
        item def 'Source Document ID' {
            doc /* Unique Identifier for a source document. This is typically assigned by the authoring agency.*/
        }
        item def 'Source Document Name' {
            doc /* Title of the source document*/
        }
        item def 'Source Document Version' {
            doc /* Released version of the source document*/
        }
        item def 'Source Document Section' {
            doc /* The hierarchical location of an object within the source document*/
        }
    }
    package 'Analysis Attributes' {
        item def 'Analytic Context' {
            item 'Analysis Name' : 'Analysis Attributes'::'Analysis Name';
            item Goal : 'Analysis Attributes'::Goal;
            item 'Analysis Priority' : 'Analysis Attributes'::'Analysis Priority';
            item Author : 'Analysis Attributes'::Author;
            item 'Task ID' : 'Analysis Attributes'::'Task ID';
        }
        item def 'Analysis Name' {
            doc /* This is a textual identifier for an analysis effort */
        }
        item def Goal {
            doc /* This is a textual description of the desired result from executing the analysis */
        }
        item def 'Analysis Priority' {
            doc /* Discretionary descriptor for organizing analysis efforts. Each team may have different ways of assigning priority and this attribute allows those to be assigned.*/
            item def 'High Priority' :> 'Analysis Attributes'::'Analysis Priority' {
                doc /* Highest Priority*/
            }
            item def 'Above Normal Priority' :> 'Analysis Attributes'::'Analysis Priority' {
                doc /* High priority, but not the highest priority*/
            }
            item def 'Normal Priority' :> 'Analysis Attributes'::'Analysis Priority' {
                doc /* Average Priority*/
            }
            item def 'Below Normal Priority' :> 'Analysis Attributes'::'Analysis Priority' {
                doc /* Lower than average priority but not the lowest priority*/
            }
            item def 'Low Priority' :> 'Analysis Attributes'::'Analysis Priority' {
                doc /* Lowest Priority*/
            }
        }
        item def Author {
            doc /* This attribute provides an identification for the team responsible for providing the analysis results. Note: This is not meant for individual identification as those people may leave the team */
        }
        item def 'Task ID' {
            doc /* This is an identifier for a task that defines the analysis effort. This could be associated with an IMS type ID or a task management tool ID */
        }
        item def 'Use Case Actor' {
            doc /* This is the role of a user that interacts with the system under analysis */
        }
        item def Precondition {
            doc /* A textual description of the state of the system prior to a use case starting */
        }
        item def Postcondition {
            doc /* A textual description of the state of the system after the conclusion of a use case */
        }
        item def 'Flow of Events' {
            doc /* A textual description of the order of operations of the use case. Examples are Basic (nominal path), Alternative (optional or less common paths that still achieve the desired outcome), and exception (error handling, where desired outcome is not achieved) */
        }
        item def Assumption {
            doc /* An assertion being made for the duration of the analysis that can simplify the analysis or address information limitations*/
        }
        item def 'Procedure Step' {
            doc /* An individual interaction with the system. */
        }
    }
    package 'Analyses and Procedures' {
        item def 'Analysis Case' :> 'Analysis Attributes'::'Analytic Context' {
            doc /* An anlysis case is used to derive requirements from a set of higher level requirements to lower level architecture elements. */
            item def 'Functional Analysis' :> 'Analysis Case' {
                doc /* A functional case derives requirements that describe behaviors and functionality of the system when interacted with by an actor. In an ideal state, the behavior should be defined agnostic of the system. */
                item 'Use Case Actor' : 'Analysis Attributes'::'Use Case Actor';
                item Precondition : 'Analysis Attributes'::Precondition;
                item Postcondition : 'Analysis Attributes'::Postcondition;
                item 'Flow of Events' : 'Analysis Attributes'::'Flow of Events';
            }
            item def 'Performance Analysis' :> 'Analysis Case' {
                doc /* Performance cases derive requirements from system performance parameters into lower level performance parameters. Simply put, this case is meant for number crunching.*/
                item Assumption : 'Analysis Attributes'::Assumption;
            }
            item def 'Constraint Analysis' :> 'Analysis Case' {
                doc /* The constraint case is for direct flow down of system requirements to lower level architecture elements Examples: This can be used for a direct copy, or identifying specific requirements from standards for the lower level elements. */
            }
        }
        item def 'Trade Study' :> 'Analysis Attributes'::'Analytic Context' {
            doc /* An analysis that identifies a preferred solution out of a list of possible solutions. These are done throughout the lifecycle and work to find a balance of technical requirements including cost, schedule, and performance.*/
        }
        item def 'Analysis of Alternatives' :> 'Analysis Attributes'::'Analytic Context' {
            doc /* An analysis performed at a high level that evaulates operational effective and suitability of solutions for capability needs.*/
        }
        item def 'Threat Scenario' :> 'Analysis Attributes'::'Analytic Context' {
            doc /* This analysis looks at the functionality of a the system and it's response under attack from external systems or actors. This is different from functional analyses in that there aren't lower-level requirements being authored.*/
        }
        item def 'Procedure Case' :> 'Analysis Attributes'::'Analytic Context'{
            doc /* Describes proceses that are executed with the physical manifestation of the system or sub-elements */
            item def 'Verification Procedure' :> 'Procedure Case' {
                doc /* Process to provide objective evidence that a system or element meets the specified requirement(s) */
                item 'Verification Procedure Step' : 'Analysis Attributes'::'Procedure Step';
            }
            item def 'Integration Procedure' :> 'Procedure Case' {
                doc /* Process to take a set of system elements and pull them together into a unified system. */
            }
            item def 'Transition Procedure' :> 'Procedure Case' {
                doc /* Process to take a system and install it making it operational. It is the transition from "nothing" to a fully integrated and installed system over time. */
            }
            item def 'Validation Procedure' :> 'Procedure Case' {
                doc /* Process to provide objective evidence that the sytem fufills its intended purpose. This should answer "Did we build the right thing?" */
            }
            item def 'Maintenance Procedure' :> 'Procedure Case' {
                doc /* Process to sustain/service the system and keep it operational */
            }
            item def 'Disposal Procedure' :> 'Procedure Case' {
                doc /* Process to bring the system or retired elements of the system to end of life */
            }
        }
    }
    package 'Configuration Item Attributes' {
        item def 'Configuration Item' {
            doc /* A product, allocated component of a product, or both that satisfies an end use function, has distinct requirements, functionality and/or product relationships, and is designated for distinct control in the configuration-management system. */
            item 'Part Number' : 'Configuration Item Attributes'::'Part Number';
            item 'Revision' : 'Configuration Item Attributes'::'Part Number Revision';
            item 'Structure Name' : 'Configuration Item Attributes'::'Product Structure Name';
            item 'Abbreviation' : 'Configuration Item Attributes'::'CI Abbreviation';
        }
        item def 'Part Number' {
            doc /* Unique identifier associated with the configuration item */
        }
        item def 'Part Number Revision' {
            doc /* A unique identifier assigned to a specific iteration of the configuration item */
        }
        item def 'Product Structure Name' {
            doc /* Name of the configuration item as it appears on the drawing */
        }
        item def 'CI Abbreviation' {
            doc /* Common name for the configuration item, usually shorter and less formal than the name on the drawing */
        }
    }
    package 'Types of Configuration Items' {
        item def 'Hardware CI' {
            doc /* A specific piece of hardware, or an aggregation of hardware and related software, designated for tracking within a Configuration Management (CM) system */
        }
        item def 'Software CI'{
            doc /* A designated, manageable work product within a software system that requires separate configuration control, such as source code files, documentation, test cases, or data files  */ 
        }
    }
    package 'Types of Software' {
        item def 'Software' {
            doc /* A Computer Program */
        }
        item def 'System Software' :> 'Software' {
            doc /* Software that works with hardware of the computer and performs tasks that are machine oriented. It can also provide a platoform for other software */
        }
        item def 'Operating System' :> 'System Software' {
            doc /* Software that supports a computer's basic functions */
        }
        item def 'Application' :> 'Software' {
            doc /* A program or piece of software designed to meet a particular purpose of a user */
        }
        item def 'Application Version' :> 'Application' {
            doc /* A particular iteration of an application */
        }
        item def 'Application Instance' :> 'Application Version' {
            doc /* A particular deployment of an application */
        }
    }
    package 'Software Attributes' {
        item def 'Application Class' {
            item def 'Client Application' {
                doc /* An application that runs on a user's local device and connects to a server as necessary */
            }
            item def 'Server Application' {
                doc /* An application that runs on a remote server and communicates with a client upon request */
            }
        }
    }
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
        item def 'Contact Type'{
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
}
