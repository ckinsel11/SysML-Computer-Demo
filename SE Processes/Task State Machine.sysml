package 'Agile Tasking States' {
    item def 'OBE Decision';
    item def 'Done Decision';
    exhibit state 'Agile Tasking States' parallel {
        doc /* This is a state machine that defines the various states that a task can be in during an agile development process. */
        state 'Task States' {
            doc /* This is a state machine that describes the states within the workflow for an agile task*/
            state 'Backlog' {
            doc /* This is the state of a task that has been identified as something that needs to be done, but has not yet been prioritized for work. */
            }
            state 'To Do' {
                doc /* This is the state of a task that has not been started yet, but is prioritized for work. */
            }
            state 'In Progress' {
                doc /* This is the state of a task that is currently being worked on. */
            }
            state 'Verification' {
                doc /*  */
            }
            state 'Done' {
                doc /* This is the state of a task that has been completed. */
            }
            state 'Overcome by Events' {
                doc /*This is the state of a task that has been identified as something that is no longer relevant or necessary. */
            }

            transition first start then Backlog;
            transition first Backlog then 'To Do';
            transition first 'To Do' then 'In Progress';
            transition first 'In Progress' then 'Verification';
            transition 
                first 'Verification'
                do send new 'Done Decision'
                then Done; //TODO: This is currently an error, but I want to trigger Unresolved to resolved based on this transition. 

            transition Backlog2OBE 
                first Backlog 
                accept 'OBE Decision' 
                then 'Overcome by Events';
            transition TODO2OBE
                first 'To Do'
                accept 'OBE Decision'
                then 'Overcome by Events';
            transition InProgress2OBE
                first 'In Progress'
                accept 'OBE Decision'
                then 'Overcome by Events';

        }
        state Resolution {
            doc /* This is a state machine that describes the resolution states for an agile task */
            state 'Resolved' {
                doc /* This is the state of a task that has been resolved. */
            }
            state 'Unresolved' {
                doc /* This is the state of a task that has not been resolved. */
            }
            transition first start then Unresolved;
            transition 
                first Unresolved 
                accept 'OBE Decision' or 'Done Decision' //TODO: Would like to have 2 alternative triggers to this
                then Resolved;
        }
    }
}