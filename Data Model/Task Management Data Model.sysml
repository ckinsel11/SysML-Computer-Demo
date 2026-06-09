package 'Task and Release Management' {
    package 'Types of Tickets' {
        item def Ticket {
            doc /* A single unit of work. It cna represent anything needed to track, manage or complete as a work effort. */

            item assignee : 'Task Attributes'::Assignee;
            item reporter : 'Task Attributes'::Reporter;
            item summary : 'Task Attributes'::Summary;
            item description : 'Task Attributes'::Description;
            item status : 'Task Attributes'::Status;
            item priority : 'Task Attributes'::Priority;

            item def Epic :> Ticket {
                doc /* Large bodies of work meant to be broken down. These act generally as large capabilities where the break down leads to individual functionality that builds up into that capability. */

                item story [0..*] : Story;
                item task [0..*] : Task;
                item bug [0..*] : Bug;
                item spike [0..*] : Spike;
            }
            item def Story :> Ticket {
                doc /* A User-centric requirement or feature. Typically written in a "As a <role>, I want <goal> so that <benefit> format. These are best used where the end result is known but how to get there is up to the developer.*/

                item 'sub-Task' [0..*] : 'Sub-Task';
            }
            item def Task :> Ticket {
                doc /* A smaller more technical piece of work that may be broken down from a story or authored on its own. These are not written from an end user perspective. */
                
                item 'sub-Task' [0..*] : 'Sub-Task';
            }
            item def 'Sub-Task' :> Ticket {
                doc /* A more broken down Task/Story. */
            }
            item def Spike :> Ticket {
                doc /* A research, investigation, or prototyping task. This allows the team to spend calories now to reduce risk later. The output is knowledge or a decision. */
            }
            item def Bug :> Ticket {
                doc /* Issues that causes the system to behave in an unintended/incorrect way. */
            }
        }
    }
    package 'Task Attributes' {
        item def Summary {
            doc /*  */
        }
        item def Description {
            doc /*  */
        }
        item def Status {
            doc /*  */
        }
        item def Assignee {
            doc /*  */
        }
        item def Reporter {
            doc /*  */
        }
        item def Priority {
            doc /*  */
        }
    }
    package 'Product Release Attributes' {
        item def 'Product Release' {
            doc /*  */
            
            item ticket [1..*] : 'Types of Tickets'::Ticket;
        }
    }
}