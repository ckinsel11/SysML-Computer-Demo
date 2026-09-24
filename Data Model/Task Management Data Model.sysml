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
            doc /* The title of the task */
        }
        item def Description {
            doc /* A detailed explanation of the task */
        }
        item def Status {
            doc /* The current status of the task. For example: To Do, In Progress, Done */
        }
        item def Assignee {
            doc /* The person responsible for completing the task */
        }
        item def Reporter {
            doc /* The person who reported the issue */
        }
        item def Priority {
            doc /* The priority of the task */
        }
    }
    package 'Product Release Attributes' {
        item def 'Product Release' {
            doc /* A versioned collection of features and fixes delivered as a single unit. */
            
            item ticket [1..*] : 'Types of Tickets'::Ticket;
        }
    }
}