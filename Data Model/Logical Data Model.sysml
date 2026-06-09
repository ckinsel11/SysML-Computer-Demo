package 'Logical Data Model' {
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
    package 'Types of Source Documents'{
        item def 'Requirement Specification' :> 'Source Document Attributes'::'Source Document'{
            doc /*  */
            item Requirement [1..*] : 'Requirement Attributes'::Requirement;

            item def 'System Requirement Specification' :> 'Requirement Specification' {
                doc /*  */
                item Requirement [1..*] :>> Requirement : 'Requirement Abstraction Levels'::'System Requirement';
                
                item def 'System Requirement Specification Baseline' :> 'System Requirement Specification', 'Requirement Specification Baseline' {
                    doc /*  */
                }
            }
            item def 'Subystem Requirement Specification' :> 'Requirement Specification' {
                doc /*  */
                item Requirement [1..*] :>> Requirement : 'Requirement Abstraction Levels'::'Subsystem Requirement';

                item def 'Subsystem Requirement Specification Baseline' :> 'Subystem Requirement Specification', 'Requirement Specification Baseline' {
                    doc /*  */
                }
            }
            item def 'Component Requirement Specification' :> 'Requirement Specification' {
                doc /*  */
                item Requirement [1..*] :>> Requirement : 'Requirement Abstraction Levels'::'Component Requirement';
                item def 'Component Requirement Specification Baseline' :> 'Component Requirement Specification', 'Requirement Specification Baseline' {
                    doc /*  */
                }
            }
            item def 'Requirement Specification Baseline' {
                doc /*  */
            }
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

            item 'Scoping Requirement' [1..*] : 'Requirement Derivation Abstraction Levels'::'Scoping Requirement';
            item 'Analysis Result' [1] : 'Analysis Results'::'Analysis Result';

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
    package 'Analysis Results' {
        item def 'Analysis Result' {
            doc /*  */
            item 'Resulting Requirement' [1..*] :'Requirement Derivation Abstraction Levels'::'Resulting Requirement';
            // There is a relation of 1..* "Architecture Element" here.

            item def 'Function Block' :> 'Analysis Result'{
                doc /*  */
            }
            item def 'Goal Value' :> 'Analysis Result'{
                doc /*  */
            }
            item def 'Constraint Requirement Block' :> 'Analysis Result'{
                doc /*  */
            }
            item def 'Chosen Alternative' :> 'Analysis Result'{
                doc /*  */
            }
        }
    }
    package 'Configuration Item Attributes' {
        item def 'Configuration Item' {
            doc /* A product, allocated component of a product, or both that satisfies an end use function, has distinct requirements, functionality and/or product relationships, and is designated for distinct control in the configuration-management system. */
            item 'Part Number' [1] : 'Configuration Item Attributes'::'Part Number';
            item 'Revision' [1] : 'Configuration Item Attributes'::'Part Number Revision';
            item 'Structure Name' [1] : 'Configuration Item Attributes'::'Product Structure Name';
            item 'Abbreviation' [1] : 'Configuration Item Attributes'::'CI Abbreviation';
            item 'Source Document'[0..*] : 'Source Document Attributes'::'Source Document';
            item 'Requirement Specification' [0..1] : 'Types of Source Documents' ::'Requirement Specification';
            
            item def 'Hardware CI' :> 'Configuration Item' {
                doc /* A specific piece of hardware, or an aggregation of hardware and related software, designated for tracking within a Configuration Management (CM) system */
            }
            item def 'Software CI' :> 'Configuration Item' {
                doc /* A designated, manageable work product within a software system that requires separate configuration control, such as source code files, documentation, test cases, or data files  */ 
            }
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
    package 'Types of Software' {
        item def 'Software' {
            doc /* A Computer Program */
            item def 'System Software' :> 'Software' {
                doc /* Software that works with hardware of the computer and performs tasks that are machine oriented. It can also provide a platoform for other software */
                item def 'Operating System' :> 'System Software' {
                    doc /* Software that supports a computer's basic functions */
                }
                item def 'Utility Software' :> 'System Software' {
                    doc /* Software that provides additional functionality to the operating system. Examples include file management, disk cleanup and antivirus software */
                }
                item def Firmware :> 'System Software' {
                    doc /* Software that is embedded into hardware and provides low-level control for the device's specific hardware. Examples include software embedded in a hard drive or a graphics card */
                }
                item def 'Device Drivers' :> 'System Software' {
                    doc /* Software that allows higher level software to interact with hardware devices. Examples include software that allows the operating system to interact with a printer or a mouse */
                }
                item def 'Programming Language Translators' :> 'System Software' {
                    doc /* Software that translates programming language code into machine code. Examples include compilers, assemblers, and interpreters */
                }            
            }
            item def 'Application' :> 'Software' {
                doc /* A program or piece of software designed to meet a particular purpose of a user */
                item def 'Application Version' :> 'Application' {
                    doc /* A particular iteration of an application */
                    item def 'Application Instance' :> 'Application Version' {
                        doc /* A particular deployment of an application */
                    }
                }
            }
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
            item def 'Plug-In' {
                doc /* A software component that adds functionality to an existing application without requiring the software to be re-built */
            }
        }
    }
    package 'Software License Models'{
        item def 'Software License' {
            doc /* A legal instrument governing the use and distribution of software. */
            item def Perpetual :> 'Software License' {
                doc /* A license that allows the licensee to use the software indefinitely */
            }
            item def Concurrent :> 'Software License' {
                doc /* A license that allows a specific number of users to use the software at the same time. */
            }
            item def Floating :> 'Software License' {
                doc /* A license that allows a specific number of users to use the software at the same time, but the license can be shared across an organization. */
            }
            item def Metered :> 'Software License' {
                doc /* License that limits the access of users to specific features or usage metrics */
            }
            item def 'Subscription-Based' :> 'Software License' {
                doc /* A license that allows the licensee to use the software for a specific period of time, typically with recurring fees */
            }
            item def 'Named User' :> 'Software License' {
                doc /* A license that allows a specific user to use the software, regardless of how many devices they use */
            }
            item def 'Node-Locked' :> 'Software License' {
                doc /* A license that allows the software to be used on a specific device, regardless of the user */
            }
            item def 'Dongle-Based' :> 'Software License' {
                doc /* A license that requires a physical device (dongle) to be plugged into the computer in order for the software to run */
            }
            item def 'Token-Based' :> 'Software License' {
                doc /* A license that allows a specific number of tokens to be used to access the software, where a token is a unit of access that can be used by any user */
            }
            item def 'Pay-Per-Use' :> 'Software License' {
                doc /* A license that requires the licensee to pay for each use of the software */
            }
            item def 'Flat Fee' :> 'Software License' {
                doc /* A license that requires the licensee to pay a fixed fee for access to the software, regardless of usage */
            }
            item def 'Open Source' :> 'Software License' {
                doc /* A license that allows users to access and modify the source code of the software, typically with few restrictions on use and distribution */
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
    package 'Technology Readiness Levels' {
        item def 'Technology Readiness Level' {
            doc /* A measure of the maturity of a particular technology. The scale goes from 1 to 9, with 1 being the least mature and 9 being the most mature. */
            item def 'TRL 1' :> 'Technology Readiness Level' {
                doc /* Basic principles observed and reported */
            }
            item def 'TRL 2' :> 'Technology Readiness Level' {
                doc /* Technology concept and/or application formulated */
            }
            item def 'TRL 3' :> 'Technology Readiness Level' {
                doc /* Analytical and experimental critical function and/or characteristic proof of concept */
            }
            item def 'TRL 4' :> 'Technology Readiness Level' {
                doc /* Component and/or breadboard validation in laboratory environment */
            }
            item def 'TRL 5' :> 'Technology Readiness Level' {
                doc /* Component and/or breadboard validation in relevant environment */
            }
            item def 'TRL 6' :> 'Technology Readiness Level' {
                doc /* System/subsystem model or prototype demonstration in a relevant environment (ground or space) */
            }
            item def 'TRL 7' :> 'Technology Readiness Level' {
                doc /* System prototype demonstration in a space environment */
            }
            item def 'TRL 8' :> 'Technology Readiness Level' {
                doc /* Actual system completed and qualified through test and demonstration (ground or space) */
            }
            item def 'TRL 9' :> 'Technology Readiness Level' {
                doc /* Actual system proven through successful mission operations */
            }
        }
    }
    package 'Business Processes' {
        item def 'Business Process' {
            doc /* A set of activities that are performed in order to achieve a specific organizational goal. */
            item 'Process Name' : 'Business Processes'::'Process Name';
            item 'Process Description' : 'Business Processes'::'Process Description';
            item 'Process Owner' : 'Business Processes'::'Process Owner';
            item 'Process Inputs' : 'Business Processes'::'Process Inputs';
            item 'Process Outputs' : 'Business Processes'::'Process Outputs';
            item Procedure : 'Business Processes'::Procedure;
        }
        item def 'Process Name' {
            doc /* A textual identifier for the business process */
        }
        item def 'Process Description' {
            doc /* A textual description of the business process */
        }
        item def 'Process Owner' {
            doc /* An identifier for the team responsible for executing the business process */
        }
        item def 'Process Inputs' {
            doc /* A list of inputs required to execute the business process */
        }
        item def 'Process Outputs' {
            doc /* A list of outputs produced by the business process */
        }
        item def Procedure {
            doc /* A specific set of steps to execute a business process */
        }
    }
    package 'Agile Task Attributes' {
        
    }
    package 'Architecture Elements' {
        /* There are definitions of context, system, subsystem, and componenents here, with relationships to a usage. This needs to be revisited in the context of V2.
        * I also think this needs to be revisited in terms of compositionally as it seems to imply that systems can only be composed of subsystems.*/
    }
}