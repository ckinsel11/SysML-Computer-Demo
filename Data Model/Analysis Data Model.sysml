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
package 'Trade Study Attributes' {
    item def 'Measure of Effectiveness'{
        doc /*  */
        item 'raw Score' : 'Raw Score';
        item 'weight Factor' : 'Weight Factor';
        item 'weighted Score' : 'Weighted Score'; // Is there a way to show this as being calculated/derived rather than a standalone property?
    }
    item def 'Raw Score' {
        doc /*  */
    }
    item def 'Weight Factor' {
        doc /*  */
    }
    item def 'Weighted Score' {
        doc /*  */
    }
}