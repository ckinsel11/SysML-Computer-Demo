package 'Logical Data Model' {
    package 'Source Document Attributes' {
        item def 'Source Document' {
            doc /* A record that contains details about a requirement, process, or practice. These can be standards.*/
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
            item def 'Subsystem Requirement Specification' :> 'Requirement Specification' {
                doc /*  */
                item Requirement [1..*] :>> Requirement : 'Requirement Abstraction Levels'::'Subsystem Requirement';

                item def 'Subsystem Requirement Specification Baseline' :> 'Subsystem Requirement Specification', 'Requirement Specification Baseline' {
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
                doc /* Software that works with hardware of the computer and performs tasks that are machine oriented. It can also provide a platform for other software */
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
        /* There are definitions of context, system, subsystem, and components here, with relationships to a usage. This needs to be revisited in the context of V2.
        * I also think this needs to be revisited in terms of compositionally as it seems to imply that systems can only be composed of subsystems.*/
    }
}